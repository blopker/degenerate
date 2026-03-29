// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostSetupIntentsIntentRequestPaymentMethodOptionsPaypal {const PostSetupIntentsIntentRequestPaymentMethodOptionsPaypal({this.billingAgreementId});

factory PostSetupIntentsIntentRequestPaymentMethodOptionsPaypal.fromJson(Map<String, dynamic> json) { return PostSetupIntentsIntentRequestPaymentMethodOptionsPaypal(
  billingAgreementId: json['billing_agreement_id'] as String?,
); }

final String? billingAgreementId;

Map<String, dynamic> toJson() { return {
  'billing_agreement_id': ?billingAgreementId,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostSetupIntentsIntentRequestPaymentMethodOptionsPaypal copyWith({String Function()? billingAgreementId}) { return PostSetupIntentsIntentRequestPaymentMethodOptionsPaypal(
  billingAgreementId: billingAgreementId != null ? billingAgreementId() : this.billingAgreementId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSetupIntentsIntentRequestPaymentMethodOptionsPaypal &&
          billingAgreementId == other.billingAgreementId; } 
@override int get hashCode { return billingAgreementId.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentRequestPaymentMethodOptionsPaypal(billingAgreementId: $billingAgreementId)'; } 
 }
