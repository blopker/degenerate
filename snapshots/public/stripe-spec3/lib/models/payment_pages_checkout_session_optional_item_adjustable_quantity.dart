// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentPagesCheckoutSessionOptionalItemAdjustableQuantity {const PaymentPagesCheckoutSessionOptionalItemAdjustableQuantity({required this.enabled, this.maximum, this.minimum, });

factory PaymentPagesCheckoutSessionOptionalItemAdjustableQuantity.fromJson(Map<String, dynamic> json) { return PaymentPagesCheckoutSessionOptionalItemAdjustableQuantity(
  enabled: json['enabled'] as bool,
  maximum: json['maximum'] != null ? (json['maximum'] as num).toInt() : null,
  minimum: json['minimum'] != null ? (json['minimum'] as num).toInt() : null,
); }

/// Set to true if the quantity can be adjusted to any non-negative integer.
final bool enabled;

/// The maximum quantity of this item the customer can purchase. By default this value is 99. You can specify a value up to 999999.
final int? maximum;

/// The minimum quantity of this item the customer must purchase, if they choose to purchase it. Because this item is optional, the customer will always be able to remove it from their order, even if the `minimum` configured here is greater than 0. By default this value is 0.
final int? minimum;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  'maximum': ?maximum,
  'minimum': ?minimum,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
PaymentPagesCheckoutSessionOptionalItemAdjustableQuantity copyWith({bool? enabled, int? Function()? maximum, int? Function()? minimum, }) { return PaymentPagesCheckoutSessionOptionalItemAdjustableQuantity(
  enabled: enabled ?? this.enabled,
  maximum: maximum != null ? maximum() : this.maximum,
  minimum: minimum != null ? minimum() : this.minimum,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentPagesCheckoutSessionOptionalItemAdjustableQuantity &&
          enabled == other.enabled &&
          maximum == other.maximum &&
          minimum == other.minimum; } 
@override int get hashCode { return Object.hash(enabled, maximum, minimum); } 
@override String toString() { return 'PaymentPagesCheckoutSessionOptionalItemAdjustableQuantity(enabled: $enabled, maximum: $maximum, minimum: $minimum)'; } 
 }
