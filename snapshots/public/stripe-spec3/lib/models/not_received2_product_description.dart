// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class NotReceived2ProductDescriptionVariant2 {const NotReceived2ProductDescriptionVariant2._(this.value);

factory NotReceived2ProductDescriptionVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => NotReceived2ProductDescriptionVariant2._(json),
}; }

static const NotReceived2ProductDescriptionVariant2 $empty = NotReceived2ProductDescriptionVariant2._('');

static const List<NotReceived2ProductDescriptionVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is NotReceived2ProductDescriptionVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'NotReceived2ProductDescriptionVariant2($value)'; } 
 }

@immutable
final class NotReceived2ProductDescription {
  const NotReceived2ProductDescription({this.string = const Omittable.absent(),
this.notReceived2ProductDescriptionVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const NotReceived2ProductDescription._({required this.rawValue, required this.string,
required this.notReceived2ProductDescriptionVariant2,});
  factory NotReceived2ProductDescription.fromJson(Object? json) => NotReceived2ProductDescription._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
notReceived2ProductDescriptionVariant2: parseAnyOfVariant<NotReceived2ProductDescriptionVariant2>(json, (value) => NotReceived2ProductDescriptionVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<NotReceived2ProductDescriptionVariant2> notReceived2ProductDescriptionVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || notReceived2ProductDescriptionVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (notReceived2ProductDescriptionVariant2.isPresent) notReceived2ProductDescriptionVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is NotReceived2ProductDescription && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'NotReceived2ProductDescription(${toJson()})';
}
