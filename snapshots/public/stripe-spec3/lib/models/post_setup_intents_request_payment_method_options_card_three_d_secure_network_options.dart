// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_setup_intents_request_payment_method_options_card_three_d_secure_network_options_cartes_bancaires.dart';@immutable final class PostSetupIntentsRequestPaymentMethodOptionsCardThreeDSecureNetworkOptions {const PostSetupIntentsRequestPaymentMethodOptionsCardThreeDSecureNetworkOptions({this.cartesBancaires});

factory PostSetupIntentsRequestPaymentMethodOptionsCardThreeDSecureNetworkOptions.fromJson(Map<String, dynamic> json) { return PostSetupIntentsRequestPaymentMethodOptionsCardThreeDSecureNetworkOptions(
  cartesBancaires: json['cartes_bancaires'] != null ? PostSetupIntentsRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancaires.fromJson(json['cartes_bancaires'] as Map<String, dynamic>) : null,
); }

final PostSetupIntentsRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancaires? cartesBancaires;

Map<String, dynamic> toJson() { return {
  if (cartesBancaires != null) 'cartes_bancaires': cartesBancaires?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'cartes_bancaires'}.contains(key)); } 
PostSetupIntentsRequestPaymentMethodOptionsCardThreeDSecureNetworkOptions copyWith({PostSetupIntentsRequestPaymentMethodOptionsCardThreeDSecureNetworkOptionsCartesBancaires Function()? cartesBancaires}) { return PostSetupIntentsRequestPaymentMethodOptionsCardThreeDSecureNetworkOptions(
  cartesBancaires: cartesBancaires != null ? cartesBancaires() : this.cartesBancaires,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSetupIntentsRequestPaymentMethodOptionsCardThreeDSecureNetworkOptions &&
          cartesBancaires == other.cartesBancaires; } 
@override int get hashCode { return cartesBancaires.hashCode; } 
@override String toString() { return 'PostSetupIntentsRequestPaymentMethodOptionsCardThreeDSecureNetworkOptions(cartesBancaires: $cartesBancaires)'; } 
 }
