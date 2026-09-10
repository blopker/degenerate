// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class MerchandiseNotAsDescribed2ReturnedAtVariant2 {const MerchandiseNotAsDescribed2ReturnedAtVariant2._(this.value);

factory MerchandiseNotAsDescribed2ReturnedAtVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => MerchandiseNotAsDescribed2ReturnedAtVariant2._(json),
};}

static const MerchandiseNotAsDescribed2ReturnedAtVariant2 $empty = MerchandiseNotAsDescribed2ReturnedAtVariant2._('');

static const List<MerchandiseNotAsDescribed2ReturnedAtVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is MerchandiseNotAsDescribed2ReturnedAtVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'MerchandiseNotAsDescribed2ReturnedAtVariant2($value)';}
}

@immutable
final class MerchandiseNotAsDescribed2ReturnedAt {
  const MerchandiseNotAsDescribed2ReturnedAt({this.$int = const Omittable.absent(),
this.merchandiseNotAsDescribed2ReturnedAtVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const MerchandiseNotAsDescribed2ReturnedAt._({required this.rawValue, required this.$int,
required this.merchandiseNotAsDescribed2ReturnedAtVariant2,});
  factory MerchandiseNotAsDescribed2ReturnedAt.fromJson(Object? json) => MerchandiseNotAsDescribed2ReturnedAt._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
merchandiseNotAsDescribed2ReturnedAtVariant2: parseAnyOfVariant<MerchandiseNotAsDescribed2ReturnedAtVariant2>(json, (value) => MerchandiseNotAsDescribed2ReturnedAtVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<MerchandiseNotAsDescribed2ReturnedAtVariant2> merchandiseNotAsDescribed2ReturnedAtVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || merchandiseNotAsDescribed2ReturnedAtVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (merchandiseNotAsDescribed2ReturnedAtVariant2.isPresent) merchandiseNotAsDescribed2ReturnedAtVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is MerchandiseNotAsDescribed2ReturnedAt && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'MerchandiseNotAsDescribed2ReturnedAt(${toJson()})';
}
