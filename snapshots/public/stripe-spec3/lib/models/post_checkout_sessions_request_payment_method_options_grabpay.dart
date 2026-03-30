// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostCheckoutSessionsRequestPaymentMethodOptionsGrabpaySetupFutureUsage {const PostCheckoutSessionsRequestPaymentMethodOptionsGrabpaySetupFutureUsage._(this.value);

factory PostCheckoutSessionsRequestPaymentMethodOptionsGrabpaySetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  _ => PostCheckoutSessionsRequestPaymentMethodOptionsGrabpaySetupFutureUsage._(json),
}; }

static const PostCheckoutSessionsRequestPaymentMethodOptionsGrabpaySetupFutureUsage none = PostCheckoutSessionsRequestPaymentMethodOptionsGrabpaySetupFutureUsage._('none');

static const List<PostCheckoutSessionsRequestPaymentMethodOptionsGrabpaySetupFutureUsage> values = [none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsRequestPaymentMethodOptionsGrabpaySetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsGrabpaySetupFutureUsage($value)'; } 
 }
final class PostCheckoutSessionsRequestPaymentMethodOptionsGrabpay {const PostCheckoutSessionsRequestPaymentMethodOptionsGrabpay({this.setupFutureUsage});

factory PostCheckoutSessionsRequestPaymentMethodOptionsGrabpay.fromJson(Map<String, dynamic> json) { return PostCheckoutSessionsRequestPaymentMethodOptionsGrabpay(
  setupFutureUsage: json['setup_future_usage'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsGrabpaySetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PostCheckoutSessionsRequestPaymentMethodOptionsGrabpaySetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'setup_future_usage'}.contains(key)); } 
PostCheckoutSessionsRequestPaymentMethodOptionsGrabpay copyWith({PostCheckoutSessionsRequestPaymentMethodOptionsGrabpaySetupFutureUsage Function()? setupFutureUsage}) { return PostCheckoutSessionsRequestPaymentMethodOptionsGrabpay(
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCheckoutSessionsRequestPaymentMethodOptionsGrabpay &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return setupFutureUsage.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsGrabpay(setupFutureUsage: $setupFutureUsage)'; } 
 }
