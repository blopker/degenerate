// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountryVariant2 {const EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountryVariant2._(this.value);

factory EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountryVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountryVariant2._(json),
}; }

static const EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountryVariant2 $empty = EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountryVariant2._('');

static const List<EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountryVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountryVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountryVariant2($value)'; } 
 }

@immutable
final class EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountry {
  const EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountry({this.string = const Omittable.absent(),
this.enhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountryVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountry._({required this.rawValue, required this.string,
required this.enhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountryVariant2,});
  factory EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountry.fromJson(Object? json) => EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountry._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
enhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountryVariant2: parseAnyOfVariant<EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountryVariant2>(json, (value) => EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountryVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountryVariant2> enhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountryVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || enhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountryVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (enhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountryVariant2.isPresent) enhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountryVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountry && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountry(${toJson()})';
}
