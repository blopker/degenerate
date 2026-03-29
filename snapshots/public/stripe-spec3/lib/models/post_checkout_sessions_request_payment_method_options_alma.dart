// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostCheckoutSessionsRequestPaymentMethodOptionsAlmaCaptureMethod {const PostCheckoutSessionsRequestPaymentMethodOptionsAlmaCaptureMethod._(this.value);

factory PostCheckoutSessionsRequestPaymentMethodOptionsAlmaCaptureMethod.fromJson(String json) { return switch (json) {
  'manual' => manual,
  _ => PostCheckoutSessionsRequestPaymentMethodOptionsAlmaCaptureMethod._(json),
}; }

static const PostCheckoutSessionsRequestPaymentMethodOptionsAlmaCaptureMethod manual = PostCheckoutSessionsRequestPaymentMethodOptionsAlmaCaptureMethod._('manual');

static const List<PostCheckoutSessionsRequestPaymentMethodOptionsAlmaCaptureMethod> values = [manual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsRequestPaymentMethodOptionsAlmaCaptureMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsAlmaCaptureMethod($value)'; } 
 }
final class PostCheckoutSessionsRequestPaymentMethodOptionsAlma {const PostCheckoutSessionsRequestPaymentMethodOptionsAlma({this.captureMethod});

factory PostCheckoutSessionsRequestPaymentMethodOptionsAlma.fromJson(Map<String, dynamic> json) { return PostCheckoutSessionsRequestPaymentMethodOptionsAlma(
  captureMethod: json['capture_method'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsAlmaCaptureMethod.fromJson(json['capture_method'] as String) : null,
); }

final PostCheckoutSessionsRequestPaymentMethodOptionsAlmaCaptureMethod? captureMethod;

Map<String, dynamic> toJson() { return {
  if (captureMethod != null) 'capture_method': captureMethod?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostCheckoutSessionsRequestPaymentMethodOptionsAlma copyWith({PostCheckoutSessionsRequestPaymentMethodOptionsAlmaCaptureMethod Function()? captureMethod}) { return PostCheckoutSessionsRequestPaymentMethodOptionsAlma(
  captureMethod: captureMethod != null ? captureMethod() : this.captureMethod,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCheckoutSessionsRequestPaymentMethodOptionsAlma &&
          captureMethod == other.captureMethod; } 
@override int get hashCode { return captureMethod.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsAlma(captureMethod: $captureMethod)'; } 
 }
