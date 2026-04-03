// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class InvoicePaymentMethodOptionsParam24PreferredLanguage {const InvoicePaymentMethodOptionsParam24PreferredLanguage._(this.value);

factory InvoicePaymentMethodOptionsParam24PreferredLanguage.fromJson(String json) { return switch (json) {
  'de' => de,
  'en' => en,
  'fr' => fr,
  'nl' => nl,
  _ => InvoicePaymentMethodOptionsParam24PreferredLanguage._(json),
}; }

static const InvoicePaymentMethodOptionsParam24PreferredLanguage de = InvoicePaymentMethodOptionsParam24PreferredLanguage._('de');

static const InvoicePaymentMethodOptionsParam24PreferredLanguage en = InvoicePaymentMethodOptionsParam24PreferredLanguage._('en');

static const InvoicePaymentMethodOptionsParam24PreferredLanguage fr = InvoicePaymentMethodOptionsParam24PreferredLanguage._('fr');

static const InvoicePaymentMethodOptionsParam24PreferredLanguage nl = InvoicePaymentMethodOptionsParam24PreferredLanguage._('nl');

static const List<InvoicePaymentMethodOptionsParam24PreferredLanguage> values = [de, en, fr, nl];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InvoicePaymentMethodOptionsParam24PreferredLanguage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam24PreferredLanguage($value)'; } 
 }
@immutable final class InvoicePaymentMethodOptionsParam24 {const InvoicePaymentMethodOptionsParam24({this.preferredLanguage});

factory InvoicePaymentMethodOptionsParam24.fromJson(Map<String, dynamic> json) { return InvoicePaymentMethodOptionsParam24(
  preferredLanguage: json['preferred_language'] != null ? InvoicePaymentMethodOptionsParam24PreferredLanguage.fromJson(json['preferred_language'] as String) : null,
); }

final InvoicePaymentMethodOptionsParam24PreferredLanguage? preferredLanguage;

Map<String, dynamic> toJson() { return {
  if (preferredLanguage != null) 'preferred_language': preferredLanguage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'preferred_language'}.contains(key)); } 
InvoicePaymentMethodOptionsParam24 copyWith({InvoicePaymentMethodOptionsParam24PreferredLanguage Function()? preferredLanguage}) { return InvoicePaymentMethodOptionsParam24(
  preferredLanguage: preferredLanguage != null ? preferredLanguage() : this.preferredLanguage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoicePaymentMethodOptionsParam24 &&
          preferredLanguage == other.preferredLanguage; } 
@override int get hashCode { return preferredLanguage.hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam24(preferredLanguage: $preferredLanguage)'; } 
 }
