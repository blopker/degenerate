// GENERATED CODE - DO NOT MODIFY BY HAND

import 'transform_usage.dart';/// Apply a transformation to the reported usage or set quantity before computing the amount billed. Cannot be combined with `tiers`.
final class PlanTransformUsage {const PlanTransformUsage({this.transformUsage});

factory PlanTransformUsage.fromJson(Map<String, dynamic> json) { return PlanTransformUsage(
  transformUsage: TransformUsage.canParse(json) ? TransformUsage.fromJson(json) : null,
); }

final TransformUsage? transformUsage;

/// At least one variant must be present.
bool get isValid { return transformUsage != null; } 
Map<String, dynamic> toJson() { return {
  ...?transformUsage?.toJson(),
}; } 
 }
