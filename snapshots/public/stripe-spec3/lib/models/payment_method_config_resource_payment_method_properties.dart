// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_config_resource_display_preference.dart';/// 
@immutable final class PaymentMethodConfigResourcePaymentMethodProperties {const PaymentMethodConfigResourcePaymentMethodProperties({required this.available, required this.displayPreference, });

factory PaymentMethodConfigResourcePaymentMethodProperties.fromJson(Map<String, dynamic> json) { return PaymentMethodConfigResourcePaymentMethodProperties(
  available: json['available'] as bool,
  displayPreference: PaymentMethodConfigResourceDisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>),
); }

/// Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
final bool available;

final PaymentMethodConfigResourceDisplayPreference displayPreference;

Map<String, dynamic> toJson() { return {
  'available': available,
  'display_preference': displayPreference.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('available') && json['available'] is bool &&
      json.containsKey('display_preference'); } 
PaymentMethodConfigResourcePaymentMethodProperties copyWith({bool? available, PaymentMethodConfigResourceDisplayPreference? displayPreference, }) { return PaymentMethodConfigResourcePaymentMethodProperties(
  available: available ?? this.available,
  displayPreference: displayPreference ?? this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodConfigResourcePaymentMethodProperties &&
          available == other.available &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return Object.hash(available, displayPreference); } 
@override String toString() { return 'PaymentMethodConfigResourcePaymentMethodProperties(available: $available, displayPreference: $displayPreference)'; } 
 }
