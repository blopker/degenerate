// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CanceledExpectedAtVariant2 {const CanceledExpectedAtVariant2._(this.value);

factory CanceledExpectedAtVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => CanceledExpectedAtVariant2._(json),
}; }

static const CanceledExpectedAtVariant2 $empty = CanceledExpectedAtVariant2._('');

static const List<CanceledExpectedAtVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CanceledExpectedAtVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CanceledExpectedAtVariant2($value)'; } 
 }

@immutable
final class CanceledExpectedAt {
  const CanceledExpectedAt({this.$int = const Omittable.absent(),
this.canceledExpectedAtVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const CanceledExpectedAt._({required this.rawValue, required this.$int,
required this.canceledExpectedAtVariant2,});
  factory CanceledExpectedAt.fromJson(Object? json) => CanceledExpectedAt._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
canceledExpectedAtVariant2: parseAnyOfVariant<CanceledExpectedAtVariant2>(json, (value) => CanceledExpectedAtVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<CanceledExpectedAtVariant2> canceledExpectedAtVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || canceledExpectedAtVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (canceledExpectedAtVariant2.isPresent) canceledExpectedAtVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is CanceledExpectedAt && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'CanceledExpectedAt(${toJson()})';
}
