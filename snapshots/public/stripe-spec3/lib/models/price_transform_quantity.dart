// GENERATED CODE - DO NOT MODIFY BY HAND

import 'transform_quantity.dart';/// Apply a transformation to the reported usage or set quantity before computing the amount billed. Cannot be combined with `tiers`.
final class PriceTransformQuantity {const PriceTransformQuantity({this.transformQuantity});

factory PriceTransformQuantity.fromJson(Map<String, dynamic> json) { return PriceTransformQuantity(
  transformQuantity: TransformQuantity.canParse(json) ? TransformQuantity.fromJson(json) : null,
); }

final TransformQuantity? transformQuantity;

/// At least one variant must be present.
bool get isValid { return transformQuantity != null; } 
Map<String, dynamic> toJson() { return {
  ...?transformQuantity?.toJson(),
}; } 
 }
