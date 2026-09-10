// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'routing.dart';import 'shield_operation_feature_confidence_intervals.dart';import 'shield_operation_feature_parameter_schemas.dart';import 'shield_operation_feature_schema_info.dart';import 'shield_operation_feature_thresholds.dart';
@immutable
final class ShieldOperationFeatures {
  const ShieldOperationFeatures({this.shieldOperationFeatureThresholds = const Omittable.absent(),
this.shieldOperationFeatureParameterSchemas = const Omittable.absent(),
this.routing = const Omittable.absent(),
this.shieldOperationFeatureConfidenceIntervals = const Omittable.absent(),
this.shieldOperationFeatureSchemaInfo = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const ShieldOperationFeatures._({required this.rawValue, required this.shieldOperationFeatureThresholds,
required this.shieldOperationFeatureParameterSchemas,
required this.routing,
required this.shieldOperationFeatureConfidenceIntervals,
required this.shieldOperationFeatureSchemaInfo,});
  factory ShieldOperationFeatures.fromJson(Object? json) => ShieldOperationFeatures._(
    rawValue: Omittable(json),
    shieldOperationFeatureThresholds: parseAnyOfVariant<ShieldOperationFeatureThresholds>(json, (value) => ShieldOperationFeatureThresholds.fromJson(value! as Map<String, dynamic>)),
shieldOperationFeatureParameterSchemas: parseAnyOfVariant<ShieldOperationFeatureParameterSchemas>(json, (value) => ShieldOperationFeatureParameterSchemas.fromJson(value! as Map<String, dynamic>)),
routing: parseAnyOfVariant<Routing>(json, (value) => Routing.fromJson(value! as Map<String, dynamic>)),
shieldOperationFeatureConfidenceIntervals: parseAnyOfVariant<ShieldOperationFeatureConfidenceIntervals>(json, (value) => ShieldOperationFeatureConfidenceIntervals.fromJson(value! as Map<String, dynamic>)),
shieldOperationFeatureSchemaInfo: parseAnyOfVariant<ShieldOperationFeatureSchemaInfo>(json, (value) => ShieldOperationFeatureSchemaInfo.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<ShieldOperationFeatureThresholds> shieldOperationFeatureThresholds;
final Omittable<ShieldOperationFeatureParameterSchemas> shieldOperationFeatureParameterSchemas;
final Omittable<Routing> routing;
final Omittable<ShieldOperationFeatureConfidenceIntervals> shieldOperationFeatureConfidenceIntervals;
final Omittable<ShieldOperationFeatureSchemaInfo> shieldOperationFeatureSchemaInfo;

  /// Whether at least one known variant matched.
  bool get isValid => shieldOperationFeatureThresholds.isPresent || shieldOperationFeatureParameterSchemas.isPresent || routing.isPresent || shieldOperationFeatureConfidenceIntervals.isPresent || shieldOperationFeatureSchemaInfo.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (shieldOperationFeatureThresholds.isPresent) shieldOperationFeatureThresholds.value?.toJson(),
if (shieldOperationFeatureParameterSchemas.isPresent) shieldOperationFeatureParameterSchemas.value?.toJson(),
if (routing.isPresent) routing.value?.toJson(),
if (shieldOperationFeatureConfidenceIntervals.isPresent) shieldOperationFeatureConfidenceIntervals.value?.toJson(),
if (shieldOperationFeatureSchemaInfo.isPresent) shieldOperationFeatureSchemaInfo.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is ShieldOperationFeatures && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'ShieldOperationFeatures(${toJson()})';
}
