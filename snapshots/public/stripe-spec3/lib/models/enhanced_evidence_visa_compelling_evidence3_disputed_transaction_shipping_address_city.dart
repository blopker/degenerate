// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCityVariant2 {const EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCityVariant2._(this.value);

factory EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCityVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCityVariant2._(json),
}; }

static const EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCityVariant2 $empty = EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCityVariant2._('');

static const List<EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCityVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCityVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCityVariant2($value)'; } 
 }

@immutable
final class EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCity {
  const EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCity({this.string = const Omittable.absent(),
this.enhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCityVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCity._({required this.rawValue, required this.string,
required this.enhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCityVariant2,});
  factory EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCity.fromJson(Object? json) => EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCity._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
enhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCityVariant2: parseAnyOfVariant<EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCityVariant2>(json, (value) => EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCityVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCityVariant2> enhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCityVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || enhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCityVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (enhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCityVariant2.isPresent) enhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCityVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCity && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionShippingAddressCity(${toJson()})';
}
