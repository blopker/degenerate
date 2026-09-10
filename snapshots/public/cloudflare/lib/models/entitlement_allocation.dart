// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'bool_allocation.dart';import 'max_count_allocation.dart';import 'null_allocation.dart';
@immutable
final class EntitlementAllocation {
  const EntitlementAllocation({this.maxCountAllocation = const Omittable.absent(),
this.boolAllocation = const Omittable.absent(),
this.nullAllocation = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const EntitlementAllocation._({required this.rawValue, required this.maxCountAllocation,
required this.boolAllocation,
required this.nullAllocation,});
  factory EntitlementAllocation.fromJson(Object? json) => EntitlementAllocation._(
    rawValue: Omittable(json),
    maxCountAllocation: parseAnyOfVariant<MaxCountAllocation>(json, (value) => MaxCountAllocation.fromJson(value! as Map<String, dynamic>)),
boolAllocation: parseAnyOfVariant<BoolAllocation>(json, (value) => BoolAllocation.fromJson(value! as Map<String, dynamic>)),
nullAllocation: parseAnyOfVariant<NullAllocation>(json, (value) => NullAllocation.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<MaxCountAllocation> maxCountAllocation;
final Omittable<BoolAllocation> boolAllocation;
final Omittable<NullAllocation> nullAllocation;

  /// Whether at least one known variant matched.
  bool get isValid => maxCountAllocation.isPresent || boolAllocation.isPresent || nullAllocation.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (maxCountAllocation.isPresent) maxCountAllocation.value?.toJson(),
if (boolAllocation.isPresent) boolAllocation.value?.toJson(),
if (nullAllocation.isPresent) nullAllocation.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is EntitlementAllocation && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'EntitlementAllocation(${toJson()})';
}
