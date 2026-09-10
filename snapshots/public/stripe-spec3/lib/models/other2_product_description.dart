// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Other2ProductDescriptionVariant2 {const Other2ProductDescriptionVariant2._(this.value);

factory Other2ProductDescriptionVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => Other2ProductDescriptionVariant2._(json),
}; }

static const Other2ProductDescriptionVariant2 $empty = Other2ProductDescriptionVariant2._('');

static const List<Other2ProductDescriptionVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Other2ProductDescriptionVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Other2ProductDescriptionVariant2($value)'; } 
 }

@immutable
final class Other2ProductDescription {
  const Other2ProductDescription({this.string = const Omittable.absent(),
this.other2ProductDescriptionVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const Other2ProductDescription._({required this.rawValue, required this.string,
required this.other2ProductDescriptionVariant2,});
  factory Other2ProductDescription.fromJson(Object? json) => Other2ProductDescription._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
other2ProductDescriptionVariant2: parseAnyOfVariant<Other2ProductDescriptionVariant2>(json, (value) => Other2ProductDescriptionVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<Other2ProductDescriptionVariant2> other2ProductDescriptionVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || other2ProductDescriptionVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (other2ProductDescriptionVariant2.isPresent) other2ProductDescriptionVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is Other2ProductDescription && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'Other2ProductDescription(${toJson()})';
}
