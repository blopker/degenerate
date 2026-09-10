// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressPostalCodeVariant2 {const EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressPostalCodeVariant2._(this.value);

factory EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressPostalCodeVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressPostalCodeVariant2._(json),
}; }

static const EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressPostalCodeVariant2 $empty = EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressPostalCodeVariant2._('');

static const List<EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressPostalCodeVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressPostalCodeVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressPostalCodeVariant2($value)'; } 
 }

@immutable
final class EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressPostalCode {
  const EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressPostalCode({this.string = const Omittable.absent(),
this.enhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressPostalCodeVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressPostalCode._({required this.rawValue, required this.string,
required this.enhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressPostalCodeVariant2,});
  factory EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressPostalCode.fromJson(Object? json) => EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressPostalCode._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
enhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressPostalCodeVariant2: parseAnyOfVariant<EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressPostalCodeVariant2>(json, (value) => EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressPostalCodeVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressPostalCodeVariant2> enhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressPostalCodeVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || enhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressPostalCodeVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (enhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressPostalCodeVariant2.isPresent) enhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressPostalCodeVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressPostalCode && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressPostalCode(${toJson()})';
}
