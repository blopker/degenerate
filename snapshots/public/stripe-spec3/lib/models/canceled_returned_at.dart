// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CanceledReturnedAtVariant2 {const CanceledReturnedAtVariant2._(this.value);

factory CanceledReturnedAtVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => CanceledReturnedAtVariant2._(json),
}; }

static const CanceledReturnedAtVariant2 $empty = CanceledReturnedAtVariant2._('');

static const List<CanceledReturnedAtVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CanceledReturnedAtVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CanceledReturnedAtVariant2($value)'; } 
 }

@immutable
final class CanceledReturnedAt {
  const CanceledReturnedAt({this.$int = const Omittable.absent(),
this.canceledReturnedAtVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const CanceledReturnedAt._({required this.rawValue, required this.$int,
required this.canceledReturnedAtVariant2,});
  factory CanceledReturnedAt.fromJson(Object? json) => CanceledReturnedAt._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
canceledReturnedAtVariant2: parseAnyOfVariant<CanceledReturnedAtVariant2>(json, (value) => CanceledReturnedAtVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<CanceledReturnedAtVariant2> canceledReturnedAtVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || canceledReturnedAtVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (canceledReturnedAtVariant2.isPresent) canceledReturnedAtVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is CanceledReturnedAt && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'CanceledReturnedAt(${toJson()})';
}
