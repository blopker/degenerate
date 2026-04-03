// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class InvoicePaymentMethodOptionsParam2PreferredLanguage {const InvoicePaymentMethodOptionsParam2PreferredLanguage._(this.value);

factory InvoicePaymentMethodOptionsParam2PreferredLanguage.fromJson(String json) { return switch (json) {
  'de' => de,
  'en' => en,
  'fr' => fr,
  'nl' => nl,
  _ => InvoicePaymentMethodOptionsParam2PreferredLanguage._(json),
}; }

static const InvoicePaymentMethodOptionsParam2PreferredLanguage de = InvoicePaymentMethodOptionsParam2PreferredLanguage._('de');

static const InvoicePaymentMethodOptionsParam2PreferredLanguage en = InvoicePaymentMethodOptionsParam2PreferredLanguage._('en');

static const InvoicePaymentMethodOptionsParam2PreferredLanguage fr = InvoicePaymentMethodOptionsParam2PreferredLanguage._('fr');

static const InvoicePaymentMethodOptionsParam2PreferredLanguage nl = InvoicePaymentMethodOptionsParam2PreferredLanguage._('nl');

static const List<InvoicePaymentMethodOptionsParam2PreferredLanguage> values = [de, en, fr, nl];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InvoicePaymentMethodOptionsParam2PreferredLanguage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam2PreferredLanguage($value)'; } 
 }
@immutable final class InvoicePaymentMethodOptionsParam2 {const InvoicePaymentMethodOptionsParam2({this.preferredLanguage});

factory InvoicePaymentMethodOptionsParam2.fromJson(Map<String, dynamic> json) { return InvoicePaymentMethodOptionsParam2(
  preferredLanguage: json['preferred_language'] != null ? InvoicePaymentMethodOptionsParam2PreferredLanguage.fromJson(json['preferred_language'] as String) : null,
); }

final InvoicePaymentMethodOptionsParam2PreferredLanguage? preferredLanguage;

Map<String, dynamic> toJson() { return {
  if (preferredLanguage != null) 'preferred_language': preferredLanguage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'preferred_language'}.contains(key)); } 
InvoicePaymentMethodOptionsParam2 copyWith({InvoicePaymentMethodOptionsParam2PreferredLanguage Function()? preferredLanguage}) { return InvoicePaymentMethodOptionsParam2(
  preferredLanguage: preferredLanguage != null ? preferredLanguage() : this.preferredLanguage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoicePaymentMethodOptionsParam2 &&
          preferredLanguage == other.preferredLanguage; } 
@override int get hashCode { return preferredLanguage.hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam2(preferredLanguage: $preferredLanguage)'; } 
 }
