// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param91_on_demand.dart';import 'payment_method_options_param91_subscriptions.dart';import 'payment_method_options_param91_subscriptions_variant1.dart';final class PaymentMethodOptionsParam91CaptureMethod {const PaymentMethodOptionsParam91CaptureMethod._(this.value);

factory PaymentMethodOptionsParam91CaptureMethod.fromJson(String json) { return switch (json) {
  '' => $empty,
  'manual' => manual,
  _ => PaymentMethodOptionsParam91CaptureMethod._(json),
}; }

static const PaymentMethodOptionsParam91CaptureMethod $empty = PaymentMethodOptionsParam91CaptureMethod._('');

static const PaymentMethodOptionsParam91CaptureMethod manual = PaymentMethodOptionsParam91CaptureMethod._('manual');

static const List<PaymentMethodOptionsParam91CaptureMethod> values = [$empty, manual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam91CaptureMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam91CaptureMethod($value)'; } 
 }
final class PaymentMethodOptionsParam91PreferredLocale {const PaymentMethodOptionsParam91PreferredLocale._(this.value);

factory PaymentMethodOptionsParam91PreferredLocale.fromJson(String json) { return switch (json) {
  'cs-CZ' => csCz,
  'da-DK' => daDk,
  'de-AT' => deAt,
  'de-CH' => deCh,
  'de-DE' => deDe,
  'el-GR' => elGr,
  'en-AT' => enAt,
  'en-AU' => enAu,
  'en-BE' => enBe,
  'en-CA' => enCa,
  'en-CH' => enCh,
  'en-CZ' => enCz,
  'en-DE' => enDe,
  'en-DK' => enDk,
  'en-ES' => enEs,
  'en-FI' => enFi,
  'en-FR' => enFr,
  'en-GB' => enGb,
  'en-GR' => enGr,
  'en-IE' => enIe,
  'en-IT' => enIt,
  'en-NL' => enNl,
  'en-NO' => enNo,
  'en-NZ' => enNz,
  'en-PL' => enPl,
  'en-PT' => enPt,
  'en-RO' => enRo,
  'en-SE' => enSe,
  'en-US' => enUs,
  'es-ES' => esEs,
  'es-US' => esUs,
  'fi-FI' => fiFi,
  'fr-BE' => frBe,
  'fr-CA' => frCa,
  'fr-CH' => frCh,
  'fr-FR' => frFr,
  'it-CH' => itCh,
  'it-IT' => itIt,
  'nb-NO' => nbNo,
  'nl-BE' => nlBe,
  'nl-NL' => nlNl,
  'pl-PL' => plPl,
  'pt-PT' => ptPt,
  'ro-RO' => roRo,
  'sv-FI' => svFi,
  'sv-SE' => svSe,
  _ => PaymentMethodOptionsParam91PreferredLocale._(json),
}; }

static const PaymentMethodOptionsParam91PreferredLocale csCz = PaymentMethodOptionsParam91PreferredLocale._('cs-CZ');

static const PaymentMethodOptionsParam91PreferredLocale daDk = PaymentMethodOptionsParam91PreferredLocale._('da-DK');

static const PaymentMethodOptionsParam91PreferredLocale deAt = PaymentMethodOptionsParam91PreferredLocale._('de-AT');

static const PaymentMethodOptionsParam91PreferredLocale deCh = PaymentMethodOptionsParam91PreferredLocale._('de-CH');

static const PaymentMethodOptionsParam91PreferredLocale deDe = PaymentMethodOptionsParam91PreferredLocale._('de-DE');

static const PaymentMethodOptionsParam91PreferredLocale elGr = PaymentMethodOptionsParam91PreferredLocale._('el-GR');

static const PaymentMethodOptionsParam91PreferredLocale enAt = PaymentMethodOptionsParam91PreferredLocale._('en-AT');

static const PaymentMethodOptionsParam91PreferredLocale enAu = PaymentMethodOptionsParam91PreferredLocale._('en-AU');

static const PaymentMethodOptionsParam91PreferredLocale enBe = PaymentMethodOptionsParam91PreferredLocale._('en-BE');

static const PaymentMethodOptionsParam91PreferredLocale enCa = PaymentMethodOptionsParam91PreferredLocale._('en-CA');

static const PaymentMethodOptionsParam91PreferredLocale enCh = PaymentMethodOptionsParam91PreferredLocale._('en-CH');

static const PaymentMethodOptionsParam91PreferredLocale enCz = PaymentMethodOptionsParam91PreferredLocale._('en-CZ');

static const PaymentMethodOptionsParam91PreferredLocale enDe = PaymentMethodOptionsParam91PreferredLocale._('en-DE');

static const PaymentMethodOptionsParam91PreferredLocale enDk = PaymentMethodOptionsParam91PreferredLocale._('en-DK');

static const PaymentMethodOptionsParam91PreferredLocale enEs = PaymentMethodOptionsParam91PreferredLocale._('en-ES');

static const PaymentMethodOptionsParam91PreferredLocale enFi = PaymentMethodOptionsParam91PreferredLocale._('en-FI');

static const PaymentMethodOptionsParam91PreferredLocale enFr = PaymentMethodOptionsParam91PreferredLocale._('en-FR');

static const PaymentMethodOptionsParam91PreferredLocale enGb = PaymentMethodOptionsParam91PreferredLocale._('en-GB');

static const PaymentMethodOptionsParam91PreferredLocale enGr = PaymentMethodOptionsParam91PreferredLocale._('en-GR');

static const PaymentMethodOptionsParam91PreferredLocale enIe = PaymentMethodOptionsParam91PreferredLocale._('en-IE');

static const PaymentMethodOptionsParam91PreferredLocale enIt = PaymentMethodOptionsParam91PreferredLocale._('en-IT');

static const PaymentMethodOptionsParam91PreferredLocale enNl = PaymentMethodOptionsParam91PreferredLocale._('en-NL');

static const PaymentMethodOptionsParam91PreferredLocale enNo = PaymentMethodOptionsParam91PreferredLocale._('en-NO');

static const PaymentMethodOptionsParam91PreferredLocale enNz = PaymentMethodOptionsParam91PreferredLocale._('en-NZ');

static const PaymentMethodOptionsParam91PreferredLocale enPl = PaymentMethodOptionsParam91PreferredLocale._('en-PL');

static const PaymentMethodOptionsParam91PreferredLocale enPt = PaymentMethodOptionsParam91PreferredLocale._('en-PT');

static const PaymentMethodOptionsParam91PreferredLocale enRo = PaymentMethodOptionsParam91PreferredLocale._('en-RO');

static const PaymentMethodOptionsParam91PreferredLocale enSe = PaymentMethodOptionsParam91PreferredLocale._('en-SE');

static const PaymentMethodOptionsParam91PreferredLocale enUs = PaymentMethodOptionsParam91PreferredLocale._('en-US');

static const PaymentMethodOptionsParam91PreferredLocale esEs = PaymentMethodOptionsParam91PreferredLocale._('es-ES');

static const PaymentMethodOptionsParam91PreferredLocale esUs = PaymentMethodOptionsParam91PreferredLocale._('es-US');

static const PaymentMethodOptionsParam91PreferredLocale fiFi = PaymentMethodOptionsParam91PreferredLocale._('fi-FI');

static const PaymentMethodOptionsParam91PreferredLocale frBe = PaymentMethodOptionsParam91PreferredLocale._('fr-BE');

static const PaymentMethodOptionsParam91PreferredLocale frCa = PaymentMethodOptionsParam91PreferredLocale._('fr-CA');

static const PaymentMethodOptionsParam91PreferredLocale frCh = PaymentMethodOptionsParam91PreferredLocale._('fr-CH');

static const PaymentMethodOptionsParam91PreferredLocale frFr = PaymentMethodOptionsParam91PreferredLocale._('fr-FR');

static const PaymentMethodOptionsParam91PreferredLocale itCh = PaymentMethodOptionsParam91PreferredLocale._('it-CH');

static const PaymentMethodOptionsParam91PreferredLocale itIt = PaymentMethodOptionsParam91PreferredLocale._('it-IT');

static const PaymentMethodOptionsParam91PreferredLocale nbNo = PaymentMethodOptionsParam91PreferredLocale._('nb-NO');

static const PaymentMethodOptionsParam91PreferredLocale nlBe = PaymentMethodOptionsParam91PreferredLocale._('nl-BE');

static const PaymentMethodOptionsParam91PreferredLocale nlNl = PaymentMethodOptionsParam91PreferredLocale._('nl-NL');

static const PaymentMethodOptionsParam91PreferredLocale plPl = PaymentMethodOptionsParam91PreferredLocale._('pl-PL');

static const PaymentMethodOptionsParam91PreferredLocale ptPt = PaymentMethodOptionsParam91PreferredLocale._('pt-PT');

static const PaymentMethodOptionsParam91PreferredLocale roRo = PaymentMethodOptionsParam91PreferredLocale._('ro-RO');

static const PaymentMethodOptionsParam91PreferredLocale svFi = PaymentMethodOptionsParam91PreferredLocale._('sv-FI');

static const PaymentMethodOptionsParam91PreferredLocale svSe = PaymentMethodOptionsParam91PreferredLocale._('sv-SE');

static const List<PaymentMethodOptionsParam91PreferredLocale> values = [csCz, daDk, deAt, deCh, deDe, elGr, enAt, enAu, enBe, enCa, enCh, enCz, enDe, enDk, enEs, enFi, enFr, enGb, enGr, enIe, enIt, enNl, enNo, enNz, enPl, enPt, enRo, enSe, enUs, esEs, esUs, fiFi, frBe, frCa, frCh, frFr, itCh, itIt, nbNo, nlBe, nlNl, plPl, ptPt, roRo, svFi, svSe];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam91PreferredLocale && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam91PreferredLocale($value)'; } 
 }
final class PaymentMethodOptionsParam91SetupFutureUsage {const PaymentMethodOptionsParam91SetupFutureUsage._(this.value);

factory PaymentMethodOptionsParam91SetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  'off_session' => offSession,
  'on_session' => onSession,
  _ => PaymentMethodOptionsParam91SetupFutureUsage._(json),
}; }

static const PaymentMethodOptionsParam91SetupFutureUsage none = PaymentMethodOptionsParam91SetupFutureUsage._('none');

static const PaymentMethodOptionsParam91SetupFutureUsage offSession = PaymentMethodOptionsParam91SetupFutureUsage._('off_session');

static const PaymentMethodOptionsParam91SetupFutureUsage onSession = PaymentMethodOptionsParam91SetupFutureUsage._('on_session');

static const List<PaymentMethodOptionsParam91SetupFutureUsage> values = [none, offSession, onSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam91SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam91SetupFutureUsage($value)'; } 
 }
final class PaymentMethodOptionsParam91 {const PaymentMethodOptionsParam91({this.captureMethod, this.onDemand, this.preferredLocale, this.setupFutureUsage, this.subscriptions, });

factory PaymentMethodOptionsParam91.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam91(
  captureMethod: json['capture_method'] != null ? PaymentMethodOptionsParam91CaptureMethod.fromJson(json['capture_method'] as String) : null,
  onDemand: json['on_demand'] != null ? PaymentMethodOptionsParam91OnDemand.fromJson(json['on_demand'] as Map<String, dynamic>) : null,
  preferredLocale: json['preferred_locale'] != null ? PaymentMethodOptionsParam91PreferredLocale.fromJson(json['preferred_locale'] as String) : null,
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentMethodOptionsParam91SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
  subscriptions: json['subscriptions'] != null ? OneOf2.parse(json['subscriptions'], fromA: (v) => (v as List<dynamic>).map((e) => PaymentMethodOptionsParam91SubscriptionsVariant1.fromJson(e as Map<String, dynamic>)).toList(), fromB: (v) => PaymentMethodOptionsParam91SubscriptionsVariant2.fromJson(v as String),) : null,
); }

final PaymentMethodOptionsParam91CaptureMethod? captureMethod;

final PaymentMethodOptionsParam91OnDemand? onDemand;

final PaymentMethodOptionsParam91PreferredLocale? preferredLocale;

final PaymentMethodOptionsParam91SetupFutureUsage? setupFutureUsage;

final PaymentMethodOptionsParam91Subscriptions? subscriptions;

Map<String, dynamic> toJson() { return {
  if (captureMethod != null) 'capture_method': captureMethod?.toJson(),
  if (onDemand != null) 'on_demand': onDemand?.toJson(),
  if (preferredLocale != null) 'preferred_locale': preferredLocale?.toJson(),
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
  if (subscriptions != null) 'subscriptions': subscriptions?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PaymentMethodOptionsParam91 copyWith({PaymentMethodOptionsParam91CaptureMethod Function()? captureMethod, PaymentMethodOptionsParam91OnDemand Function()? onDemand, PaymentMethodOptionsParam91PreferredLocale Function()? preferredLocale, PaymentMethodOptionsParam91SetupFutureUsage Function()? setupFutureUsage, PaymentMethodOptionsParam91Subscriptions Function()? subscriptions, }) { return PaymentMethodOptionsParam91(
  captureMethod: captureMethod != null ? captureMethod() : this.captureMethod,
  onDemand: onDemand != null ? onDemand() : this.onDemand,
  preferredLocale: preferredLocale != null ? preferredLocale() : this.preferredLocale,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
  subscriptions: subscriptions != null ? subscriptions() : this.subscriptions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam91 &&
          captureMethod == other.captureMethod &&
          onDemand == other.onDemand &&
          preferredLocale == other.preferredLocale &&
          setupFutureUsage == other.setupFutureUsage &&
          subscriptions == other.subscriptions; } 
@override int get hashCode { return Object.hash(captureMethod, onDemand, preferredLocale, setupFutureUsage, subscriptions); } 
@override String toString() { return 'PaymentMethodOptionsParam91(captureMethod: $captureMethod, onDemand: $onDemand, preferredLocale: $preferredLocale, setupFutureUsage: $setupFutureUsage, subscriptions: $subscriptions)'; } 
 }
