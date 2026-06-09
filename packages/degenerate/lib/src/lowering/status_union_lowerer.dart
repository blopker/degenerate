import 'package:degenerate/src/emitter/emit_utils.dart';
import 'package:degenerate/src/emitter/media_type_utils.dart';
import 'package:degenerate/src/ir/ir_types.dart';
import 'package:degenerate/src/lowering/ir_mapper.dart';
import 'package:degenerate/src/naming.dart';

/// Synthesizes per-operation [IrStatusUnion] types (issue #5).
///
/// An operation whose success (2xx) responses declare more than one distinct
/// body type gets a `<Op>Success` sealed union; likewise the error side
/// (non-2xx plus `default`) gets `<Op>Error`. Operations with a single body
/// type per side are left untouched and keep their plain `ApiResult<T, E>`
/// signature.
class StatusUnionLowerer {
  /// Creates a lowerer that allocates union type names via [_mapper].
  StatusUnionLowerer(this._mapper);

  final IrMapper _mapper;

  /// Rewrite [apis], attaching status unions to qualifying operations.
  ///
  /// Synthesized union types are appended to [unionTypes] for emission.
  List<IrApi> lower(List<IrApi> apis, List<IrType> unionTypes) {
    return apis.map((api) {
      var changed = false;
      final ops = api.operations.map((op) {
        final success = _buildUnion(op, success: true);
        final error = _buildUnion(op, success: false);
        if (success == null && error == null) return op;
        changed = true;
        if (success != null) unionTypes.add(success);
        if (error != null) unionTypes.add(error);
        return op.copyWith(successUnion: success, errorUnion: error);
      }).toList();
      return changed ? IrApi(api.name, ops) : api;
    }).toList();
  }

  IrStatusUnion? _buildUnion(IrOperation op, {required bool success}) {
    bool isSuccessCode(int code) => code >= 200 && code < 300;

    final exact =
        op.responses.entries
            .where((e) => isSuccessCode(e.key) == success)
            .toList()
          ..sort((a, b) => a.key.compareTo(b.key));
    final ranges =
        op.rangeResponses.entries
            .where((e) => (e.key == '2XX') == success)
            .toList()
          ..sort((a, b) => a.key.compareTo(b.key));
    if (exact.isEmpty && ranges.isEmpty) return null;

    // A side needs a union only when its declared responses cover more than
    // one distinct body type (a missing body counts as its own type). The
    // `default` response participates on the error side, where it is the
    // single error type today. Distinctness ignores media types: two codes
    // sharing a Dart type but differing in media type (e.g. JSON vs
    // octet-stream bytes) collapse to one and parse with the primary
    // response's strategy.
    String typeKeyOf(IrResponse response) {
      final content = preferredContent(response.content);
      return content == null ? '<void>' : irTypeName(content.$2.schema);
    }

    final distinct = <String>{
      for (final e in exact) typeKeyOf(e.value),
      for (final e in ranges) typeKeyOf(e.value),
      if (!success && op.defaultResponse != null)
        typeKeyOf(op.defaultResponse!),
    };
    if (distinct.length <= 1) return null;

    final opPascal = toPascalCase(op.operationId);
    final name = _mapper.allocateTypeName(
      '$opPascal${success ? 'Success' : 'Error'}',
    );

    IrStatusVariant variantOf(String key, String className, IrResponse r) {
      final content = preferredContent(r.content);
      return IrStatusVariant(
        key,
        className,
        mediaType: content?.$1,
        schema: content?.$2.schema,
      );
    }

    final variants = <IrStatusVariant>[
      for (final e in exact)
        variantOf(
          '${e.key}',
          _mapper.allocateTypeName('$name${e.key}'),
          e.value,
        ),
      for (final e in ranges)
        variantOf(
          e.key,
          _mapper.allocateTypeName('$name${e.key.toLowerCase()}'),
          e.value,
        ),
      if (op.defaultResponse != null)
        variantOf(
          'default',
          _mapper.allocateTypeName('${name}Default'),
          op.defaultResponse!,
        ),
    ];

    final method = op.customMethod ?? op.method.name.toUpperCase();
    return IrStatusUnion(
      name,
      variants,
      description:
          '${success ? 'Success' : 'Error'} responses of '
          '`$method ${op.path}`.',
    );
  }
}
