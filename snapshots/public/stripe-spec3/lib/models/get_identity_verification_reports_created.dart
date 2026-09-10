// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'range_query_specs16.dart';
@immutable
final class GetIdentityVerificationReportsCreated {
  const GetIdentityVerificationReportsCreated({this.rangeQuerySpecs16 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const GetIdentityVerificationReportsCreated._({required this.rawValue, required this.rangeQuerySpecs16,
required this.$int,});
  factory GetIdentityVerificationReportsCreated.fromJson(Object? json) => GetIdentityVerificationReportsCreated._(
    rawValue: Omittable(json),
    rangeQuerySpecs16: parseAnyOfVariant<RangeQuerySpecs16>(json, (value) => RangeQuerySpecs16.fromJson(value! as Map<String, dynamic>)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<RangeQuerySpecs16> rangeQuerySpecs16;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => rangeQuerySpecs16.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (rangeQuerySpecs16.isPresent) rangeQuerySpecs16.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is GetIdentityVerificationReportsCreated && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'GetIdentityVerificationReportsCreated(${toJson()})';
}
