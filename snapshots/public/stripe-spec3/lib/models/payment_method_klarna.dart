// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_flows_private_payment_methods_klarna_dob.dart';/// 
@immutable final class PaymentMethodKlarna {const PaymentMethodKlarna({this.dob});

factory PaymentMethodKlarna.fromJson(Map<String, dynamic> json) { return PaymentMethodKlarna(
  dob: json['dob'] != null ? PaymentFlowsPrivatePaymentMethodsKlarnaDob.fromJson(json['dob'] as Map<String, dynamic>) : null,
); }

/// The customer's date of birth, if provided.
final PaymentFlowsPrivatePaymentMethodsKlarnaDob? dob;

Map<String, dynamic> toJson() { return {
  if (dob != null) 'dob': dob?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'dob'}.contains(key)); } 
PaymentMethodKlarna copyWith({PaymentFlowsPrivatePaymentMethodsKlarnaDob? Function()? dob}) { return PaymentMethodKlarna(
  dob: dob != null ? dob() : this.dob,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodKlarna &&
          dob == other.dob; } 
@override int get hashCode { return dob.hashCode; } 
@override String toString() { return 'PaymentMethodKlarna(dob: $dob)'; } 
 }
