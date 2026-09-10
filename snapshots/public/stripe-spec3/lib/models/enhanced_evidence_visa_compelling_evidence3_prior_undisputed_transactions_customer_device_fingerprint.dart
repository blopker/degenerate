// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsCustomerDeviceFingerprintVariant2 {const EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsCustomerDeviceFingerprintVariant2._(this.value);

factory EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsCustomerDeviceFingerprintVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsCustomerDeviceFingerprintVariant2._(json),
};}

static const EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsCustomerDeviceFingerprintVariant2 $empty = EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsCustomerDeviceFingerprintVariant2._('');

static const List<EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsCustomerDeviceFingerprintVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsCustomerDeviceFingerprintVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsCustomerDeviceFingerprintVariant2($value)';}
}

@immutable
final class EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsCustomerDeviceFingerprint {
  const EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsCustomerDeviceFingerprint({this.string = const Omittable.absent(),
this.enhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsCustomerDeviceFingerprintVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsCustomerDeviceFingerprint._({required this.rawValue, required this.string,
required this.enhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsCustomerDeviceFingerprintVariant2,});
  factory EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsCustomerDeviceFingerprint.fromJson(Object? json) => EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsCustomerDeviceFingerprint._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
enhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsCustomerDeviceFingerprintVariant2: parseAnyOfVariant<EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsCustomerDeviceFingerprintVariant2>(json, (value) => EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsCustomerDeviceFingerprintVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsCustomerDeviceFingerprintVariant2> enhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsCustomerDeviceFingerprintVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || enhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsCustomerDeviceFingerprintVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (enhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsCustomerDeviceFingerprintVariant2.isPresent) enhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsCustomerDeviceFingerprintVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsCustomerDeviceFingerprint && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsCustomerDeviceFingerprint(${toJson()})';
}
