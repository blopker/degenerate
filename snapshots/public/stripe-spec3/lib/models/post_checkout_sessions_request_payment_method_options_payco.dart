// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostCheckoutSessionsRequestPaymentMethodOptionsPaycoCaptureMethod {const PostCheckoutSessionsRequestPaymentMethodOptionsPaycoCaptureMethod._(this.value);

factory PostCheckoutSessionsRequestPaymentMethodOptionsPaycoCaptureMethod.fromJson(String json) { return switch (json) {
  'manual' => manual,
  _ => PostCheckoutSessionsRequestPaymentMethodOptionsPaycoCaptureMethod._(json),
}; }

static const PostCheckoutSessionsRequestPaymentMethodOptionsPaycoCaptureMethod manual = PostCheckoutSessionsRequestPaymentMethodOptionsPaycoCaptureMethod._('manual');

static const List<PostCheckoutSessionsRequestPaymentMethodOptionsPaycoCaptureMethod> values = [manual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsRequestPaymentMethodOptionsPaycoCaptureMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsPaycoCaptureMethod($value)'; } 
 }
final class PostCheckoutSessionsRequestPaymentMethodOptionsPayco {const PostCheckoutSessionsRequestPaymentMethodOptionsPayco({this.captureMethod});

factory PostCheckoutSessionsRequestPaymentMethodOptionsPayco.fromJson(Map<String, dynamic> json) { return PostCheckoutSessionsRequestPaymentMethodOptionsPayco(
  captureMethod: json['capture_method'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsPaycoCaptureMethod.fromJson(json['capture_method'] as String) : null,
); }

final PostCheckoutSessionsRequestPaymentMethodOptionsPaycoCaptureMethod? captureMethod;

Map<String, dynamic> toJson() { return {
  if (captureMethod != null) 'capture_method': captureMethod?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'capture_method'}.contains(key)); } 
PostCheckoutSessionsRequestPaymentMethodOptionsPayco copyWith({PostCheckoutSessionsRequestPaymentMethodOptionsPaycoCaptureMethod Function()? captureMethod}) { return PostCheckoutSessionsRequestPaymentMethodOptionsPayco(
  captureMethod: captureMethod != null ? captureMethod() : this.captureMethod,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCheckoutSessionsRequestPaymentMethodOptionsPayco &&
          captureMethod == other.captureMethod; } 
@override int get hashCode { return captureMethod.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsPayco(captureMethod: $captureMethod)'; } 
 }
