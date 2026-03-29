// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostCheckoutSessionsRequestPaymentMethodOptionsKakaoPayCaptureMethod {const PostCheckoutSessionsRequestPaymentMethodOptionsKakaoPayCaptureMethod._(this.value);

factory PostCheckoutSessionsRequestPaymentMethodOptionsKakaoPayCaptureMethod.fromJson(String json) { return switch (json) {
  'manual' => manual,
  _ => PostCheckoutSessionsRequestPaymentMethodOptionsKakaoPayCaptureMethod._(json),
}; }

static const PostCheckoutSessionsRequestPaymentMethodOptionsKakaoPayCaptureMethod manual = PostCheckoutSessionsRequestPaymentMethodOptionsKakaoPayCaptureMethod._('manual');

static const List<PostCheckoutSessionsRequestPaymentMethodOptionsKakaoPayCaptureMethod> values = [manual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsRequestPaymentMethodOptionsKakaoPayCaptureMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsKakaoPayCaptureMethod($value)'; } 
 }
final class PostCheckoutSessionsRequestPaymentMethodOptionsKakaoPaySetupFutureUsage {const PostCheckoutSessionsRequestPaymentMethodOptionsKakaoPaySetupFutureUsage._(this.value);

factory PostCheckoutSessionsRequestPaymentMethodOptionsKakaoPaySetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  'off_session' => offSession,
  _ => PostCheckoutSessionsRequestPaymentMethodOptionsKakaoPaySetupFutureUsage._(json),
}; }

static const PostCheckoutSessionsRequestPaymentMethodOptionsKakaoPaySetupFutureUsage none = PostCheckoutSessionsRequestPaymentMethodOptionsKakaoPaySetupFutureUsage._('none');

static const PostCheckoutSessionsRequestPaymentMethodOptionsKakaoPaySetupFutureUsage offSession = PostCheckoutSessionsRequestPaymentMethodOptionsKakaoPaySetupFutureUsage._('off_session');

static const List<PostCheckoutSessionsRequestPaymentMethodOptionsKakaoPaySetupFutureUsage> values = [none, offSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsRequestPaymentMethodOptionsKakaoPaySetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsKakaoPaySetupFutureUsage($value)'; } 
 }
final class PostCheckoutSessionsRequestPaymentMethodOptionsKakaoPay {const PostCheckoutSessionsRequestPaymentMethodOptionsKakaoPay({this.captureMethod, this.setupFutureUsage, });

factory PostCheckoutSessionsRequestPaymentMethodOptionsKakaoPay.fromJson(Map<String, dynamic> json) { return PostCheckoutSessionsRequestPaymentMethodOptionsKakaoPay(
  captureMethod: json['capture_method'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsKakaoPayCaptureMethod.fromJson(json['capture_method'] as String) : null,
  setupFutureUsage: json['setup_future_usage'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsKakaoPaySetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PostCheckoutSessionsRequestPaymentMethodOptionsKakaoPayCaptureMethod? captureMethod;

final PostCheckoutSessionsRequestPaymentMethodOptionsKakaoPaySetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (captureMethod != null) 'capture_method': captureMethod?.toJson(),
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostCheckoutSessionsRequestPaymentMethodOptionsKakaoPay copyWith({PostCheckoutSessionsRequestPaymentMethodOptionsKakaoPayCaptureMethod Function()? captureMethod, PostCheckoutSessionsRequestPaymentMethodOptionsKakaoPaySetupFutureUsage Function()? setupFutureUsage, }) { return PostCheckoutSessionsRequestPaymentMethodOptionsKakaoPay(
  captureMethod: captureMethod != null ? captureMethod() : this.captureMethod,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCheckoutSessionsRequestPaymentMethodOptionsKakaoPay &&
          captureMethod == other.captureMethod &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return Object.hash(captureMethod, setupFutureUsage); } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsKakaoPay(captureMethod: $captureMethod, setupFutureUsage: $setupFutureUsage)'; } 
 }
