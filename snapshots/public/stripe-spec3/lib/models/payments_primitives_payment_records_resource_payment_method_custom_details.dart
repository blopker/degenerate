// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Custom Payment Methods represent Payment Method types not modeled directly in
/// the Stripe API. This resource consists of details about the custom payment method
/// used for this payment attempt.
@immutable final class PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCustomDetails {const PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCustomDetails({required this.displayName, this.type, });

factory PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCustomDetails.fromJson(Map<String, dynamic> json) { return PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCustomDetails(
  displayName: json['display_name'] as String,
  type: json['type'] as String?,
); }

/// Display name for the custom (user-defined) payment method type used to make this payment.
final String displayName;

/// The custom payment method type associated with this payment.
final String? type;

Map<String, dynamic> toJson() { return {
  'display_name': displayName,
  'type': ?type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('display_name') && json['display_name'] is String; } 
PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCustomDetails copyWith({String? displayName, String? Function()? type, }) { return PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCustomDetails(
  displayName: displayName ?? this.displayName,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCustomDetails &&
          displayName == other.displayName &&
          type == other.type; } 
@override int get hashCode { return Object.hash(displayName, type); } 
@override String toString() { return 'PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCustomDetails(displayName: $displayName, type: $type)'; } 
 }
