// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_pages_checkout_session_payment_method_reuse_agreement.dart';/// If set to `auto`, enables the collection of customer consent for promotional communications. The Checkout
/// Session will determine whether to display an option to opt into promotional communication
/// from the merchant depending on the customer's locale. Only available to US merchants.
@immutable final class PaymentPagesCheckoutSessionConsentCollectionPromotions {const PaymentPagesCheckoutSessionConsentCollectionPromotions._(this.value);

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
@immutable final class PaymentPagesCheckoutSessionConsentCollectionTermsOfService {const PaymentPagesCheckoutSessionConsentCollectionTermsOfService._(this.value);

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
@immutable final class PaymentPagesCheckoutSessionConsentCollection {const PaymentPagesCheckoutSessionConsentCollection({this.paymentMethodReuseAgreement = const Omittable.absent(), this.promotions = const Omittable.absent(), this.termsOfService = const Omittable.absent(), });

factory PaymentPagesCheckoutSessionConsentCollection.fromJson(Map<String, dynamic> json) { return PaymentPagesCheckoutSessionConsentCollection(
  paymentMethodReuseAgreement: json.containsKey('payment_method_reuse_agreement') ? Omittable(json['payment_method_reuse_agreement'] != null ? PaymentPagesCheckoutSessionPaymentMethodReuseAgreement.fromJson(json['payment_method_reuse_agreement'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  promotions: json.containsKey('promotions') ? Omittable(json['promotions'] != null ? PaymentPagesCheckoutSessionConsentCollectionPromotions.fromJson(json['promotions'] as String) : null) : const Omittable.absent(),
  termsOfService: json.containsKey('terms_of_service') ? Omittable(json['terms_of_service'] != null ? PaymentPagesCheckoutSessionConsentCollectionTermsOfService.fromJson(json['terms_of_service'] as String) : null) : const Omittable.absent(),
); }

/// If set to `hidden`, it will hide legal text related to the reuse of a payment method.
final Omittable<PaymentPagesCheckoutSessionPaymentMethodReuseAgreement?> paymentMethodReuseAgreement;

/// If set to `auto`, enables the collection of customer consent for promotional communications. The Checkout
/// Session will determine whether to display an option to opt into promotional communication
/// from the merchant depending on the customer's locale. Only available to US merchants.
final Omittable<PaymentPagesCheckoutSessionConsentCollectionPromotions?> promotions;

/// If set to `required`, it requires customers to accept the terms of service before being able to pay.
final Omittable<PaymentPagesCheckoutSessionConsentCollectionTermsOfService?> termsOfService;

Map<String, dynamic> toJson() { return {
  if (paymentMethodReuseAgreement.isPresent) 'payment_method_reuse_agreement': paymentMethodReuseAgreement.value?.toJson(),
  if (promotions.isPresent) 'promotions': promotions.value?.toJson(),
  if (termsOfService.isPresent) 'terms_of_service': termsOfService.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'payment_method_reuse_agreement', 'promotions', 'terms_of_service'}.contains(key)); } 
PaymentPagesCheckoutSessionConsentCollection copyWith({Omittable<PaymentPagesCheckoutSessionPaymentMethodReuseAgreement?>? paymentMethodReuseAgreement, Omittable<PaymentPagesCheckoutSessionConsentCollectionPromotions?>? promotions, Omittable<PaymentPagesCheckoutSessionConsentCollectionTermsOfService?>? termsOfService, }) { return PaymentPagesCheckoutSessionConsentCollection(
  paymentMethodReuseAgreement: paymentMethodReuseAgreement ?? this.paymentMethodReuseAgreement,
  promotions: promotions ?? this.promotions,
  termsOfService: termsOfService ?? this.termsOfService,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentPagesCheckoutSessionConsentCollection &&
          paymentMethodReuseAgreement == other.paymentMethodReuseAgreement &&
          promotions == other.promotions &&
          termsOfService == other.termsOfService; } 
@override int get hashCode { return Object.hash(paymentMethodReuseAgreement, promotions, termsOfService); } 
@override String toString() { return 'PaymentPagesCheckoutSessionConsentCollection(paymentMethodReuseAgreement: $paymentMethodReuseAgreement, promotions: $promotions, termsOfService: $termsOfService)'; } 
 }
