// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// If `opt_in`, the customer consents to receiving promotional communications
/// from the merchant about this Checkout Session.
@immutable final class PaymentPagesCheckoutSessionConsentPromotions {const PaymentPagesCheckoutSessionConsentPromotions._(this.value);

factory PaymentPagesCheckoutSessionConsentPromotions.fromJson(String json) { return switch (json) {
  'opt_in' => optIn,
  'opt_out' => optOut,
  _ => PaymentPagesCheckoutSessionConsentPromotions._(json),
}; }

static const PaymentPagesCheckoutSessionConsentPromotions optIn = PaymentPagesCheckoutSessionConsentPromotions._('opt_in');

static const PaymentPagesCheckoutSessionConsentPromotions optOut = PaymentPagesCheckoutSessionConsentPromotions._('opt_out');

static const List<PaymentPagesCheckoutSessionConsentPromotions> values = [optIn, optOut];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentPagesCheckoutSessionConsentPromotions && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentPagesCheckoutSessionConsentPromotions($value)'; } 
 }
/// If `accepted`, the customer in this Checkout Session has agreed to the merchant's terms of service.
@immutable final class PaymentPagesCheckoutSessionConsentTermsOfService {const PaymentPagesCheckoutSessionConsentTermsOfService._(this.value);

factory PaymentPagesCheckoutSessionConsentTermsOfService.fromJson(String json) { return switch (json) {
  'accepted' => accepted,
  _ => PaymentPagesCheckoutSessionConsentTermsOfService._(json),
}; }

static const PaymentPagesCheckoutSessionConsentTermsOfService accepted = PaymentPagesCheckoutSessionConsentTermsOfService._('accepted');

static const List<PaymentPagesCheckoutSessionConsentTermsOfService> values = [accepted];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentPagesCheckoutSessionConsentTermsOfService && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentPagesCheckoutSessionConsentTermsOfService($value)'; } 
 }
/// 
@immutable final class PaymentPagesCheckoutSessionConsent {const PaymentPagesCheckoutSessionConsent({this.promotions = const Omittable.absent(), this.termsOfService = const Omittable.absent(), });

factory PaymentPagesCheckoutSessionConsent.fromJson(Map<String, dynamic> json) { return PaymentPagesCheckoutSessionConsent(
  promotions: json.containsKey('promotions') ? Omittable(json['promotions'] != null ? PaymentPagesCheckoutSessionConsentPromotions.fromJson(json['promotions'] as String) : null) : const Omittable.absent(),
  termsOfService: json.containsKey('terms_of_service') ? Omittable(json['terms_of_service'] != null ? PaymentPagesCheckoutSessionConsentTermsOfService.fromJson(json['terms_of_service'] as String) : null) : const Omittable.absent(),
); }

/// If `opt_in`, the customer consents to receiving promotional communications
/// from the merchant about this Checkout Session.
final Omittable<PaymentPagesCheckoutSessionConsentPromotions?> promotions;

/// If `accepted`, the customer in this Checkout Session has agreed to the merchant's terms of service.
final Omittable<PaymentPagesCheckoutSessionConsentTermsOfService?> termsOfService;

Map<String, dynamic> toJson() { return {
  if (promotions.isPresent) 'promotions': promotions.value?.toJson(),
  if (termsOfService.isPresent) 'terms_of_service': termsOfService.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'promotions', 'terms_of_service'}.contains(key)); } 
PaymentPagesCheckoutSessionConsent copyWith({Omittable<PaymentPagesCheckoutSessionConsentPromotions?>? promotions, Omittable<PaymentPagesCheckoutSessionConsentTermsOfService?>? termsOfService, }) { return PaymentPagesCheckoutSessionConsent(
  promotions: promotions ?? this.promotions,
  termsOfService: termsOfService ?? this.termsOfService,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentPagesCheckoutSessionConsent &&
          promotions == other.promotions &&
          termsOfService == other.termsOfService; } 
@override int get hashCode { return Object.hash(promotions, termsOfService); } 
@override String toString() { return 'PaymentPagesCheckoutSessionConsent(promotions: $promotions, termsOfService: $termsOfService)'; } 
 }
