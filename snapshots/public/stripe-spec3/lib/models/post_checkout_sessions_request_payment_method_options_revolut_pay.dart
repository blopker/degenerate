// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostCheckoutSessionsRequestPaymentMethodOptionsRevolutPayCaptureMethod {const PostCheckoutSessionsRequestPaymentMethodOptionsRevolutPayCaptureMethod._(this.value);

factory PostCheckoutSessionsRequestPaymentMethodOptionsRevolutPayCaptureMethod.fromJson(String json) { return switch (json) {
  'manual' => manual,
  _ => PostCheckoutSessionsRequestPaymentMethodOptionsRevolutPayCaptureMethod._(json),
}; }

static const PostCheckoutSessionsRequestPaymentMethodOptionsRevolutPayCaptureMethod manual = PostCheckoutSessionsRequestPaymentMethodOptionsRevolutPayCaptureMethod._('manual');

static const List<PostCheckoutSessionsRequestPaymentMethodOptionsRevolutPayCaptureMethod> values = [manual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsRequestPaymentMethodOptionsRevolutPayCaptureMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsRevolutPayCaptureMethod($value)'; } 
 }
final class PostCheckoutSessionsRequestPaymentMethodOptionsRevolutPaySetupFutureUsage {const PostCheckoutSessionsRequestPaymentMethodOptionsRevolutPaySetupFutureUsage._(this.value);

factory PostCheckoutSessionsRequestPaymentMethodOptionsRevolutPaySetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  'off_session' => offSession,
  _ => PostCheckoutSessionsRequestPaymentMethodOptionsRevolutPaySetupFutureUsage._(json),
}; }

static const PostCheckoutSessionsRequestPaymentMethodOptionsRevolutPaySetupFutureUsage none = PostCheckoutSessionsRequestPaymentMethodOptionsRevolutPaySetupFutureUsage._('none');

static const PostCheckoutSessionsRequestPaymentMethodOptionsRevolutPaySetupFutureUsage offSession = PostCheckoutSessionsRequestPaymentMethodOptionsRevolutPaySetupFutureUsage._('off_session');

static const List<PostCheckoutSessionsRequestPaymentMethodOptionsRevolutPaySetupFutureUsage> values = [none, offSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsRequestPaymentMethodOptionsRevolutPaySetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsRevolutPaySetupFutureUsage($value)'; } 
 }
final class PostCheckoutSessionsRequestPaymentMethodOptionsRevolutPay {const PostCheckoutSessionsRequestPaymentMethodOptionsRevolutPay({this.captureMethod, this.setupFutureUsage, });

factory PostCheckoutSessionsRequestPaymentMethodOptionsRevolutPay.fromJson(Map<String, dynamic> json) { return PostCheckoutSessionsRequestPaymentMethodOptionsRevolutPay(
  captureMethod: json['capture_method'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsRevolutPayCaptureMethod.fromJson(json['capture_method'] as String) : null,
  setupFutureUsage: json['setup_future_usage'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsRevolutPaySetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PostCheckoutSessionsRequestPaymentMethodOptionsRevolutPayCaptureMethod? captureMethod;

final PostCheckoutSessionsRequestPaymentMethodOptionsRevolutPaySetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (captureMethod != null) 'capture_method': captureMethod?.toJson(),
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostCheckoutSessionsRequestPaymentMethodOptionsRevolutPay copyWith({PostCheckoutSessionsRequestPaymentMethodOptionsRevolutPayCaptureMethod Function()? captureMethod, PostCheckoutSessionsRequestPaymentMethodOptionsRevolutPaySetupFutureUsage Function()? setupFutureUsage, }) { return PostCheckoutSessionsRequestPaymentMethodOptionsRevolutPay(
  captureMethod: captureMethod != null ? captureMethod() : this.captureMethod,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCheckoutSessionsRequestPaymentMethodOptionsRevolutPay &&
          captureMethod == other.captureMethod &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return Object.hash(captureMethod, setupFutureUsage); } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsRevolutPay(captureMethod: $captureMethod, setupFutureUsage: $setupFutureUsage)'; } 
 }
