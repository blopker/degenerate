// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentMethodOptionsParam65CaptureMethod {const PaymentMethodOptionsParam65CaptureMethod._(this.value);

factory PaymentMethodOptionsParam65CaptureMethod.fromJson(String json) { return switch (json) {
  '' => $empty,
  'manual' => manual,
  _ => PaymentMethodOptionsParam65CaptureMethod._(json),
}; }

static const PaymentMethodOptionsParam65CaptureMethod $empty = PaymentMethodOptionsParam65CaptureMethod._('');

static const PaymentMethodOptionsParam65CaptureMethod manual = PaymentMethodOptionsParam65CaptureMethod._('manual');

static const List<PaymentMethodOptionsParam65CaptureMethod> values = [$empty, manual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam65CaptureMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam65CaptureMethod($value)'; } 
 }
@immutable final class PaymentMethodOptionsParam65PreferredLocale {const PaymentMethodOptionsParam65PreferredLocale._(this.value);

factory PaymentMethodOptionsParam65PreferredLocale.fromJson(String json) { return switch (json) {
  'cs-CZ' => csCz,
  'da-DK' => daDk,
  'de-AT' => deAt,
  'de-DE' => deDe,
  'de-LU' => deLu,
  'el-GR' => elGr,
  'en-GB' => enGb,
  'en-US' => enUs,
  'es-ES' => esEs,
  'fi-FI' => fiFi,
  'fr-BE' => frBe,
  'fr-FR' => frFr,
  'fr-LU' => frLu,
  'hu-HU' => huHu,
  'it-IT' => itIt,
  'nl-BE' => nlBe,
  'nl-NL' => nlNl,
  'pl-PL' => plPl,
  'pt-PT' => ptPt,
  'sk-SK' => skSk,
  'sv-SE' => svSe,
  _ => PaymentMethodOptionsParam65PreferredLocale._(json),
}; }

static const PaymentMethodOptionsParam65PreferredLocale csCz = PaymentMethodOptionsParam65PreferredLocale._('cs-CZ');

static const PaymentMethodOptionsParam65PreferredLocale daDk = PaymentMethodOptionsParam65PreferredLocale._('da-DK');

static const PaymentMethodOptionsParam65PreferredLocale deAt = PaymentMethodOptionsParam65PreferredLocale._('de-AT');

static const PaymentMethodOptionsParam65PreferredLocale deDe = PaymentMethodOptionsParam65PreferredLocale._('de-DE');

static const PaymentMethodOptionsParam65PreferredLocale deLu = PaymentMethodOptionsParam65PreferredLocale._('de-LU');

static const PaymentMethodOptionsParam65PreferredLocale elGr = PaymentMethodOptionsParam65PreferredLocale._('el-GR');

static const PaymentMethodOptionsParam65PreferredLocale enGb = PaymentMethodOptionsParam65PreferredLocale._('en-GB');

static const PaymentMethodOptionsParam65PreferredLocale enUs = PaymentMethodOptionsParam65PreferredLocale._('en-US');

static const PaymentMethodOptionsParam65PreferredLocale esEs = PaymentMethodOptionsParam65PreferredLocale._('es-ES');

static const PaymentMethodOptionsParam65PreferredLocale fiFi = PaymentMethodOptionsParam65PreferredLocale._('fi-FI');

static const PaymentMethodOptionsParam65PreferredLocale frBe = PaymentMethodOptionsParam65PreferredLocale._('fr-BE');

static const PaymentMethodOptionsParam65PreferredLocale frFr = PaymentMethodOptionsParam65PreferredLocale._('fr-FR');

static const PaymentMethodOptionsParam65PreferredLocale frLu = PaymentMethodOptionsParam65PreferredLocale._('fr-LU');

static const PaymentMethodOptionsParam65PreferredLocale huHu = PaymentMethodOptionsParam65PreferredLocale._('hu-HU');

static const PaymentMethodOptionsParam65PreferredLocale itIt = PaymentMethodOptionsParam65PreferredLocale._('it-IT');

static const PaymentMethodOptionsParam65PreferredLocale nlBe = PaymentMethodOptionsParam65PreferredLocale._('nl-BE');

static const PaymentMethodOptionsParam65PreferredLocale nlNl = PaymentMethodOptionsParam65PreferredLocale._('nl-NL');

static const PaymentMethodOptionsParam65PreferredLocale plPl = PaymentMethodOptionsParam65PreferredLocale._('pl-PL');

static const PaymentMethodOptionsParam65PreferredLocale ptPt = PaymentMethodOptionsParam65PreferredLocale._('pt-PT');

static const PaymentMethodOptionsParam65PreferredLocale skSk = PaymentMethodOptionsParam65PreferredLocale._('sk-SK');

static const PaymentMethodOptionsParam65PreferredLocale svSe = PaymentMethodOptionsParam65PreferredLocale._('sv-SE');

static const List<PaymentMethodOptionsParam65PreferredLocale> values = [csCz, daDk, deAt, deDe, deLu, elGr, enGb, enUs, esEs, fiFi, frBe, frFr, frLu, huHu, itIt, nlBe, nlNl, plPl, ptPt, skSk, svSe];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam65PreferredLocale && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam65PreferredLocale($value)'; } 
 }
@immutable final class PaymentMethodOptionsParam65SetupFutureUsage {const PaymentMethodOptionsParam65SetupFutureUsage._(this.value);

factory PaymentMethodOptionsParam65SetupFutureUsage.fromJson(String json) { return switch (json) {
  '' => $empty,
  'none' => none,
  'off_session' => offSession,
  _ => PaymentMethodOptionsParam65SetupFutureUsage._(json),
}; }

static const PaymentMethodOptionsParam65SetupFutureUsage $empty = PaymentMethodOptionsParam65SetupFutureUsage._('');

static const PaymentMethodOptionsParam65SetupFutureUsage none = PaymentMethodOptionsParam65SetupFutureUsage._('none');

static const PaymentMethodOptionsParam65SetupFutureUsage offSession = PaymentMethodOptionsParam65SetupFutureUsage._('off_session');

static const List<PaymentMethodOptionsParam65SetupFutureUsage> values = [$empty, none, offSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam65SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam65SetupFutureUsage($value)'; } 
 }
@immutable final class PaymentMethodOptionsParam65 {const PaymentMethodOptionsParam65({this.captureMethod, this.preferredLocale, this.reference, this.riskCorrelationId, this.setupFutureUsage, });

factory PaymentMethodOptionsParam65.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam65(
  captureMethod: json['capture_method'] != null ? PaymentMethodOptionsParam65CaptureMethod.fromJson(json['capture_method'] as String) : null,
  preferredLocale: json['preferred_locale'] != null ? PaymentMethodOptionsParam65PreferredLocale.fromJson(json['preferred_locale'] as String) : null,
  reference: json['reference'] as String?,
  riskCorrelationId: json['risk_correlation_id'] as String?,
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentMethodOptionsParam65SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PaymentMethodOptionsParam65CaptureMethod? captureMethod;

final PaymentMethodOptionsParam65PreferredLocale? preferredLocale;

final String? reference;

final String? riskCorrelationId;

final PaymentMethodOptionsParam65SetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (captureMethod != null) 'capture_method': captureMethod?.toJson(),
  if (preferredLocale != null) 'preferred_locale': preferredLocale?.toJson(),
  'reference': ?reference,
  'risk_correlation_id': ?riskCorrelationId,
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'capture_method', 'preferred_locale', 'reference', 'risk_correlation_id', 'setup_future_usage'}.contains(key)); } 
PaymentMethodOptionsParam65 copyWith({PaymentMethodOptionsParam65CaptureMethod Function()? captureMethod, PaymentMethodOptionsParam65PreferredLocale Function()? preferredLocale, String Function()? reference, String Function()? riskCorrelationId, PaymentMethodOptionsParam65SetupFutureUsage Function()? setupFutureUsage, }) { return PaymentMethodOptionsParam65(
  captureMethod: captureMethod != null ? captureMethod() : this.captureMethod,
  preferredLocale: preferredLocale != null ? preferredLocale() : this.preferredLocale,
  reference: reference != null ? reference() : this.reference,
  riskCorrelationId: riskCorrelationId != null ? riskCorrelationId() : this.riskCorrelationId,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam65 &&
          captureMethod == other.captureMethod &&
          preferredLocale == other.preferredLocale &&
          reference == other.reference &&
          riskCorrelationId == other.riskCorrelationId &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return Object.hash(captureMethod, preferredLocale, reference, riskCorrelationId, setupFutureUsage); } 
@override String toString() { return 'PaymentMethodOptionsParam65(captureMethod: $captureMethod, preferredLocale: $preferredLocale, reference: $reference, riskCorrelationId: $riskCorrelationId, setupFutureUsage: $setupFutureUsage)'; } 
 }
