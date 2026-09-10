// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountryVariant2 {const EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountryVariant2._(this.value);

factory EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountryVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountryVariant2._(json),
}; }

static const EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountryVariant2 $empty = EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountryVariant2._('');

static const List<EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountryVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountryVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountryVariant2($value)'; } 
 }

@immutable
final class EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountry {
  const EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountry({this.string = const Omittable.absent(),
this.enhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountryVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountry._({required this.rawValue, required this.string,
required this.enhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountryVariant2,});
  factory EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountry.fromJson(Object? json) => EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountry._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
enhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountryVariant2: parseAnyOfVariant<EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountryVariant2>(json, (value) => EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountryVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountryVariant2> enhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountryVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || enhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountryVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (enhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountryVariant2.isPresent) enhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountryVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountry && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCountry(${toJson()})';
}
