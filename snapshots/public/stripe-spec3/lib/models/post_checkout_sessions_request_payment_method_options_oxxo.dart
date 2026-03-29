// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostCheckoutSessionsRequestPaymentMethodOptionsOxxoSetupFutureUsage {const PostCheckoutSessionsRequestPaymentMethodOptionsOxxoSetupFutureUsage._(this.value);

factory PostCheckoutSessionsRequestPaymentMethodOptionsOxxoSetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  _ => PostCheckoutSessionsRequestPaymentMethodOptionsOxxoSetupFutureUsage._(json),
}; }

static const PostCheckoutSessionsRequestPaymentMethodOptionsOxxoSetupFutureUsage none = PostCheckoutSessionsRequestPaymentMethodOptionsOxxoSetupFutureUsage._('none');

static const List<PostCheckoutSessionsRequestPaymentMethodOptionsOxxoSetupFutureUsage> values = [none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsRequestPaymentMethodOptionsOxxoSetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsOxxoSetupFutureUsage($value)'; } 
 }
final class PostCheckoutSessionsRequestPaymentMethodOptionsOxxo {const PostCheckoutSessionsRequestPaymentMethodOptionsOxxo({this.expiresAfterDays, this.setupFutureUsage, });

factory PostCheckoutSessionsRequestPaymentMethodOptionsOxxo.fromJson(Map<String, dynamic> json) { return PostCheckoutSessionsRequestPaymentMethodOptionsOxxo(
  expiresAfterDays: json['expires_after_days'] != null ? (json['expires_after_days'] as num).toInt() : null,
  setupFutureUsage: json['setup_future_usage'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsOxxoSetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final int? expiresAfterDays;

final PostCheckoutSessionsRequestPaymentMethodOptionsOxxoSetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  'expires_after_days': ?expiresAfterDays,
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'expires_after_days', 'setup_future_usage'}.contains(key)); } 
PostCheckoutSessionsRequestPaymentMethodOptionsOxxo copyWith({int Function()? expiresAfterDays, PostCheckoutSessionsRequestPaymentMethodOptionsOxxoSetupFutureUsage Function()? setupFutureUsage, }) { return PostCheckoutSessionsRequestPaymentMethodOptionsOxxo(
  expiresAfterDays: expiresAfterDays != null ? expiresAfterDays() : this.expiresAfterDays,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCheckoutSessionsRequestPaymentMethodOptionsOxxo &&
          expiresAfterDays == other.expiresAfterDays &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return Object.hash(expiresAfterDays, setupFutureUsage); } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsOxxo(expiresAfterDays: $expiresAfterDays, setupFutureUsage: $setupFutureUsage)'; } 
 }
