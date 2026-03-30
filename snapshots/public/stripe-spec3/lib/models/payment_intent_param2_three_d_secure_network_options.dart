// GENERATED CODE - DO NOT MODIFY BY HAND

import 'payment_intent_param2_three_d_secure_network_options_cartes_bancaires.dart';final class PaymentIntentParam2ThreeDSecureNetworkOptions {const PaymentIntentParam2ThreeDSecureNetworkOptions({this.cartesBancaires});

factory PaymentIntentParam2ThreeDSecureNetworkOptions.fromJson(Map<String, dynamic> json) { return PaymentIntentParam2ThreeDSecureNetworkOptions(
  cartesBancaires: json['cartes_bancaires'] != null ? PaymentIntentParam2ThreeDSecureNetworkOptionsCartesBancaires.fromJson(json['cartes_bancaires'] as Map<String, dynamic>) : null,
); }

final PaymentIntentParam2ThreeDSecureNetworkOptionsCartesBancaires? cartesBancaires;

Map<String, dynamic> toJson() { return {
  if (cartesBancaires != null) 'cartes_bancaires': cartesBancaires?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'cartes_bancaires'}.contains(key)); } 
PaymentIntentParam2ThreeDSecureNetworkOptions copyWith({PaymentIntentParam2ThreeDSecureNetworkOptionsCartesBancaires Function()? cartesBancaires}) { return PaymentIntentParam2ThreeDSecureNetworkOptions(
  cartesBancaires: cartesBancaires != null ? cartesBancaires() : this.cartesBancaires,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentParam2ThreeDSecureNetworkOptions &&
          cartesBancaires == other.cartesBancaires; } 
@override int get hashCode { return cartesBancaires.hashCode; } 
@override String toString() { return 'PaymentIntentParam2ThreeDSecureNetworkOptions(cartesBancaires: $cartesBancaires)'; } 
 }
