// GENERATED CODE - DO NOT MODIFY BY HAND

import 'payment_pages_checkout_session_consent_collection_payment_method_reuse_agreement.dart';/// If set to `auto`, enables the collection of customer consent for promotional communications. The Checkout
/// Session will determine whether to display an option to opt into promotional communication
/// from the merchant depending on the customer's locale. Only available to US merchants.
final class PaymentPagesCheckoutSessionConsentCollectionPromotions {const PaymentPagesCheckoutSessionConsentCollectionPromotions._(this.value);

factory PaymentPagesCheckoutSessionConsentCollectionPromotions.fromJson(String json) { return switch (json) {
  'auto' => auto,
  'none' => none,
  _ => PaymentPagesCheckoutSessionConsentCollectionPromotions._(json),
}; }

static const PaymentPagesCheckoutSessionConsentCollectionPromotions auto = PaymentPagesCheckoutSessionConsentCollectionPromotions._('auto');

static const PaymentPagesCheckoutSessionConsentCollectionPromotions none = PaymentPagesCheckoutSessionConsentCollectionPromotions._('none');

static const List<PaymentPagesCheckoutSessionConsentCollectionPromotions> values = [auto, none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentPagesCheckoutSessionConsentCollectionPromotions && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentPagesCheckoutSessionConsentCollectionPromotions($value)'; } 
 }
/// If set to `required`, it requires customers to accept the terms of service before being able to pay.
final class PaymentPagesCheckoutSessionConsentCollectionTermsOfService {const PaymentPagesCheckoutSessionConsentCollectionTermsOfService._(this.value);

factory PaymentPagesCheckoutSessionConsentCollectionTermsOfService.fromJson(String json) { return switch (json) {
  'none' => none,
  'required' => $required,
  _ => PaymentPagesCheckoutSessionConsentCollectionTermsOfService._(json),
}; }

static const PaymentPagesCheckoutSessionConsentCollectionTermsOfService none = PaymentPagesCheckoutSessionConsentCollectionTermsOfService._('none');

static const PaymentPagesCheckoutSessionConsentCollectionTermsOfService $required = PaymentPagesCheckoutSessionConsentCollectionTermsOfService._('required');

static const List<PaymentPagesCheckoutSessionConsentCollectionTermsOfService> values = [none, $required];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentPagesCheckoutSessionConsentCollectionTermsOfService && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentPagesCheckoutSessionConsentCollectionTermsOfService($value)'; } 
 }
/// 
final class PaymentPagesCheckoutSessionConsentCollection {const PaymentPagesCheckoutSessionConsentCollection({this.paymentMethodReuseAgreement, this.promotions, this.termsOfService, });

factory PaymentPagesCheckoutSessionConsentCollection.fromJson(Map<String, dynamic> json) { return PaymentPagesCheckoutSessionConsentCollection(
  paymentMethodReuseAgreement: json['payment_method_reuse_agreement'] != null ? PaymentPagesCheckoutSessionConsentCollectionPaymentMethodReuseAgreement.fromJson(json['payment_method_reuse_agreement'] as Map<String, dynamic>) : null,
  promotions: json['promotions'] != null ? PaymentPagesCheckoutSessionConsentCollectionPromotions.fromJson(json['promotions'] as String) : null,
  termsOfService: json['terms_of_service'] != null ? PaymentPagesCheckoutSessionConsentCollectionTermsOfService.fromJson(json['terms_of_service'] as String) : null,
); }

/// If set to `hidden`, it will hide legal text related to the reuse of a payment method.
final PaymentPagesCheckoutSessionConsentCollectionPaymentMethodReuseAgreement? paymentMethodReuseAgreement;

/// If set to `auto`, enables the collection of customer consent for promotional communications. The Checkout
/// Session will determine whether to display an option to opt into promotional communication
/// from the merchant depending on the customer's locale. Only available to US merchants.
final PaymentPagesCheckoutSessionConsentCollectionPromotions? promotions;

/// If set to `required`, it requires customers to accept the terms of service before being able to pay.
final PaymentPagesCheckoutSessionConsentCollectionTermsOfService? termsOfService;

Map<String, dynamic> toJson() { return {
  if (paymentMethodReuseAgreement != null) 'payment_method_reuse_agreement': paymentMethodReuseAgreement?.toJson(),
  if (promotions != null) 'promotions': promotions?.toJson(),
  if (termsOfService != null) 'terms_of_service': termsOfService?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PaymentPagesCheckoutSessionConsentCollection copyWith({PaymentPagesCheckoutSessionConsentCollectionPaymentMethodReuseAgreement? Function()? paymentMethodReuseAgreement, PaymentPagesCheckoutSessionConsentCollectionPromotions? Function()? promotions, PaymentPagesCheckoutSessionConsentCollectionTermsOfService? Function()? termsOfService, }) { return PaymentPagesCheckoutSessionConsentCollection(
  paymentMethodReuseAgreement: paymentMethodReuseAgreement != null ? paymentMethodReuseAgreement() : this.paymentMethodReuseAgreement,
  promotions: promotions != null ? promotions() : this.promotions,
  termsOfService: termsOfService != null ? termsOfService() : this.termsOfService,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentPagesCheckoutSessionConsentCollection &&
          paymentMethodReuseAgreement == other.paymentMethodReuseAgreement &&
          promotions == other.promotions &&
          termsOfService == other.termsOfService; } 
@override int get hashCode { return Object.hash(paymentMethodReuseAgreement, promotions, termsOfService); } 
@override String toString() { return 'PaymentPagesCheckoutSessionConsentCollection(paymentMethodReuseAgreement: $paymentMethodReuseAgreement, promotions: $promotions, termsOfService: $termsOfService)'; } 
 }
