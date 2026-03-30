// GENERATED CODE - DO NOT MODIFY BY HAND

final class InvoicePaymentMethodOptionsParam32PreferredLanguage {const InvoicePaymentMethodOptionsParam32PreferredLanguage._(this.value);

factory InvoicePaymentMethodOptionsParam32PreferredLanguage.fromJson(String json) { return switch (json) {
  'de' => de,
  'en' => en,
  'fr' => fr,
  'nl' => nl,
  _ => InvoicePaymentMethodOptionsParam32PreferredLanguage._(json),
}; }

static const InvoicePaymentMethodOptionsParam32PreferredLanguage de = InvoicePaymentMethodOptionsParam32PreferredLanguage._('de');

static const InvoicePaymentMethodOptionsParam32PreferredLanguage en = InvoicePaymentMethodOptionsParam32PreferredLanguage._('en');

static const InvoicePaymentMethodOptionsParam32PreferredLanguage fr = InvoicePaymentMethodOptionsParam32PreferredLanguage._('fr');

static const InvoicePaymentMethodOptionsParam32PreferredLanguage nl = InvoicePaymentMethodOptionsParam32PreferredLanguage._('nl');

static const List<InvoicePaymentMethodOptionsParam32PreferredLanguage> values = [de, en, fr, nl];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InvoicePaymentMethodOptionsParam32PreferredLanguage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam32PreferredLanguage($value)'; } 
 }
final class InvoicePaymentMethodOptionsParam32 {const InvoicePaymentMethodOptionsParam32({this.preferredLanguage});

factory InvoicePaymentMethodOptionsParam32.fromJson(Map<String, dynamic> json) { return InvoicePaymentMethodOptionsParam32(
  preferredLanguage: json['preferred_language'] != null ? InvoicePaymentMethodOptionsParam32PreferredLanguage.fromJson(json['preferred_language'] as String) : null,
); }

final InvoicePaymentMethodOptionsParam32PreferredLanguage? preferredLanguage;

Map<String, dynamic> toJson() { return {
  if (preferredLanguage != null) 'preferred_language': preferredLanguage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'preferred_language'}.contains(key)); } 
InvoicePaymentMethodOptionsParam32 copyWith({InvoicePaymentMethodOptionsParam32PreferredLanguage Function()? preferredLanguage}) { return InvoicePaymentMethodOptionsParam32(
  preferredLanguage: preferredLanguage != null ? preferredLanguage() : this.preferredLanguage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoicePaymentMethodOptionsParam32 &&
          preferredLanguage == other.preferredLanguage; } 
@override int get hashCode { return preferredLanguage.hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam32(preferredLanguage: $preferredLanguage)'; } 
 }
