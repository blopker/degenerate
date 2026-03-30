// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostSetupIntentsIntentRequestPaymentMethodDataNaverPayFunding {const PostSetupIntentsIntentRequestPaymentMethodDataNaverPayFunding._(this.value);

factory PostSetupIntentsIntentRequestPaymentMethodDataNaverPayFunding.fromJson(String json) { return switch (json) {
  'card' => card,
  'points' => points,
  _ => PostSetupIntentsIntentRequestPaymentMethodDataNaverPayFunding._(json),
}; }

static const PostSetupIntentsIntentRequestPaymentMethodDataNaverPayFunding card = PostSetupIntentsIntentRequestPaymentMethodDataNaverPayFunding._('card');

static const PostSetupIntentsIntentRequestPaymentMethodDataNaverPayFunding points = PostSetupIntentsIntentRequestPaymentMethodDataNaverPayFunding._('points');

static const List<PostSetupIntentsIntentRequestPaymentMethodDataNaverPayFunding> values = [card, points];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsIntentRequestPaymentMethodDataNaverPayFunding && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentRequestPaymentMethodDataNaverPayFunding($value)'; } 
 }
final class PostSetupIntentsIntentRequestPaymentMethodDataNaverPay {const PostSetupIntentsIntentRequestPaymentMethodDataNaverPay({this.funding});

factory PostSetupIntentsIntentRequestPaymentMethodDataNaverPay.fromJson(Map<String, dynamic> json) { return PostSetupIntentsIntentRequestPaymentMethodDataNaverPay(
  funding: json['funding'] != null ? PostSetupIntentsIntentRequestPaymentMethodDataNaverPayFunding.fromJson(json['funding'] as String) : null,
); }

final PostSetupIntentsIntentRequestPaymentMethodDataNaverPayFunding? funding;

Map<String, dynamic> toJson() { return {
  if (funding != null) 'funding': funding?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'funding'}.contains(key)); } 
PostSetupIntentsIntentRequestPaymentMethodDataNaverPay copyWith({PostSetupIntentsIntentRequestPaymentMethodDataNaverPayFunding Function()? funding}) { return PostSetupIntentsIntentRequestPaymentMethodDataNaverPay(
  funding: funding != null ? funding() : this.funding,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSetupIntentsIntentRequestPaymentMethodDataNaverPay &&
          funding == other.funding; } 
@override int get hashCode { return funding.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentRequestPaymentMethodDataNaverPay(funding: $funding)'; } 
 }
