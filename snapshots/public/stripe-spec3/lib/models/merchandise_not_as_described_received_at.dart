// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class MerchandiseNotAsDescribedReceivedAtVariant2 {const MerchandiseNotAsDescribedReceivedAtVariant2._(this.value);

factory MerchandiseNotAsDescribedReceivedAtVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => MerchandiseNotAsDescribedReceivedAtVariant2._(json),
}; }

static const MerchandiseNotAsDescribedReceivedAtVariant2 $empty = MerchandiseNotAsDescribedReceivedAtVariant2._('');

static const List<MerchandiseNotAsDescribedReceivedAtVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MerchandiseNotAsDescribedReceivedAtVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MerchandiseNotAsDescribedReceivedAtVariant2($value)'; } 
 }

@immutable
final class MerchandiseNotAsDescribedReceivedAt {
  const MerchandiseNotAsDescribedReceivedAt({this.$int = const Omittable.absent(),
this.merchandiseNotAsDescribedReceivedAtVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const MerchandiseNotAsDescribedReceivedAt._({required this.rawValue, required this.$int,
required this.merchandiseNotAsDescribedReceivedAtVariant2,});
  factory MerchandiseNotAsDescribedReceivedAt.fromJson(Object? json) => MerchandiseNotAsDescribedReceivedAt._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
merchandiseNotAsDescribedReceivedAtVariant2: parseAnyOfVariant<MerchandiseNotAsDescribedReceivedAtVariant2>(json, (value) => MerchandiseNotAsDescribedReceivedAtVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<MerchandiseNotAsDescribedReceivedAtVariant2> merchandiseNotAsDescribedReceivedAtVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || merchandiseNotAsDescribedReceivedAtVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (merchandiseNotAsDescribedReceivedAtVariant2.isPresent) merchandiseNotAsDescribedReceivedAtVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is MerchandiseNotAsDescribedReceivedAt && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'MerchandiseNotAsDescribedReceivedAt(${toJson()})';
}
