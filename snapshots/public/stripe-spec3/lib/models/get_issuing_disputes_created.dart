// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'range_query_specs25.dart';
@immutable
final class GetIssuingDisputesCreated {
  const GetIssuingDisputesCreated({this.rangeQuerySpecs25 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const GetIssuingDisputesCreated._({required this.rawValue, required this.rangeQuerySpecs25,
required this.$int,});
  factory GetIssuingDisputesCreated.fromJson(Object? json) => GetIssuingDisputesCreated._(
    rawValue: Omittable(json),
    rangeQuerySpecs25: parseAnyOfVariant<RangeQuerySpecs25>(json, (value) => RangeQuerySpecs25.fromJson(value! as Map<String, dynamic>)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<RangeQuerySpecs25> rangeQuerySpecs25;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => rangeQuerySpecs25.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (rangeQuerySpecs25.isPresent) rangeQuerySpecs25.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is GetIssuingDisputesCreated && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'GetIssuingDisputesCreated(${toJson()})';
}
