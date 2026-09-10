// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shield_basic_operation.dart';import 'shield_operation.dart';
@immutable
final class SchemaValidationExtractOperationsFromSchemaResponseResult {
  const SchemaValidationExtractOperationsFromSchemaResponseResult({this.shieldOperationOrNull = const Omittable.absent(),
this.shieldBasicOperation = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const SchemaValidationExtractOperationsFromSchemaResponseResult._({required this.rawValue, required this.shieldOperationOrNull,
required this.shieldBasicOperation,});
  factory SchemaValidationExtractOperationsFromSchemaResponseResult.fromJson(Object? json) => SchemaValidationExtractOperationsFromSchemaResponseResult._(
    rawValue: Omittable(json),
    shieldOperationOrNull: parseAnyOfVariant<ShieldOperation?>(json, (value) => value != null ? ShieldOperation.fromJson(value as Map<String, dynamic>) : null),
shieldBasicOperation: parseAnyOfVariant<ShieldBasicOperation>(json, (value) => ShieldBasicOperation.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<ShieldOperation?> shieldOperationOrNull;
final Omittable<ShieldBasicOperation> shieldBasicOperation;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || shieldOperationOrNull.isPresent || shieldBasicOperation.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (shieldOperationOrNull.isPresent) shieldOperationOrNull.value?.toJson(),
if (shieldBasicOperation.isPresent) shieldBasicOperation.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is SchemaValidationExtractOperationsFromSchemaResponseResult && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'SchemaValidationExtractOperationsFromSchemaResponseResult(${toJson()})';
}
