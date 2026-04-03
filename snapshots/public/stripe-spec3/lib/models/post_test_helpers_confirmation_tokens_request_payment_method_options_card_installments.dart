// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_test_helpers_confirmation_tokens_request_payment_method_options_card_installments_plan.dart';@immutable final class PostTestHelpersConfirmationTokensRequestPaymentMethodOptionsCardInstallments {const PostTestHelpersConfirmationTokensRequestPaymentMethodOptionsCardInstallments({required this.plan});

factory PostTestHelpersConfirmationTokensRequestPaymentMethodOptionsCardInstallments.fromJson(Map<String, dynamic> json) { return PostTestHelpersConfirmationTokensRequestPaymentMethodOptionsCardInstallments(
  plan: PostTestHelpersConfirmationTokensRequestPaymentMethodOptionsCardInstallmentsPlan.fromJson(json['plan'] as Map<String, dynamic>),
); }

final PostTestHelpersConfirmationTokensRequestPaymentMethodOptionsCardInstallmentsPlan plan;

Map<String, dynamic> toJson() { return {
  'plan': plan.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('plan'); } 
PostTestHelpersConfirmationTokensRequestPaymentMethodOptionsCardInstallments copyWith({PostTestHelpersConfirmationTokensRequestPaymentMethodOptionsCardInstallmentsPlan? plan}) { return PostTestHelpersConfirmationTokensRequestPaymentMethodOptionsCardInstallments(
  plan: plan ?? this.plan,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersConfirmationTokensRequestPaymentMethodOptionsCardInstallments &&
          plan == other.plan; } 
@override int get hashCode { return plan.hashCode; } 
@override String toString() { return 'PostTestHelpersConfirmationTokensRequestPaymentMethodOptionsCardInstallments(plan: $plan)'; } 
 }
