// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'range_query_specs8.dart';
@immutable
final class GetCreditNotesCreated {
  const GetCreditNotesCreated({this.rangeQuerySpecs8 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const GetCreditNotesCreated._({required this.rawValue, required this.rangeQuerySpecs8,
required this.$int,});
  factory GetCreditNotesCreated.fromJson(Object? json) => GetCreditNotesCreated._(
    rawValue: Omittable(json),
    rangeQuerySpecs8: parseAnyOfVariant<RangeQuerySpecs8>(json, (value) => RangeQuerySpecs8.fromJson(value! as Map<String, dynamic>)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<RangeQuerySpecs8> rangeQuerySpecs8;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => rangeQuerySpecs8.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (rangeQuerySpecs8.isPresent) rangeQuerySpecs8.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is GetCreditNotesCreated && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'GetCreditNotesCreated(${toJson()})';
}
