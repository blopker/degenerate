// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostTestHelpersConfirmationTokensRequestPaymentMethodDataNaverPayFunding {const PostTestHelpersConfirmationTokensRequestPaymentMethodDataNaverPayFunding._(this.value);

factory PostTestHelpersConfirmationTokensRequestPaymentMethodDataNaverPayFunding.fromJson(String json) { return switch (json) {
  'card' => card,
  'points' => points,
  _ => PostTestHelpersConfirmationTokensRequestPaymentMethodDataNaverPayFunding._(json),
}; }

static const PostTestHelpersConfirmationTokensRequestPaymentMethodDataNaverPayFunding card = PostTestHelpersConfirmationTokensRequestPaymentMethodDataNaverPayFunding._('card');

static const PostTestHelpersConfirmationTokensRequestPaymentMethodDataNaverPayFunding points = PostTestHelpersConfirmationTokensRequestPaymentMethodDataNaverPayFunding._('points');

static const List<PostTestHelpersConfirmationTokensRequestPaymentMethodDataNaverPayFunding> values = [card, points];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTestHelpersConfirmationTokensRequestPaymentMethodDataNaverPayFunding && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTestHelpersConfirmationTokensRequestPaymentMethodDataNaverPayFunding($value)'; } 
 }
final class PostTestHelpersConfirmationTokensRequestPaymentMethodDataNaverPay {const PostTestHelpersConfirmationTokensRequestPaymentMethodDataNaverPay({this.funding});

factory PostTestHelpersConfirmationTokensRequestPaymentMethodDataNaverPay.fromJson(Map<String, dynamic> json) { return PostTestHelpersConfirmationTokensRequestPaymentMethodDataNaverPay(
  funding: json['funding'] != null ? PostTestHelpersConfirmationTokensRequestPaymentMethodDataNaverPayFunding.fromJson(json['funding'] as String) : null,
); }

final PostTestHelpersConfirmationTokensRequestPaymentMethodDataNaverPayFunding? funding;

Map<String, dynamic> toJson() { return {
  if (funding != null) 'funding': funding?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'funding'}.contains(key)); } 
PostTestHelpersConfirmationTokensRequestPaymentMethodDataNaverPay copyWith({PostTestHelpersConfirmationTokensRequestPaymentMethodDataNaverPayFunding Function()? funding}) { return PostTestHelpersConfirmationTokensRequestPaymentMethodDataNaverPay(
  funding: funding != null ? funding() : this.funding,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersConfirmationTokensRequestPaymentMethodDataNaverPay &&
          funding == other.funding; } 
@override int get hashCode { return funding.hashCode; } 
@override String toString() { return 'PostTestHelpersConfirmationTokensRequestPaymentMethodDataNaverPay(funding: $funding)'; } 
 }
