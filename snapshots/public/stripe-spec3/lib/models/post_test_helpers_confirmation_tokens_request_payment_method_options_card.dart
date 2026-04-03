// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_test_helpers_confirmation_tokens_request_payment_method_options_card_installments.dart';@immutable final class PostTestHelpersConfirmationTokensRequestPaymentMethodOptionsCard {const PostTestHelpersConfirmationTokensRequestPaymentMethodOptionsCard({this.installments});

factory PostTestHelpersConfirmationTokensRequestPaymentMethodOptionsCard.fromJson(Map<String, dynamic> json) { return PostTestHelpersConfirmationTokensRequestPaymentMethodOptionsCard(
  installments: json['installments'] != null ? PostTestHelpersConfirmationTokensRequestPaymentMethodOptionsCardInstallments.fromJson(json['installments'] as Map<String, dynamic>) : null,
); }

final PostTestHelpersConfirmationTokensRequestPaymentMethodOptionsCardInstallments? installments;

Map<String, dynamic> toJson() { return {
  if (installments != null) 'installments': installments?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'installments'}.contains(key)); } 
PostTestHelpersConfirmationTokensRequestPaymentMethodOptionsCard copyWith({PostTestHelpersConfirmationTokensRequestPaymentMethodOptionsCardInstallments Function()? installments}) { return PostTestHelpersConfirmationTokensRequestPaymentMethodOptionsCard(
  installments: installments != null ? installments() : this.installments,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersConfirmationTokensRequestPaymentMethodOptionsCard &&
          installments == other.installments; } 
@override int get hashCode { return installments.hashCode; } 
@override String toString() { return 'PostTestHelpersConfirmationTokensRequestPaymentMethodOptionsCard(installments: $installments)'; } 
 }
