// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostCheckoutSessionsRequestPaymentMethodOptionsAlipaySetupFutureUsage {const PostCheckoutSessionsRequestPaymentMethodOptionsAlipaySetupFutureUsage._(this.value);

factory PostCheckoutSessionsRequestPaymentMethodOptionsAlipaySetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  _ => PostCheckoutSessionsRequestPaymentMethodOptionsAlipaySetupFutureUsage._(json),
}; }

static const PostCheckoutSessionsRequestPaymentMethodOptionsAlipaySetupFutureUsage none = PostCheckoutSessionsRequestPaymentMethodOptionsAlipaySetupFutureUsage._('none');

static const List<PostCheckoutSessionsRequestPaymentMethodOptionsAlipaySetupFutureUsage> values = [none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsRequestPaymentMethodOptionsAlipaySetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsAlipaySetupFutureUsage($value)'; } 
 }
final class PostCheckoutSessionsRequestPaymentMethodOptionsAlipay {const PostCheckoutSessionsRequestPaymentMethodOptionsAlipay({this.setupFutureUsage});

factory PostCheckoutSessionsRequestPaymentMethodOptionsAlipay.fromJson(Map<String, dynamic> json) { return PostCheckoutSessionsRequestPaymentMethodOptionsAlipay(
  setupFutureUsage: json['setup_future_usage'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsAlipaySetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PostCheckoutSessionsRequestPaymentMethodOptionsAlipaySetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'setup_future_usage'}.contains(key)); } 
PostCheckoutSessionsRequestPaymentMethodOptionsAlipay copyWith({PostCheckoutSessionsRequestPaymentMethodOptionsAlipaySetupFutureUsage Function()? setupFutureUsage}) { return PostCheckoutSessionsRequestPaymentMethodOptionsAlipay(
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCheckoutSessionsRequestPaymentMethodOptionsAlipay &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return setupFutureUsage.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsAlipay(setupFutureUsage: $setupFutureUsage)'; } 
 }
