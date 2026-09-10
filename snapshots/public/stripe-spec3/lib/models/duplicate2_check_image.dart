// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Duplicate2CheckImageVariant2 {const Duplicate2CheckImageVariant2._(this.value);

factory Duplicate2CheckImageVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => Duplicate2CheckImageVariant2._(json),
}; }

static const Duplicate2CheckImageVariant2 $empty = Duplicate2CheckImageVariant2._('');

static const List<Duplicate2CheckImageVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Duplicate2CheckImageVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Duplicate2CheckImageVariant2($value)'; } 
 }

@immutable
final class Duplicate2CheckImage {
  const Duplicate2CheckImage({this.string = const Omittable.absent(),
this.duplicate2CheckImageVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const Duplicate2CheckImage._({required this.rawValue, required this.string,
required this.duplicate2CheckImageVariant2,});
  factory Duplicate2CheckImage.fromJson(Object? json) => Duplicate2CheckImage._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
duplicate2CheckImageVariant2: parseAnyOfVariant<Duplicate2CheckImageVariant2>(json, (value) => Duplicate2CheckImageVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<Duplicate2CheckImageVariant2> duplicate2CheckImageVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || duplicate2CheckImageVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (duplicate2CheckImageVariant2.isPresent) duplicate2CheckImageVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is Duplicate2CheckImage && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'Duplicate2CheckImage(${toJson()})';
}
