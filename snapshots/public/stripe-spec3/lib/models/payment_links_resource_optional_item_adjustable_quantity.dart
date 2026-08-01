// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentLinksResourceOptionalItemAdjustableQuantity {const PaymentLinksResourceOptionalItemAdjustableQuantity({required this.enabled, this.maximum = const Omittable.absent(), this.minimum = const Omittable.absent(), });

factory PaymentLinksResourceOptionalItemAdjustableQuantity.fromJson(Map<String, dynamic> json) { return PaymentLinksResourceOptionalItemAdjustableQuantity(
  enabled: json['enabled'] as bool,
  maximum: json.containsKey('maximum') ? Omittable(json['maximum'] != null ? (json['maximum'] as num).toInt() : null) : const Omittable.absent(),
  minimum: json.containsKey('minimum') ? Omittable(json['minimum'] != null ? (json['minimum'] as num).toInt() : null) : const Omittable.absent(),
); }

/// Set to true if the quantity can be adjusted to any non-negative integer.
final bool enabled;

/// The maximum quantity of this item the customer can purchase. By default this value is 99.
final Omittable<int?> maximum;

/// The minimum quantity of this item the customer must purchase, if they choose to purchase it. Because this item is optional, the customer will always be able to remove it from their order, even if the `minimum` configured here is greater than 0. By default this value is 0.
final Omittable<int?> minimum;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  if (maximum.isPresent) 'maximum': maximum.value,
  if (minimum.isPresent) 'minimum': minimum.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
PaymentLinksResourceOptionalItemAdjustableQuantity copyWith({bool? enabled, Omittable<int?>? maximum, Omittable<int?>? minimum, }) { return PaymentLinksResourceOptionalItemAdjustableQuantity(
  enabled: enabled ?? this.enabled,
  maximum: maximum ?? this.maximum,
  minimum: minimum ?? this.minimum,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentLinksResourceOptionalItemAdjustableQuantity &&
          enabled == other.enabled &&
          maximum == other.maximum &&
          minimum == other.minimum; } 
@override int get hashCode { return Object.hash(enabled, maximum, minimum); } 
@override String toString() { return 'PaymentLinksResourceOptionalItemAdjustableQuantity(enabled: $enabled, maximum: $maximum, minimum: $minimum)'; } 
 }
