// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'range_query_specs39.dart';
@immutable
final class GetReportingReportRunsCreated {
  const GetReportingReportRunsCreated({this.rangeQuerySpecs39 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const GetReportingReportRunsCreated._({required this.rawValue, required this.rangeQuerySpecs39,
required this.$int,});
  factory GetReportingReportRunsCreated.fromJson(Object? json) => GetReportingReportRunsCreated._(
    rawValue: Omittable(json),
    rangeQuerySpecs39: parseAnyOfVariant<RangeQuerySpecs39>(json, (value) => RangeQuerySpecs39.fromJson(value! as Map<String, dynamic>)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<RangeQuerySpecs39> rangeQuerySpecs39;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => rangeQuerySpecs39.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (rangeQuerySpecs39.isPresent) rangeQuerySpecs39.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is GetReportingReportRunsCreated && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'GetReportingReportRunsCreated(${toJson()})';
}
