// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Responses API Input messages. Refer to OpenAI Responses API docs to learn more about supported content types
@immutable
final class ResponsesInput {
  const ResponsesInput({this.string = const Omittable.absent(),
this.listdynamic = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const ResponsesInput._({required this.rawValue, required this.string,
required this.listdynamic,});
  factory ResponsesInput.fromJson(Object? json) => ResponsesInput._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
listdynamic: parseAnyOfVariant<List<dynamic>>(json, (value) => (value! as List<dynamic>).map((e) => e).toList()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<List<dynamic>> listdynamic;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || listdynamic.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (listdynamic.isPresent) listdynamic.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is ResponsesInput && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'ResponsesInput(${toJson()})';
}
