// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'range_query_specs40.dart';
@immutable
final class GetReviewsCreated {
  const GetReviewsCreated({this.rangeQuerySpecs40 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const GetReviewsCreated._({required this.rawValue, required this.rangeQuerySpecs40,
required this.$int,});
  factory GetReviewsCreated.fromJson(Object? json) => GetReviewsCreated._(
    rawValue: Omittable(json),
    rangeQuerySpecs40: parseAnyOfVariant<RangeQuerySpecs40>(json, (value) => RangeQuerySpecs40.fromJson(value! as Map<String, dynamic>)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<RangeQuerySpecs40> rangeQuerySpecs40;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => rangeQuerySpecs40.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (rangeQuerySpecs40.isPresent) rangeQuerySpecs40.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is GetReviewsCreated && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'GetReviewsCreated(${toJson()})';
}
