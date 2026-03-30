// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentMethodsRequestNaverPayFunding {const PostPaymentMethodsRequestNaverPayFunding._(this.value);

factory PostPaymentMethodsRequestNaverPayFunding.fromJson(String json) { return switch (json) {
  'card' => card,
  'points' => points,
  _ => PostPaymentMethodsRequestNaverPayFunding._(json),
}; }

static const PostPaymentMethodsRequestNaverPayFunding card = PostPaymentMethodsRequestNaverPayFunding._('card');

static const PostPaymentMethodsRequestNaverPayFunding points = PostPaymentMethodsRequestNaverPayFunding._('points');

static const List<PostPaymentMethodsRequestNaverPayFunding> values = [card, points];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodsRequestNaverPayFunding && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodsRequestNaverPayFunding($value)'; } 
 }
/// If this is a `naver_pay` PaymentMethod, this hash contains details about the Naver Pay payment method.
final class PostPaymentMethodsRequestNaverPay {const PostPaymentMethodsRequestNaverPay({this.funding});

factory PostPaymentMethodsRequestNaverPay.fromJson(Map<String, dynamic> json) { return PostPaymentMethodsRequestNaverPay(
  funding: json['funding'] != null ? PostPaymentMethodsRequestNaverPayFunding.fromJson(json['funding'] as String) : null,
); }

final PostPaymentMethodsRequestNaverPayFunding? funding;

Map<String, dynamic> toJson() { return {
  if (funding != null) 'funding': funding?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'funding'}.contains(key)); } 
PostPaymentMethodsRequestNaverPay copyWith({PostPaymentMethodsRequestNaverPayFunding Function()? funding}) { return PostPaymentMethodsRequestNaverPay(
  funding: funding != null ? funding() : this.funding,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodsRequestNaverPay &&
          funding == other.funding; } 
@override int get hashCode { return funding.hashCode; } 
@override String toString() { return 'PostPaymentMethodsRequestNaverPay(funding: $funding)'; } 
 }
