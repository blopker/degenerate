// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCountryVariant2 {const EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCountryVariant2._(this.value);

factory EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCountryVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCountryVariant2._(json),
}; }

static const EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCountryVariant2 $empty = EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCountryVariant2._('');

static const List<EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCountryVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCountryVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCountryVariant2($value)'; } 
 }

@immutable
final class EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCountry {
  const EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCountry({this.string = const Omittable.absent(),
this.enhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCountryVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCountry._({required this.rawValue, required this.string,
required this.enhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCountryVariant2,});
  factory EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCountry.fromJson(Object? json) => EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCountry._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
enhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCountryVariant2: parseAnyOfVariant<EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCountryVariant2>(json, (value) => EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCountryVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCountryVariant2> enhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCountryVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || enhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCountryVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (enhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCountryVariant2.isPresent) enhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCountryVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCountry && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCountry(${toJson()})';
}
