// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostCheckoutSessionsRequestPaymentMethodOptionsAmazonPayCaptureMethod {const PostCheckoutSessionsRequestPaymentMethodOptionsAmazonPayCaptureMethod._(this.value);

factory PostCheckoutSessionsRequestPaymentMethodOptionsAmazonPayCaptureMethod.fromJson(String json) { return switch (json) {
  'manual' => manual,
  _ => PostCheckoutSessionsRequestPaymentMethodOptionsAmazonPayCaptureMethod._(json),
}; }

static const PostCheckoutSessionsRequestPaymentMethodOptionsAmazonPayCaptureMethod manual = PostCheckoutSessionsRequestPaymentMethodOptionsAmazonPayCaptureMethod._('manual');

static const List<PostCheckoutSessionsRequestPaymentMethodOptionsAmazonPayCaptureMethod> values = [manual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsRequestPaymentMethodOptionsAmazonPayCaptureMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsAmazonPayCaptureMethod($value)'; } 
 }
final class PostCheckoutSessionsRequestPaymentMethodOptionsAmazonPaySetupFutureUsage {const PostCheckoutSessionsRequestPaymentMethodOptionsAmazonPaySetupFutureUsage._(this.value);

factory PostCheckoutSessionsRequestPaymentMethodOptionsAmazonPaySetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  'off_session' => offSession,
  _ => PostCheckoutSessionsRequestPaymentMethodOptionsAmazonPaySetupFutureUsage._(json),
}; }

static const PostCheckoutSessionsRequestPaymentMethodOptionsAmazonPaySetupFutureUsage none = PostCheckoutSessionsRequestPaymentMethodOptionsAmazonPaySetupFutureUsage._('none');

static const PostCheckoutSessionsRequestPaymentMethodOptionsAmazonPaySetupFutureUsage offSession = PostCheckoutSessionsRequestPaymentMethodOptionsAmazonPaySetupFutureUsage._('off_session');

static const List<PostCheckoutSessionsRequestPaymentMethodOptionsAmazonPaySetupFutureUsage> values = [none, offSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsRequestPaymentMethodOptionsAmazonPaySetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsAmazonPaySetupFutureUsage($value)'; } 
 }
final class PostCheckoutSessionsRequestPaymentMethodOptionsAmazonPay {const PostCheckoutSessionsRequestPaymentMethodOptionsAmazonPay({this.captureMethod, this.setupFutureUsage, });

factory PostCheckoutSessionsRequestPaymentMethodOptionsAmazonPay.fromJson(Map<String, dynamic> json) { return PostCheckoutSessionsRequestPaymentMethodOptionsAmazonPay(
  captureMethod: json['capture_method'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsAmazonPayCaptureMethod.fromJson(json['capture_method'] as String) : null,
  setupFutureUsage: json['setup_future_usage'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsAmazonPaySetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PostCheckoutSessionsRequestPaymentMethodOptionsAmazonPayCaptureMethod? captureMethod;

final PostCheckoutSessionsRequestPaymentMethodOptionsAmazonPaySetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (captureMethod != null) 'capture_method': captureMethod?.toJson(),
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'capture_method', 'setup_future_usage'}.contains(key)); } 
PostCheckoutSessionsRequestPaymentMethodOptionsAmazonPay copyWith({PostCheckoutSessionsRequestPaymentMethodOptionsAmazonPayCaptureMethod Function()? captureMethod, PostCheckoutSessionsRequestPaymentMethodOptionsAmazonPaySetupFutureUsage Function()? setupFutureUsage, }) { return PostCheckoutSessionsRequestPaymentMethodOptionsAmazonPay(
  captureMethod: captureMethod != null ? captureMethod() : this.captureMethod,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCheckoutSessionsRequestPaymentMethodOptionsAmazonPay &&
          captureMethod == other.captureMethod &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return Object.hash(captureMethod, setupFutureUsage); } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsAmazonPay(captureMethod: $captureMethod, setupFutureUsage: $setupFutureUsage)'; } 
 }
