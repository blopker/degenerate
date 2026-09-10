import 'package:code_builder/code_builder.dart';
import 'package:degenerate/src/emitter/emit_utils.dart';
import 'package:degenerate/src/emitter/sealed_union_emitter.dart';
import 'package:degenerate/src/ir/ir_types.dart';
import 'package:test/test.dart';

void main() {
  test('direct object discriminator variants use model presence semantics', () {
    final union = IrDiscriminatedUnion('Event', const SpecString('kind'), {
      const SpecString('changed'): const IrObject('Changed', [
        IrField(
          'state',
          SpecString('state'),
          IrPrimitive(PrimitiveKind.string, isNullable: true),
          defaultValue: 'active',
        ),
      ], additionalProperties: IrPrimitive(PrimitiveKind.int)),
    });
    final source = emitRaw(
      Library((b) => b..body.addAll(DiscriminatedUnionEmitter(union).emit())),
    );
    expect(source, contains('final Omittable<String?> state;'));
    expect(source, contains("if (state.isPresent) 'state': state.value"));
    expect(source, contains("const {'state', 'kind'}"));
  });
}
