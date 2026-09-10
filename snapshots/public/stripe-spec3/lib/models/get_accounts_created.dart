// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'range_query_specs.dart';
@immutable
final class GetAccountsCreated {
  const GetAccountsCreated({this.rangeQuerySpecs = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const GetAccountsCreated._({required this.rawValue, required this.rangeQuerySpecs,
required this.$int,});
  factory GetAccountsCreated.fromJson(Object? json) => GetAccountsCreated._(
    rawValue: Omittable(json),
    rangeQuerySpecs: parseAnyOfVariant<RangeQuerySpecs>(json, (value) => RangeQuerySpecs.fromJson(value! as Map<String, dynamic>)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<RangeQuerySpecs> rangeQuerySpecs;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => rangeQuerySpecs.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (rangeQuerySpecs.isPresent) rangeQuerySpecs.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is GetAccountsCreated && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'GetAccountsCreated(${toJson()})';
}
