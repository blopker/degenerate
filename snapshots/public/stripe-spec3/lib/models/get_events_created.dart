// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'range_query_specs12.dart';
@immutable
final class GetEventsCreated {
  const GetEventsCreated({this.rangeQuerySpecs12 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const GetEventsCreated._({required this.rawValue, required this.rangeQuerySpecs12,
required this.$int,});
  factory GetEventsCreated.fromJson(Object? json) => GetEventsCreated._(
    rawValue: Omittable(json),
    rangeQuerySpecs12: parseAnyOfVariant<RangeQuerySpecs12>(json, (value) => RangeQuerySpecs12.fromJson(value! as Map<String, dynamic>)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<RangeQuerySpecs12> rangeQuerySpecs12;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => rangeQuerySpecs12.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (rangeQuerySpecs12.isPresent) rangeQuerySpecs12.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is GetEventsCreated && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'GetEventsCreated(${toJson()})';
}
