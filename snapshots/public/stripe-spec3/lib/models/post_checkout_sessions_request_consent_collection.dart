// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_checkout_sessions_request_consent_collection_payment_method_reuse_agreement.dart';final class PostCheckoutSessionsRequestConsentCollectionPromotions {const PostCheckoutSessionsRequestConsentCollectionPromotions._(this.value);

factory PostCheckoutSessionsRequestConsentCollectionPromotions.fromJson(String json) { return switch (json) {
  'auto' => auto,
  'none' => none,
  _ => PostCheckoutSessionsRequestConsentCollectionPromotions._(json),
}; }

static const PostCheckoutSessionsRequestConsentCollectionPromotions auto = PostCheckoutSessionsRequestConsentCollectionPromotions._('auto');

static const PostCheckoutSessionsRequestConsentCollectionPromotions none = PostCheckoutSessionsRequestConsentCollectionPromotions._('none');

static const List<PostCheckoutSessionsRequestConsentCollectionPromotions> values = [auto, none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsRequestConsentCollectionPromotions && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestConsentCollectionPromotions($value)'; } 
 }
final class PostCheckoutSessionsRequestConsentCollectionTermsOfService {const PostCheckoutSessionsRequestConsentCollectionTermsOfService._(this.value);

factory PostCheckoutSessionsRequestConsentCollectionTermsOfService.fromJson(String json) { return switch (json) {
  'none' => none,
  'required' => $required,
  _ => PostCheckoutSessionsRequestConsentCollectionTermsOfService._(json),
}; }

static const PostCheckoutSessionsRequestConsentCollectionTermsOfService none = PostCheckoutSessionsRequestConsentCollectionTermsOfService._('none');

static const PostCheckoutSessionsRequestConsentCollectionTermsOfService $required = PostCheckoutSessionsRequestConsentCollectionTermsOfService._('required');

static const List<PostCheckoutSessionsRequestConsentCollectionTermsOfService> values = [none, $required];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsRequestConsentCollectionTermsOfService && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestConsentCollectionTermsOfService($value)'; } 
 }
/// Configure fields for the Checkout Session to gather active consent from customers.
final class PostCheckoutSessionsRequestConsentCollection {const PostCheckoutSessionsRequestConsentCollection({this.paymentMethodReuseAgreement, this.promotions, this.termsOfService, });

factory PostCheckoutSessionsRequestConsentCollection.fromJson(Map<String, dynamic> json) { return PostCheckoutSessionsRequestConsentCollection(
  paymentMethodReuseAgreement: json['payment_method_reuse_agreement'] != null ? PostCheckoutSessionsRequestConsentCollectionPaymentMethodReuseAgreement.fromJson(json['payment_method_reuse_agreement'] as Map<String, dynamic>) : null,
  promotions: json['promotions'] != null ? PostCheckoutSessionsRequestConsentCollectionPromotions.fromJson(json['promotions'] as String) : null,
  termsOfService: json['terms_of_service'] != null ? PostCheckoutSessionsRequestConsentCollectionTermsOfService.fromJson(json['terms_of_service'] as String) : null,
); }

final PostCheckoutSessionsRequestConsentCollectionPaymentMethodReuseAgreement? paymentMethodReuseAgreement;

final PostCheckoutSessionsRequestConsentCollectionPromotions? promotions;

final PostCheckoutSessionsRequestConsentCollectionTermsOfService? termsOfService;

Map<String, dynamic> toJson() { return {
  if (paymentMethodReuseAgreement != null) 'payment_method_reuse_agreement': paymentMethodReuseAgreement?.toJson(),
  if (promotions != null) 'promotions': promotions?.toJson(),
  if (termsOfService != null) 'terms_of_service': termsOfService?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostCheckoutSessionsRequestConsentCollection copyWith({PostCheckoutSessionsRequestConsentCollectionPaymentMethodReuseAgreement Function()? paymentMethodReuseAgreement, PostCheckoutSessionsRequestConsentCollectionPromotions Function()? promotions, PostCheckoutSessionsRequestConsentCollectionTermsOfService Function()? termsOfService, }) { return PostCheckoutSessionsRequestConsentCollection(
  paymentMethodReuseAgreement: paymentMethodReuseAgreement != null ? paymentMethodReuseAgreement() : this.paymentMethodReuseAgreement,
  promotions: promotions != null ? promotions() : this.promotions,
  termsOfService: termsOfService != null ? termsOfService() : this.termsOfService,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCheckoutSessionsRequestConsentCollection &&
          paymentMethodReuseAgreement == other.paymentMethodReuseAgreement &&
          promotions == other.promotions &&
          termsOfService == other.termsOfService; } 
@override int get hashCode { return Object.hash(paymentMethodReuseAgreement, promotions, termsOfService); } 
@override String toString() { return 'PostCheckoutSessionsRequestConsentCollection(paymentMethodReuseAgreement: $paymentMethodReuseAgreement, promotions: $promotions, termsOfService: $termsOfService)'; } 
 }
