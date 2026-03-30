// GENERATED CODE - DO NOT MODIFY BY HAND

import 'payment_links_resource_consent_collection_payment_method_reuse_agreement.dart';/// If set to `auto`, enables the collection of customer consent for promotional communications.
final class PaymentLinksResourceConsentCollectionPromotions {const PaymentLinksResourceConsentCollectionPromotions._(this.value);

factory PaymentLinksResourceConsentCollectionPromotions.fromJson(String json) { return switch (json) {
  'auto' => auto,
  'none' => none,
  _ => PaymentLinksResourceConsentCollectionPromotions._(json),
}; }

static const PaymentLinksResourceConsentCollectionPromotions auto = PaymentLinksResourceConsentCollectionPromotions._('auto');

static const PaymentLinksResourceConsentCollectionPromotions none = PaymentLinksResourceConsentCollectionPromotions._('none');

static const List<PaymentLinksResourceConsentCollectionPromotions> values = [auto, none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentLinksResourceConsentCollectionPromotions && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentLinksResourceConsentCollectionPromotions($value)'; } 
 }
/// If set to `required`, it requires cutomers to accept the terms of service before being able to pay. If set to `none`, customers won't be shown a checkbox to accept the terms of service.
final class PaymentLinksResourceConsentCollectionTermsOfService {const PaymentLinksResourceConsentCollectionTermsOfService._(this.value);

factory PaymentLinksResourceConsentCollectionTermsOfService.fromJson(String json) { return switch (json) {
  'none' => none,
  'required' => $required,
  _ => PaymentLinksResourceConsentCollectionTermsOfService._(json),
}; }

static const PaymentLinksResourceConsentCollectionTermsOfService none = PaymentLinksResourceConsentCollectionTermsOfService._('none');

static const PaymentLinksResourceConsentCollectionTermsOfService $required = PaymentLinksResourceConsentCollectionTermsOfService._('required');

static const List<PaymentLinksResourceConsentCollectionTermsOfService> values = [none, $required];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentLinksResourceConsentCollectionTermsOfService && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentLinksResourceConsentCollectionTermsOfService($value)'; } 
 }
/// 
final class PaymentLinksResourceConsentCollection {const PaymentLinksResourceConsentCollection({this.paymentMethodReuseAgreement, this.promotions, this.termsOfService, });

factory PaymentLinksResourceConsentCollection.fromJson(Map<String, dynamic> json) { return PaymentLinksResourceConsentCollection(
  paymentMethodReuseAgreement: json['payment_method_reuse_agreement'] != null ? PaymentLinksResourceConsentCollectionPaymentMethodReuseAgreement.fromJson(json['payment_method_reuse_agreement'] as Map<String, dynamic>) : null,
  promotions: json['promotions'] != null ? PaymentLinksResourceConsentCollectionPromotions.fromJson(json['promotions'] as String) : null,
  termsOfService: json['terms_of_service'] != null ? PaymentLinksResourceConsentCollectionTermsOfService.fromJson(json['terms_of_service'] as String) : null,
); }

/// Settings related to the payment method reuse text shown in the Checkout UI.
final PaymentLinksResourceConsentCollectionPaymentMethodReuseAgreement? paymentMethodReuseAgreement;

/// If set to `auto`, enables the collection of customer consent for promotional communications.
final PaymentLinksResourceConsentCollectionPromotions? promotions;

/// If set to `required`, it requires cutomers to accept the terms of service before being able to pay. If set to `none`, customers won't be shown a checkbox to accept the terms of service.
final PaymentLinksResourceConsentCollectionTermsOfService? termsOfService;

Map<String, dynamic> toJson() { return {
  if (paymentMethodReuseAgreement != null) 'payment_method_reuse_agreement': paymentMethodReuseAgreement?.toJson(),
  if (promotions != null) 'promotions': promotions?.toJson(),
  if (termsOfService != null) 'terms_of_service': termsOfService?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'payment_method_reuse_agreement', 'promotions', 'terms_of_service'}.contains(key)); } 
PaymentLinksResourceConsentCollection copyWith({PaymentLinksResourceConsentCollectionPaymentMethodReuseAgreement? Function()? paymentMethodReuseAgreement, PaymentLinksResourceConsentCollectionPromotions? Function()? promotions, PaymentLinksResourceConsentCollectionTermsOfService? Function()? termsOfService, }) { return PaymentLinksResourceConsentCollection(
  paymentMethodReuseAgreement: paymentMethodReuseAgreement != null ? paymentMethodReuseAgreement() : this.paymentMethodReuseAgreement,
  promotions: promotions != null ? promotions() : this.promotions,
  termsOfService: termsOfService != null ? termsOfService() : this.termsOfService,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentLinksResourceConsentCollection &&
          paymentMethodReuseAgreement == other.paymentMethodReuseAgreement &&
          promotions == other.promotions &&
          termsOfService == other.termsOfService; } 
@override int get hashCode { return Object.hash(paymentMethodReuseAgreement, promotions, termsOfService); } 
@override String toString() { return 'PaymentLinksResourceConsentCollection(paymentMethodReuseAgreement: $paymentMethodReuseAgreement, promotions: $promotions, termsOfService: $termsOfService)'; } 
 }
