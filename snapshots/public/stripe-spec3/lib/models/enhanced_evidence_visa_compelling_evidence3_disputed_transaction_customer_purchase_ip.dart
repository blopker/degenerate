// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerPurchaseIpVariant2 {const EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerPurchaseIpVariant2._(this.value);

factory EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerPurchaseIpVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerPurchaseIpVariant2._(json),
}; }

static const EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerPurchaseIpVariant2 $empty = EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerPurchaseIpVariant2._('');

static const List<EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerPurchaseIpVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerPurchaseIpVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerPurchaseIpVariant2($value)'; } 
 }

@immutable
final class EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerPurchaseIp {
  const EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerPurchaseIp({this.string = const Omittable.absent(),
this.enhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerPurchaseIpVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerPurchaseIp._({required this.rawValue, required this.string,
required this.enhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerPurchaseIpVariant2,});
  factory EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerPurchaseIp.fromJson(Object? json) => EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerPurchaseIp._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
enhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerPurchaseIpVariant2: parseAnyOfVariant<EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerPurchaseIpVariant2>(json, (value) => EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerPurchaseIpVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerPurchaseIpVariant2> enhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerPurchaseIpVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || enhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerPurchaseIpVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (enhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerPurchaseIpVariant2.isPresent) enhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerPurchaseIpVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerPurchaseIp && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'EnhancedEvidenceVisaCompellingEvidence3DisputedTransactionCustomerPurchaseIp(${toJson()})';
}
