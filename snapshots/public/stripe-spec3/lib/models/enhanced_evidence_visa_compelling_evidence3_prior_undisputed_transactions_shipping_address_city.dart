// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCityVariant2 {const EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCityVariant2._(this.value);

factory EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCityVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCityVariant2._(json),
};}

static const EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCityVariant2 $empty = EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCityVariant2._('');

static const List<EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCityVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCityVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCityVariant2($value)';}
}

@immutable
final class EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCity {
  const EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCity({this.string = const Omittable.absent(),
this.enhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCityVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCity._({required this.rawValue, required this.string,
required this.enhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCityVariant2,});
  factory EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCity.fromJson(Object? json) => EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCity._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
enhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCityVariant2: parseAnyOfVariant<EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCityVariant2>(json, (value) => EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCityVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCityVariant2> enhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCityVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || enhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCityVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (enhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCityVariant2.isPresent) enhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCityVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCity && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsShippingAddressCity(${toJson()})';
}
