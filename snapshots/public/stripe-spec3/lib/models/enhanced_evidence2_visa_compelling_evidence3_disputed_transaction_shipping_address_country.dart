// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressCountryVariant2 {const EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressCountryVariant2._(this.value);

factory EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressCountryVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressCountryVariant2._(json),
};}

static const EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressCountryVariant2 $empty = EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressCountryVariant2._('');

static const List<EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressCountryVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressCountryVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressCountryVariant2($value)';}
}

@immutable
final class EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressCountry {
  const EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressCountry({this.string = const Omittable.absent(),
this.enhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressCountryVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressCountry._({required this.rawValue, required this.string,
required this.enhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressCountryVariant2,});
  factory EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressCountry.fromJson(Object? json) => EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressCountry._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
enhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressCountryVariant2: parseAnyOfVariant<EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressCountryVariant2>(json, (value) => EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressCountryVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressCountryVariant2> enhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressCountryVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || enhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressCountryVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (enhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressCountryVariant2.isPresent) enhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressCountryVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressCountry && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddressCountry(${toJson()})';
}
