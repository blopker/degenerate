// GENERATED CODE - DO NOT MODIFY BY HAND

final class InvoicePaymentMethodOptionsParam39PreferredLanguage {const InvoicePaymentMethodOptionsParam39PreferredLanguage._(this.value);

factory InvoicePaymentMethodOptionsParam39PreferredLanguage.fromJson(String json) { return switch (json) {
  'de' => de,
  'en' => en,
  'fr' => fr,
  'nl' => nl,
  _ => InvoicePaymentMethodOptionsParam39PreferredLanguage._(json),
}; }

static const InvoicePaymentMethodOptionsParam39PreferredLanguage de = InvoicePaymentMethodOptionsParam39PreferredLanguage._('de');

static const InvoicePaymentMethodOptionsParam39PreferredLanguage en = InvoicePaymentMethodOptionsParam39PreferredLanguage._('en');

static const InvoicePaymentMethodOptionsParam39PreferredLanguage fr = InvoicePaymentMethodOptionsParam39PreferredLanguage._('fr');

static const InvoicePaymentMethodOptionsParam39PreferredLanguage nl = InvoicePaymentMethodOptionsParam39PreferredLanguage._('nl');

static const List<InvoicePaymentMethodOptionsParam39PreferredLanguage> values = [de, en, fr, nl];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InvoicePaymentMethodOptionsParam39PreferredLanguage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam39PreferredLanguage($value)'; } 
 }
final class InvoicePaymentMethodOptionsParam39 {const InvoicePaymentMethodOptionsParam39({this.preferredLanguage});

factory InvoicePaymentMethodOptionsParam39.fromJson(Map<String, dynamic> json) { return InvoicePaymentMethodOptionsParam39(
  preferredLanguage: json['preferred_language'] != null ? InvoicePaymentMethodOptionsParam39PreferredLanguage.fromJson(json['preferred_language'] as String) : null,
); }

final InvoicePaymentMethodOptionsParam39PreferredLanguage? preferredLanguage;

Map<String, dynamic> toJson() { return {
  if (preferredLanguage != null) 'preferred_language': preferredLanguage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
InvoicePaymentMethodOptionsParam39 copyWith({InvoicePaymentMethodOptionsParam39PreferredLanguage Function()? preferredLanguage}) { return InvoicePaymentMethodOptionsParam39(
  preferredLanguage: preferredLanguage != null ? preferredLanguage() : this.preferredLanguage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoicePaymentMethodOptionsParam39 &&
          preferredLanguage == other.preferredLanguage; } 
@override int get hashCode { return preferredLanguage.hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam39(preferredLanguage: $preferredLanguage)'; } 
 }
