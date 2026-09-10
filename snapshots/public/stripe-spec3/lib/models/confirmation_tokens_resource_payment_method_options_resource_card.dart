// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'confirmation_tokens_resource_payment_method_options_resource_card_resource_installment.dart';/// This hash contains the card payment method options.
@immutable final class ConfirmationTokensResourcePaymentMethodOptionsResourceCard {const ConfirmationTokensResourcePaymentMethodOptionsResourceCard({this.cvcToken = const Omittable.absent(), this.installments, });

factory ConfirmationTokensResourcePaymentMethodOptionsResourceCard.fromJson(Map<String, dynamic> json) { return ConfirmationTokensResourcePaymentMethodOptionsResourceCard(
  cvcToken: json.containsKey('cvc_token') ? Omittable(json['cvc_token'] as String?) : const Omittable.absent(),
  installments: json['installments'] != null ? ConfirmationTokensResourcePaymentMethodOptionsResourceCardResourceInstallment.fromJson(json['installments'] as Map<String, dynamic>) : null,
); }

/// The `cvc_update` Token collected from the Payment Element.
final Omittable<String?> cvcToken;

final ConfirmationTokensResourcePaymentMethodOptionsResourceCardResourceInstallment? installments;

Map<String, dynamic> toJson() { return {
  if (cvcToken.isPresent) 'cvc_token': cvcToken.value,
  if (installments != null) 'installments': installments?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'cvc_token', 'installments'}.contains(key)); } 
ConfirmationTokensResourcePaymentMethodOptionsResourceCard copyWith({Omittable<String?>? cvcToken, ConfirmationTokensResourcePaymentMethodOptionsResourceCardResourceInstallment? Function()? installments, }) { return ConfirmationTokensResourcePaymentMethodOptionsResourceCard(
  cvcToken: cvcToken ?? this.cvcToken,
  installments: installments != null ? installments() : this.installments,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ConfirmationTokensResourcePaymentMethodOptionsResourceCard &&
          cvcToken == other.cvcToken &&
          installments == other.installments; } 
@override int get hashCode { return Object.hash(cvcToken, installments); } 
@override String toString() { return 'ConfirmationTokensResourcePaymentMethodOptionsResourceCard(cvcToken: $cvcToken, installments: $installments)'; } 
 }
