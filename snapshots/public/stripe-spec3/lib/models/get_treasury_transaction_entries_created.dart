// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'range_query_specs57.dart';
@immutable
final class GetTreasuryTransactionEntriesCreated {
  const GetTreasuryTransactionEntriesCreated({this.rangeQuerySpecs57 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const GetTreasuryTransactionEntriesCreated._({required this.rawValue, required this.rangeQuerySpecs57,
required this.$int,});
  factory GetTreasuryTransactionEntriesCreated.fromJson(Object? json) => GetTreasuryTransactionEntriesCreated._(
    rawValue: Omittable(json),
    rangeQuerySpecs57: parseAnyOfVariant<RangeQuerySpecs57>(json, (value) => RangeQuerySpecs57.fromJson(value! as Map<String, dynamic>)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<RangeQuerySpecs57> rangeQuerySpecs57;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => rangeQuerySpecs57.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (rangeQuerySpecs57.isPresent) rangeQuerySpecs57.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is GetTreasuryTransactionEntriesCreated && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'GetTreasuryTransactionEntriesCreated(${toJson()})';
}
