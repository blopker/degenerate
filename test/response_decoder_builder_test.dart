import 'package:code_builder/code_builder.dart' as cb;
import 'package:degenerate/src/emitter/api_emitter.dart';
import 'package:degenerate/src/emitter/response_decoder.dart';
import 'package:degenerate/src/emitter/response_plan.dart';
import 'package:degenerate/src/emitter/status_union_emitter.dart';
import 'package:degenerate/src/ir/ir_types.dart';
import 'package:test/test.dart';

const _string = IrPrimitive(PrimitiveKind.string);
const _integer = IrPrimitive(PrimitiveKind.int);

IrResponse _response(IrType type, {String? statusKey}) => IrResponse(
  statusKey: statusKey,
  content: {const SpecString('application/json'): IrMediaType(type)},
);

IrOperation _operation(Map<int, IrResponse> responses) => IrOperation(
  'fetch',
  'fetch',
  HttpMethod.get,
  const SpecString('/value'),
  responses: responses,
);

void main() {
  test('status dispatch retains patterns and bodies as code builder specs', () {
    final range = _response(_string, statusKey: '4XX');
    final plan = planResponses(
      _operation({
        for (var status = 400; status < 500; status++) status: range,
        409: _response(_integer, statusKey: '409'),
      }),
      errors: true,
    );

    final Object code = ResponseDecoder(plan).emit();
    expect(code, isA<cb.SwitchStatement>());
    final statement = code as cb.SwitchStatement;
    expect(statement.cases, hasLength(2));
    expect(statement.cases.first.pattern, isA<cb.BinaryPattern>());
    expect(statement.cases.first.body, isA<cb.Block>());
    expect(statement.defaultCase, isA<cb.Code>());
  });

  test(
    'media selection exposes its ordered branches and fallback as specs',
    () {
      final plan = planResponses(
        _operation({
          200: IrResponse(
            content: {
              const SpecString('application/json'): const IrMediaType(_string),
              const SpecString('text/plain'): const IrMediaType(_integer),
            },
          ),
        }),
        errors: false,
      );

      final Object code = ResponseDecoder(plan).emit();
      expect(code, isA<cb.SwitchStatement>());
      final body = (code as cb.SwitchStatement).cases.single.body;
      expect(body, isA<cb.Block>());
      final conditional = (body! as cb.Block).statements.last;
      expect(conditional, isA<cb.Conditional>());
      expect((conditional as cb.Conditional).branches, hasLength(2));
      expect(conditional.orElse, isNotNull);
    },
  );

  test(
    'sealed parsers embed structured dispatch directly in their methods',
    () {
      final plan = planResponses(
        _operation({200: _response(_string), 201: _response(_integer)}),
        errors: false,
      );
      final base = StatusUnionEmitter(plan).emit().first as cb.Class;
      expect(base.methods.single.body, isA<cb.SwitchStatement>());
    },
  );

  test('plain API methods compose request code and structured execution', () {
    final api = IrApi('DefaultApi', [
      _operation({200: _response(_string)}),
    ]);
    final emitted = ApiEmitter(api).emit().single as cb.Class;
    expect(emitted.methods.single.body, isA<cb.Block>());
  });
}
