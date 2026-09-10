import 'package:code_builder/code_builder.dart';
import 'package:degenerate/src/emitter/response_decoder.dart';
import 'package:degenerate/src/emitter/response_plan.dart';
import 'package:degenerate/src/ir/ir_types.dart';

/// Emits the closed set of declared response shapes and its wire fallback.
class StatusUnionEmitter {
  const StatusUnionEmitter(this.plan, {this.typeRegistry = const {}});

  final ResponsePlan plan;
  final Map<String, IrType> typeRegistry;

  List<Spec> emit() => [
    Class(
      (b) => b
        ..name = plan.unionName
        ..sealed = true
        ..docs.add(
          '/// ${plan.isError ? 'Error' : 'Success'} response variants. Match the concrete type to access its payload.',
        )
        ..constructors.add(Constructor((c) => c..constant = true))
        ..methods.add(
          Method(
            (m) => m
              ..name = 'parse'
              ..static = true
              ..docs.add(
                '/// Decodes the payload for its declared status and content type.',
              )
              ..returns = refer(plan.unionName!)
              ..requiredParameters.add(
                Parameter(
                  (p) => p
                    ..name = 'response'
                    ..type = refer('ApiResponse'),
                ),
              )
              ..body = ResponseDecoder(plan, typeRegistry: typeRegistry).emit(),
          ),
        ),
    ),
    for (final variant in plan.variants)
      Class((b) {
        final hasBody = variant.branch.type != null;
        b
          ..name = variant.name
          ..modifier = ClassModifier.final$
          ..extend = refer(plan.unionName!)
          ..docs.add(
            '/// Response for ${variant.branch.statusSuffix}${variant.branch.content == null ? '' : ' (${variant.branch.content!.$1.commentText})'}.',
          )
          ..constructors.add(
            Constructor((c) {
              c.constant = true;
              if (hasBody) {
                c.requiredParameters.add(
                  Parameter(
                    (p) => p
                      ..name = 'data'
                      ..toThis = true,
                  ),
                );
              }
            }),
          );
        if (hasBody) {
          b.fields.add(
            Field(
              (f) => f
                ..name = 'data'
                ..docs.add('/// The decoded response payload.')
                ..modifier = FieldModifier.final$
                ..type = refer(plan.variantType(variant)),
            ),
          );
        }
      }),
    if (plan.hasUnknown)
      Class(
        (b) => b
          ..name = plan.unknownName
          ..modifier = ClassModifier.final$
          ..extend = refer(plan.unionName!)
          ..docs.add(
            '/// An undeclared status. The complete response is retained for manual handling.',
          )
          ..constructors.add(
            Constructor(
              (c) => c
                ..constant = true
                ..requiredParameters.add(
                  Parameter(
                    (p) => p
                      ..name = 'response'
                      ..toThis = true,
                  ),
                ),
            ),
          )
          ..fields.add(
            Field(
              (f) => f
                ..name = 'response'
                ..docs.add('/// The original status, headers, and body bytes.')
                ..modifier = FieldModifier.final$
                ..type = refer('ApiResponse'),
            ),
          ),
      ),
  ];
}
