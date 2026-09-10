// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class BeneficiaryParamsPublicNameVariant2 {const BeneficiaryParamsPublicNameVariant2._(this.value);

factory BeneficiaryParamsPublicNameVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => BeneficiaryParamsPublicNameVariant2._(json),
}; }

static const BeneficiaryParamsPublicNameVariant2 $empty = BeneficiaryParamsPublicNameVariant2._('');

static const List<BeneficiaryParamsPublicNameVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is BeneficiaryParamsPublicNameVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'BeneficiaryParamsPublicNameVariant2($value)'; } 
 }

@immutable
final class BeneficiaryParamsPublicName {
  const BeneficiaryParamsPublicName({this.string = const Omittable.absent(),
this.beneficiaryParamsPublicNameVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const BeneficiaryParamsPublicName._({required this.rawValue, required this.string,
required this.beneficiaryParamsPublicNameVariant2,});
  factory BeneficiaryParamsPublicName.fromJson(Object? json) => BeneficiaryParamsPublicName._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
beneficiaryParamsPublicNameVariant2: parseAnyOfVariant<BeneficiaryParamsPublicNameVariant2>(json, (value) => BeneficiaryParamsPublicNameVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<BeneficiaryParamsPublicNameVariant2> beneficiaryParamsPublicNameVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || beneficiaryParamsPublicNameVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (beneficiaryParamsPublicNameVariant2.isPresent) beneficiaryParamsPublicNameVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is BeneficiaryParamsPublicName && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'BeneficiaryParamsPublicName(${toJson()})';
}
