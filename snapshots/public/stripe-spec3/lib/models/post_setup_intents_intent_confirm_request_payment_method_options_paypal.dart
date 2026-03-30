// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaypal {const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaypal({this.billingAgreementId});

factory PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaypal.fromJson(Map<String, dynamic> json) { return PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaypal(
  billingAgreementId: json['billing_agreement_id'] as String?,
); }

final String? billingAgreementId;

Map<String, dynamic> toJson() { return {
  'billing_agreement_id': ?billingAgreementId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'billing_agreement_id'}.contains(key)); } 
PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaypal copyWith({String Function()? billingAgreementId}) { return PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaypal(
  billingAgreementId: billingAgreementId != null ? billingAgreementId() : this.billingAgreementId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaypal &&
          billingAgreementId == other.billingAgreementId; } 
@override int get hashCode { return billingAgreementId.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaypal(billingAgreementId: $billingAgreementId)'; } 
 }
