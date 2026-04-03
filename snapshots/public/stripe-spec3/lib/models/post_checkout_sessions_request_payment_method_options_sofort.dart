// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCheckoutSessionsRequestPaymentMethodOptionsSofortSetupFutureUsage {const PostCheckoutSessionsRequestPaymentMethodOptionsSofortSetupFutureUsage._(this.value);

factory PostCheckoutSessionsRequestPaymentMethodOptionsSofortSetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  _ => PostCheckoutSessionsRequestPaymentMethodOptionsSofortSetupFutureUsage._(json),
}; }

static const PostCheckoutSessionsRequestPaymentMethodOptionsSofortSetupFutureUsage none = PostCheckoutSessionsRequestPaymentMethodOptionsSofortSetupFutureUsage._('none');

static const List<PostCheckoutSessionsRequestPaymentMethodOptionsSofortSetupFutureUsage> values = [none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsRequestPaymentMethodOptionsSofortSetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsSofortSetupFutureUsage($value)'; } 
 }
@immutable final class PostCheckoutSessionsRequestPaymentMethodOptionsSofort {const PostCheckoutSessionsRequestPaymentMethodOptionsSofort({this.setupFutureUsage});

factory PostCheckoutSessionsRequestPaymentMethodOptionsSofort.fromJson(Map<String, dynamic> json) { return PostCheckoutSessionsRequestPaymentMethodOptionsSofort(
  setupFutureUsage: json['setup_future_usage'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsSofortSetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PostCheckoutSessionsRequestPaymentMethodOptionsSofortSetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'setup_future_usage'}.contains(key)); } 
PostCheckoutSessionsRequestPaymentMethodOptionsSofort copyWith({PostCheckoutSessionsRequestPaymentMethodOptionsSofortSetupFutureUsage Function()? setupFutureUsage}) { return PostCheckoutSessionsRequestPaymentMethodOptionsSofort(
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCheckoutSessionsRequestPaymentMethodOptionsSofort &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return setupFutureUsage.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsSofort(setupFutureUsage: $setupFutureUsage)'; } 
 }
