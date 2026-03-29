// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostCheckoutSessionsRequestPaymentMethodOptionsBoletoSetupFutureUsage {const PostCheckoutSessionsRequestPaymentMethodOptionsBoletoSetupFutureUsage._(this.value);

factory PostCheckoutSessionsRequestPaymentMethodOptionsBoletoSetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  'off_session' => offSession,
  'on_session' => onSession,
  _ => PostCheckoutSessionsRequestPaymentMethodOptionsBoletoSetupFutureUsage._(json),
}; }

static const PostCheckoutSessionsRequestPaymentMethodOptionsBoletoSetupFutureUsage none = PostCheckoutSessionsRequestPaymentMethodOptionsBoletoSetupFutureUsage._('none');

static const PostCheckoutSessionsRequestPaymentMethodOptionsBoletoSetupFutureUsage offSession = PostCheckoutSessionsRequestPaymentMethodOptionsBoletoSetupFutureUsage._('off_session');

static const PostCheckoutSessionsRequestPaymentMethodOptionsBoletoSetupFutureUsage onSession = PostCheckoutSessionsRequestPaymentMethodOptionsBoletoSetupFutureUsage._('on_session');

static const List<PostCheckoutSessionsRequestPaymentMethodOptionsBoletoSetupFutureUsage> values = [none, offSession, onSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsRequestPaymentMethodOptionsBoletoSetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsBoletoSetupFutureUsage($value)'; } 
 }
final class PostCheckoutSessionsRequestPaymentMethodOptionsBoleto {const PostCheckoutSessionsRequestPaymentMethodOptionsBoleto({this.expiresAfterDays, this.setupFutureUsage, });

factory PostCheckoutSessionsRequestPaymentMethodOptionsBoleto.fromJson(Map<String, dynamic> json) { return PostCheckoutSessionsRequestPaymentMethodOptionsBoleto(
  expiresAfterDays: json['expires_after_days'] != null ? (json['expires_after_days'] as num).toInt() : null,
  setupFutureUsage: json['setup_future_usage'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsBoletoSetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final int? expiresAfterDays;

final PostCheckoutSessionsRequestPaymentMethodOptionsBoletoSetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  'expires_after_days': ?expiresAfterDays,
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'expires_after_days', 'setup_future_usage'}.contains(key)); } 
PostCheckoutSessionsRequestPaymentMethodOptionsBoleto copyWith({int Function()? expiresAfterDays, PostCheckoutSessionsRequestPaymentMethodOptionsBoletoSetupFutureUsage Function()? setupFutureUsage, }) { return PostCheckoutSessionsRequestPaymentMethodOptionsBoleto(
  expiresAfterDays: expiresAfterDays != null ? expiresAfterDays() : this.expiresAfterDays,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCheckoutSessionsRequestPaymentMethodOptionsBoleto &&
          expiresAfterDays == other.expiresAfterDays &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return Object.hash(expiresAfterDays, setupFutureUsage); } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsBoleto(expiresAfterDays: $expiresAfterDays, setupFutureUsage: $setupFutureUsage)'; } 
 }
