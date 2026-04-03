// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PortalSubscriptionUpdateProductAdjustableQuantity {const PortalSubscriptionUpdateProductAdjustableQuantity({required this.enabled, required this.minimum, this.maximum, });

factory PortalSubscriptionUpdateProductAdjustableQuantity.fromJson(Map<String, dynamic> json) { return PortalSubscriptionUpdateProductAdjustableQuantity(
  enabled: json['enabled'] as bool,
  maximum: json['maximum'] != null ? (json['maximum'] as num).toInt() : null,
  minimum: (json['minimum'] as num).toInt(),
); }

/// If true, the quantity can be adjusted to any non-negative integer.
final bool enabled;

/// The maximum quantity that can be set for the product.
final int? maximum;

/// The minimum quantity that can be set for the product.
final int minimum;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  'maximum': ?maximum,
  'minimum': minimum,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool &&
      json.containsKey('minimum') && json['minimum'] is num; } 
PortalSubscriptionUpdateProductAdjustableQuantity copyWith({bool? enabled, int? Function()? maximum, int? minimum, }) { return PortalSubscriptionUpdateProductAdjustableQuantity(
  enabled: enabled ?? this.enabled,
  maximum: maximum != null ? maximum() : this.maximum,
  minimum: minimum ?? this.minimum,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PortalSubscriptionUpdateProductAdjustableQuantity &&
          enabled == other.enabled &&
          maximum == other.maximum &&
          minimum == other.minimum; } 
@override int get hashCode { return Object.hash(enabled, maximum, minimum); } 
@override String toString() { return 'PortalSubscriptionUpdateProductAdjustableQuantity(enabled: $enabled, maximum: $maximum, minimum: $minimum)'; } 
 }
