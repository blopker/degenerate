// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerAccountIdVariant2 {const EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerAccountIdVariant2._(this.value);

factory EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerAccountIdVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerAccountIdVariant2._(json),
}; }

static const EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerAccountIdVariant2 $empty = EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerAccountIdVariant2._('');

static const List<EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerAccountIdVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerAccountIdVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerAccountIdVariant2($value)'; } 
 }

@immutable
final class EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerAccountId {
  const EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerAccountId({this.string = const Omittable.absent(),
this.enhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerAccountIdVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerAccountId._({required this.rawValue, required this.string,
required this.enhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerAccountIdVariant2,});
  factory EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerAccountId.fromJson(Object? json) => EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerAccountId._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
enhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerAccountIdVariant2: parseAnyOfVariant<EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerAccountIdVariant2>(json, (value) => EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerAccountIdVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerAccountIdVariant2> enhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerAccountIdVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || enhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerAccountIdVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (enhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerAccountIdVariant2.isPresent) enhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerAccountIdVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerAccountId && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerAccountId(${toJson()})';
}
