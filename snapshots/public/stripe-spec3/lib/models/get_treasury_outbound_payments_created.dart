// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'range_query_specs56.dart';
@immutable
final class GetTreasuryOutboundPaymentsCreated {
  const GetTreasuryOutboundPaymentsCreated({this.rangeQuerySpecs56 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const GetTreasuryOutboundPaymentsCreated._({required this.rawValue, required this.rangeQuerySpecs56,
required this.$int,});
  factory GetTreasuryOutboundPaymentsCreated.fromJson(Object? json) => GetTreasuryOutboundPaymentsCreated._(
    rawValue: Omittable(json),
    rangeQuerySpecs56: parseAnyOfVariant<RangeQuerySpecs56>(json, (value) => RangeQuerySpecs56.fromJson(value! as Map<String, dynamic>)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<RangeQuerySpecs56> rangeQuerySpecs56;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => rangeQuerySpecs56.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (rangeQuerySpecs56.isPresent) rangeQuerySpecs56.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is GetTreasuryOutboundPaymentsCreated && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'GetTreasuryOutboundPaymentsCreated(${toJson()})';
}
