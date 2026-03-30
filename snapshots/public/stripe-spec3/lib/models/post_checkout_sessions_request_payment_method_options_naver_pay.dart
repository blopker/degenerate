// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostCheckoutSessionsRequestPaymentMethodOptionsNaverPayCaptureMethod {const PostCheckoutSessionsRequestPaymentMethodOptionsNaverPayCaptureMethod._(this.value);

factory PostCheckoutSessionsRequestPaymentMethodOptionsNaverPayCaptureMethod.fromJson(String json) { return switch (json) {
  'manual' => manual,
  _ => PostCheckoutSessionsRequestPaymentMethodOptionsNaverPayCaptureMethod._(json),
}; }

static const PostCheckoutSessionsRequestPaymentMethodOptionsNaverPayCaptureMethod manual = PostCheckoutSessionsRequestPaymentMethodOptionsNaverPayCaptureMethod._('manual');

static const List<PostCheckoutSessionsRequestPaymentMethodOptionsNaverPayCaptureMethod> values = [manual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsRequestPaymentMethodOptionsNaverPayCaptureMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsNaverPayCaptureMethod($value)'; } 
 }
final class PostCheckoutSessionsRequestPaymentMethodOptionsNaverPaySetupFutureUsage {const PostCheckoutSessionsRequestPaymentMethodOptionsNaverPaySetupFutureUsage._(this.value);

factory PostCheckoutSessionsRequestPaymentMethodOptionsNaverPaySetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  'off_session' => offSession,
  _ => PostCheckoutSessionsRequestPaymentMethodOptionsNaverPaySetupFutureUsage._(json),
}; }

static const PostCheckoutSessionsRequestPaymentMethodOptionsNaverPaySetupFutureUsage none = PostCheckoutSessionsRequestPaymentMethodOptionsNaverPaySetupFutureUsage._('none');

static const PostCheckoutSessionsRequestPaymentMethodOptionsNaverPaySetupFutureUsage offSession = PostCheckoutSessionsRequestPaymentMethodOptionsNaverPaySetupFutureUsage._('off_session');

static const List<PostCheckoutSessionsRequestPaymentMethodOptionsNaverPaySetupFutureUsage> values = [none, offSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsRequestPaymentMethodOptionsNaverPaySetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsNaverPaySetupFutureUsage($value)'; } 
 }
final class PostCheckoutSessionsRequestPaymentMethodOptionsNaverPay {const PostCheckoutSessionsRequestPaymentMethodOptionsNaverPay({this.captureMethod, this.setupFutureUsage, });

factory PostCheckoutSessionsRequestPaymentMethodOptionsNaverPay.fromJson(Map<String, dynamic> json) { return PostCheckoutSessionsRequestPaymentMethodOptionsNaverPay(
  captureMethod: json['capture_method'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsNaverPayCaptureMethod.fromJson(json['capture_method'] as String) : null,
  setupFutureUsage: json['setup_future_usage'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsNaverPaySetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PostCheckoutSessionsRequestPaymentMethodOptionsNaverPayCaptureMethod? captureMethod;

final PostCheckoutSessionsRequestPaymentMethodOptionsNaverPaySetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (captureMethod != null) 'capture_method': captureMethod?.toJson(),
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'capture_method', 'setup_future_usage'}.contains(key)); } 
PostCheckoutSessionsRequestPaymentMethodOptionsNaverPay copyWith({PostCheckoutSessionsRequestPaymentMethodOptionsNaverPayCaptureMethod Function()? captureMethod, PostCheckoutSessionsRequestPaymentMethodOptionsNaverPaySetupFutureUsage Function()? setupFutureUsage, }) { return PostCheckoutSessionsRequestPaymentMethodOptionsNaverPay(
  captureMethod: captureMethod != null ? captureMethod() : this.captureMethod,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCheckoutSessionsRequestPaymentMethodOptionsNaverPay &&
          captureMethod == other.captureMethod &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return Object.hash(captureMethod, setupFutureUsage); } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsNaverPay(captureMethod: $captureMethod, setupFutureUsage: $setupFutureUsage)'; } 
 }
