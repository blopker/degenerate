// GENERATED CODE - DO NOT MODIFY BY HAND

import 'three_d_secure_usage.dart';/// Contains details on how this Card may be used for 3D Secure authentication.
final class PaymentMethodCardThreeDSecureUsage {const PaymentMethodCardThreeDSecureUsage({this.threeDSecureUsage});

factory PaymentMethodCardThreeDSecureUsage.fromJson(Map<String, dynamic> json) { return PaymentMethodCardThreeDSecureUsage(
  threeDSecureUsage: ThreeDSecureUsage.canParse(json) ? ThreeDSecureUsage.fromJson(json) : null,
); }

final ThreeDSecureUsage? threeDSecureUsage;

/// At least one variant must be present.
bool get isValid { return threeDSecureUsage != null; } 
Map<String, dynamic> toJson() { return {
  ...?threeDSecureUsage?.toJson(),
}; } 
 }
