// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostCheckoutSessionsRequestPaymentMethodOptionsGiropaySetupFutureUsage {const PostCheckoutSessionsRequestPaymentMethodOptionsGiropaySetupFutureUsage._(this.value);

factory PostCheckoutSessionsRequestPaymentMethodOptionsGiropaySetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  _ => PostCheckoutSessionsRequestPaymentMethodOptionsGiropaySetupFutureUsage._(json),
}; }

static const PostCheckoutSessionsRequestPaymentMethodOptionsGiropaySetupFutureUsage none = PostCheckoutSessionsRequestPaymentMethodOptionsGiropaySetupFutureUsage._('none');

static const List<PostCheckoutSessionsRequestPaymentMethodOptionsGiropaySetupFutureUsage> values = [none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsRequestPaymentMethodOptionsGiropaySetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsGiropaySetupFutureUsage($value)'; } 
 }
final class PostCheckoutSessionsRequestPaymentMethodOptionsGiropay {const PostCheckoutSessionsRequestPaymentMethodOptionsGiropay({this.setupFutureUsage});

factory PostCheckoutSessionsRequestPaymentMethodOptionsGiropay.fromJson(Map<String, dynamic> json) { return PostCheckoutSessionsRequestPaymentMethodOptionsGiropay(
  setupFutureUsage: json['setup_future_usage'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsGiropaySetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PostCheckoutSessionsRequestPaymentMethodOptionsGiropaySetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'setup_future_usage'}.contains(key)); } 
PostCheckoutSessionsRequestPaymentMethodOptionsGiropay copyWith({PostCheckoutSessionsRequestPaymentMethodOptionsGiropaySetupFutureUsage Function()? setupFutureUsage}) { return PostCheckoutSessionsRequestPaymentMethodOptionsGiropay(
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCheckoutSessionsRequestPaymentMethodOptionsGiropay &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return setupFutureUsage.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsGiropay(setupFutureUsage: $setupFutureUsage)'; } 
 }
