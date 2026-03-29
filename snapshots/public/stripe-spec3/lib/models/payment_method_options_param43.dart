// GENERATED CODE - DO NOT MODIFY BY HAND

final class PaymentMethodOptionsParam43PreferredLanguage {const PaymentMethodOptionsParam43PreferredLanguage._(this.value);

factory PaymentMethodOptionsParam43PreferredLanguage.fromJson(String json) { return switch (json) {
  'de' => de,
  'en' => en,
  'fr' => fr,
  'nl' => nl,
  _ => PaymentMethodOptionsParam43PreferredLanguage._(json),
}; }

static const PaymentMethodOptionsParam43PreferredLanguage de = PaymentMethodOptionsParam43PreferredLanguage._('de');

static const PaymentMethodOptionsParam43PreferredLanguage en = PaymentMethodOptionsParam43PreferredLanguage._('en');

static const PaymentMethodOptionsParam43PreferredLanguage fr = PaymentMethodOptionsParam43PreferredLanguage._('fr');

static const PaymentMethodOptionsParam43PreferredLanguage nl = PaymentMethodOptionsParam43PreferredLanguage._('nl');

static const List<PaymentMethodOptionsParam43PreferredLanguage> values = [de, en, fr, nl];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam43PreferredLanguage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam43PreferredLanguage($value)'; } 
 }
final class PaymentMethodOptionsParam43SetupFutureUsage {const PaymentMethodOptionsParam43SetupFutureUsage._(this.value);

factory PaymentMethodOptionsParam43SetupFutureUsage.fromJson(String json) { return switch (json) {
  '' => $empty,
  'none' => none,
  'off_session' => offSession,
  _ => PaymentMethodOptionsParam43SetupFutureUsage._(json),
}; }

static const PaymentMethodOptionsParam43SetupFutureUsage $empty = PaymentMethodOptionsParam43SetupFutureUsage._('');

static const PaymentMethodOptionsParam43SetupFutureUsage none = PaymentMethodOptionsParam43SetupFutureUsage._('none');

static const PaymentMethodOptionsParam43SetupFutureUsage offSession = PaymentMethodOptionsParam43SetupFutureUsage._('off_session');

static const List<PaymentMethodOptionsParam43SetupFutureUsage> values = [$empty, none, offSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam43SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam43SetupFutureUsage($value)'; } 
 }
final class PaymentMethodOptionsParam43 {const PaymentMethodOptionsParam43({this.preferredLanguage, this.setupFutureUsage, });

factory PaymentMethodOptionsParam43.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam43(
  preferredLanguage: json['preferred_language'] != null ? PaymentMethodOptionsParam43PreferredLanguage.fromJson(json['preferred_language'] as String) : null,
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentMethodOptionsParam43SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PaymentMethodOptionsParam43PreferredLanguage? preferredLanguage;

final PaymentMethodOptionsParam43SetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (preferredLanguage != null) 'preferred_language': preferredLanguage?.toJson(),
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'preferred_language', 'setup_future_usage'}.contains(key)); } 
PaymentMethodOptionsParam43 copyWith({PaymentMethodOptionsParam43PreferredLanguage Function()? preferredLanguage, PaymentMethodOptionsParam43SetupFutureUsage Function()? setupFutureUsage, }) { return PaymentMethodOptionsParam43(
  preferredLanguage: preferredLanguage != null ? preferredLanguage() : this.preferredLanguage,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam43 &&
          preferredLanguage == other.preferredLanguage &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return Object.hash(preferredLanguage, setupFutureUsage); } 
@override String toString() { return 'PaymentMethodOptionsParam43(preferredLanguage: $preferredLanguage, setupFutureUsage: $setupFutureUsage)'; } 
 }
