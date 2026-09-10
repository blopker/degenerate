// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class NotReceived2ExpectedAtVariant2 {const NotReceived2ExpectedAtVariant2._(this.value);

factory NotReceived2ExpectedAtVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => NotReceived2ExpectedAtVariant2._(json),
};}

static const NotReceived2ExpectedAtVariant2 $empty = NotReceived2ExpectedAtVariant2._('');

static const List<NotReceived2ExpectedAtVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is NotReceived2ExpectedAtVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'NotReceived2ExpectedAtVariant2($value)';}
}

@immutable
final class NotReceived2ExpectedAt {
  const NotReceived2ExpectedAt({this.$int = const Omittable.absent(),
this.notReceived2ExpectedAtVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const NotReceived2ExpectedAt._({required this.rawValue, required this.$int,
required this.notReceived2ExpectedAtVariant2,});
  factory NotReceived2ExpectedAt.fromJson(Object? json) => NotReceived2ExpectedAt._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
notReceived2ExpectedAtVariant2: parseAnyOfVariant<NotReceived2ExpectedAtVariant2>(json, (value) => NotReceived2ExpectedAtVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<NotReceived2ExpectedAtVariant2> notReceived2ExpectedAtVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || notReceived2ExpectedAtVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (notReceived2ExpectedAtVariant2.isPresent) notReceived2ExpectedAtVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is NotReceived2ExpectedAt && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'NotReceived2ExpectedAt(${toJson()})';
}
