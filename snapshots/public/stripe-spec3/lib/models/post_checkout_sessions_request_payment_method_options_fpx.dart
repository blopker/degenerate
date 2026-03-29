// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostCheckoutSessionsRequestPaymentMethodOptionsFpxSetupFutureUsage {const PostCheckoutSessionsRequestPaymentMethodOptionsFpxSetupFutureUsage._(this.value);

factory PostCheckoutSessionsRequestPaymentMethodOptionsFpxSetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  _ => PostCheckoutSessionsRequestPaymentMethodOptionsFpxSetupFutureUsage._(json),
}; }

static const PostCheckoutSessionsRequestPaymentMethodOptionsFpxSetupFutureUsage none = PostCheckoutSessionsRequestPaymentMethodOptionsFpxSetupFutureUsage._('none');

static const List<PostCheckoutSessionsRequestPaymentMethodOptionsFpxSetupFutureUsage> values = [none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsRequestPaymentMethodOptionsFpxSetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsFpxSetupFutureUsage($value)'; } 
 }
final class PostCheckoutSessionsRequestPaymentMethodOptionsFpx {const PostCheckoutSessionsRequestPaymentMethodOptionsFpx({this.setupFutureUsage});

factory PostCheckoutSessionsRequestPaymentMethodOptionsFpx.fromJson(Map<String, dynamic> json) { return PostCheckoutSessionsRequestPaymentMethodOptionsFpx(
  setupFutureUsage: json['setup_future_usage'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsFpxSetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PostCheckoutSessionsRequestPaymentMethodOptionsFpxSetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'setup_future_usage'}.contains(key)); } 
PostCheckoutSessionsRequestPaymentMethodOptionsFpx copyWith({PostCheckoutSessionsRequestPaymentMethodOptionsFpxSetupFutureUsage Function()? setupFutureUsage}) { return PostCheckoutSessionsRequestPaymentMethodOptionsFpx(
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCheckoutSessionsRequestPaymentMethodOptionsFpx &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return setupFutureUsage.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsFpx(setupFutureUsage: $setupFutureUsage)'; } 
 }
