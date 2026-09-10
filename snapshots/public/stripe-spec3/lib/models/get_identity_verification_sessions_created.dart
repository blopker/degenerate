// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'range_query_specs17.dart';
@immutable
final class GetIdentityVerificationSessionsCreated {
  const GetIdentityVerificationSessionsCreated({this.rangeQuerySpecs17 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const GetIdentityVerificationSessionsCreated._({required this.rawValue, required this.rangeQuerySpecs17,
required this.$int,});
  factory GetIdentityVerificationSessionsCreated.fromJson(Object? json) => GetIdentityVerificationSessionsCreated._(
    rawValue: Omittable(json),
    rangeQuerySpecs17: parseAnyOfVariant<RangeQuerySpecs17>(json, (value) => RangeQuerySpecs17.fromJson(value! as Map<String, dynamic>)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<RangeQuerySpecs17> rangeQuerySpecs17;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => rangeQuerySpecs17.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (rangeQuerySpecs17.isPresent) rangeQuerySpecs17.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is GetIdentityVerificationSessionsCreated && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'GetIdentityVerificationSessionsCreated(${toJson()})';
}
