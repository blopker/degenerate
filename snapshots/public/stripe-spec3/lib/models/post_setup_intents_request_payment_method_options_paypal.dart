// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostSetupIntentsRequestPaymentMethodOptionsPaypal {const PostSetupIntentsRequestPaymentMethodOptionsPaypal({this.billingAgreementId});

factory PostSetupIntentsRequestPaymentMethodOptionsPaypal.fromJson(Map<String, dynamic> json) { return PostSetupIntentsRequestPaymentMethodOptionsPaypal(
  billingAgreementId: json['billing_agreement_id'] as String?,
); }

final String? billingAgreementId;

Map<String, dynamic> toJson() { return {
  'billing_agreement_id': ?billingAgreementId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'billing_agreement_id'}.contains(key)); } 
PostSetupIntentsRequestPaymentMethodOptionsPaypal copyWith({String Function()? billingAgreementId}) { return PostSetupIntentsRequestPaymentMethodOptionsPaypal(
  billingAgreementId: billingAgreementId != null ? billingAgreementId() : this.billingAgreementId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSetupIntentsRequestPaymentMethodOptionsPaypal &&
          billingAgreementId == other.billingAgreementId; } 
@override int get hashCode { return billingAgreementId.hashCode; } 
@override String toString() { return 'PostSetupIntentsRequestPaymentMethodOptionsPaypal(billingAgreementId: $billingAgreementId)'; } 
 }
