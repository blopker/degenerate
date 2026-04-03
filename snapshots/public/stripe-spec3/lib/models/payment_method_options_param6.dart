// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentMethodOptionsParam6PreferredLanguage {const PaymentMethodOptionsParam6PreferredLanguage._(this.value);

factory PaymentMethodOptionsParam6PreferredLanguage.fromJson(String json) { return switch (json) {
  'de' => de,
  'en' => en,
  'fr' => fr,
  'nl' => nl,
  _ => PaymentMethodOptionsParam6PreferredLanguage._(json),
}; }

static const PaymentMethodOptionsParam6PreferredLanguage de = PaymentMethodOptionsParam6PreferredLanguage._('de');

static const PaymentMethodOptionsParam6PreferredLanguage en = PaymentMethodOptionsParam6PreferredLanguage._('en');

static const PaymentMethodOptionsParam6PreferredLanguage fr = PaymentMethodOptionsParam6PreferredLanguage._('fr');

static const PaymentMethodOptionsParam6PreferredLanguage nl = PaymentMethodOptionsParam6PreferredLanguage._('nl');

static const List<PaymentMethodOptionsParam6PreferredLanguage> values = [de, en, fr, nl];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam6PreferredLanguage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam6PreferredLanguage($value)'; } 
 }
@immutable final class PaymentMethodOptionsParam6SetupFutureUsage {const PaymentMethodOptionsParam6SetupFutureUsage._(this.value);

factory PaymentMethodOptionsParam6SetupFutureUsage.fromJson(String json) { return switch (json) {
  '' => $empty,
  'none' => none,
  'off_session' => offSession,
  _ => PaymentMethodOptionsParam6SetupFutureUsage._(json),
}; }

static const PaymentMethodOptionsParam6SetupFutureUsage $empty = PaymentMethodOptionsParam6SetupFutureUsage._('');

static const PaymentMethodOptionsParam6SetupFutureUsage none = PaymentMethodOptionsParam6SetupFutureUsage._('none');

static const PaymentMethodOptionsParam6SetupFutureUsage offSession = PaymentMethodOptionsParam6SetupFutureUsage._('off_session');

static const List<PaymentMethodOptionsParam6SetupFutureUsage> values = [$empty, none, offSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam6SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam6SetupFutureUsage($value)'; } 
 }
@immutable final class PaymentMethodOptionsParam6 {const PaymentMethodOptionsParam6({this.preferredLanguage, this.setupFutureUsage, });

factory PaymentMethodOptionsParam6.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam6(
  preferredLanguage: json['preferred_language'] != null ? PaymentMethodOptionsParam6PreferredLanguage.fromJson(json['preferred_language'] as String) : null,
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentMethodOptionsParam6SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PaymentMethodOptionsParam6PreferredLanguage? preferredLanguage;

final PaymentMethodOptionsParam6SetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (preferredLanguage != null) 'preferred_language': preferredLanguage?.toJson(),
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'preferred_language', 'setup_future_usage'}.contains(key)); } 
PaymentMethodOptionsParam6 copyWith({PaymentMethodOptionsParam6PreferredLanguage Function()? preferredLanguage, PaymentMethodOptionsParam6SetupFutureUsage Function()? setupFutureUsage, }) { return PaymentMethodOptionsParam6(
  preferredLanguage: preferredLanguage != null ? preferredLanguage() : this.preferredLanguage,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam6 &&
          preferredLanguage == other.preferredLanguage &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return Object.hash(preferredLanguage, setupFutureUsage); } 
@override String toString() { return 'PaymentMethodOptionsParam6(preferredLanguage: $preferredLanguage, setupFutureUsage: $setupFutureUsage)'; } 
 }
