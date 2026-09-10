// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class MerchandiseNotAsDescribedReturnedAtVariant2 {const MerchandiseNotAsDescribedReturnedAtVariant2._(this.value);

factory MerchandiseNotAsDescribedReturnedAtVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => MerchandiseNotAsDescribedReturnedAtVariant2._(json),
}; }

static const MerchandiseNotAsDescribedReturnedAtVariant2 $empty = MerchandiseNotAsDescribedReturnedAtVariant2._('');

static const List<MerchandiseNotAsDescribedReturnedAtVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MerchandiseNotAsDescribedReturnedAtVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MerchandiseNotAsDescribedReturnedAtVariant2($value)'; } 
 }

@immutable
final class MerchandiseNotAsDescribedReturnedAt {
  const MerchandiseNotAsDescribedReturnedAt({this.$int = const Omittable.absent(),
this.merchandiseNotAsDescribedReturnedAtVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const MerchandiseNotAsDescribedReturnedAt._({required this.rawValue, required this.$int,
required this.merchandiseNotAsDescribedReturnedAtVariant2,});
  factory MerchandiseNotAsDescribedReturnedAt.fromJson(Object? json) => MerchandiseNotAsDescribedReturnedAt._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
merchandiseNotAsDescribedReturnedAtVariant2: parseAnyOfVariant<MerchandiseNotAsDescribedReturnedAtVariant2>(json, (value) => MerchandiseNotAsDescribedReturnedAtVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<MerchandiseNotAsDescribedReturnedAtVariant2> merchandiseNotAsDescribedReturnedAtVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || merchandiseNotAsDescribedReturnedAtVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (merchandiseNotAsDescribedReturnedAtVariant2.isPresent) merchandiseNotAsDescribedReturnedAtVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is MerchandiseNotAsDescribedReturnedAt && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'MerchandiseNotAsDescribedReturnedAt(${toJson()})';
}
