// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CanceledCanceledAtVariant2 {const CanceledCanceledAtVariant2._(this.value);

factory CanceledCanceledAtVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => CanceledCanceledAtVariant2._(json),
};}

static const CanceledCanceledAtVariant2 $empty = CanceledCanceledAtVariant2._('');

static const List<CanceledCanceledAtVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is CanceledCanceledAtVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'CanceledCanceledAtVariant2($value)';}
}

@immutable
final class CanceledCanceledAt {
  const CanceledCanceledAt({this.$int = const Omittable.absent(),
this.canceledCanceledAtVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const CanceledCanceledAt._({required this.rawValue, required this.$int,
required this.canceledCanceledAtVariant2,});
  factory CanceledCanceledAt.fromJson(Object? json) => CanceledCanceledAt._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
canceledCanceledAtVariant2: parseAnyOfVariant<CanceledCanceledAtVariant2>(json, (value) => CanceledCanceledAtVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<CanceledCanceledAtVariant2> canceledCanceledAtVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || canceledCanceledAtVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (canceledCanceledAtVariant2.isPresent) canceledCanceledAtVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is CanceledCanceledAt && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'CanceledCanceledAt(${toJson()})';
}
