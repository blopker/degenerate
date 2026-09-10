// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class NotReceivedProductDescriptionVariant2 {const NotReceivedProductDescriptionVariant2._(this.value);

factory NotReceivedProductDescriptionVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => NotReceivedProductDescriptionVariant2._(json),
}; }

static const NotReceivedProductDescriptionVariant2 $empty = NotReceivedProductDescriptionVariant2._('');

static const List<NotReceivedProductDescriptionVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is NotReceivedProductDescriptionVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'NotReceivedProductDescriptionVariant2($value)'; } 
 }

@immutable
final class NotReceivedProductDescription {
  const NotReceivedProductDescription({this.string = const Omittable.absent(),
this.notReceivedProductDescriptionVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const NotReceivedProductDescription._({required this.rawValue, required this.string,
required this.notReceivedProductDescriptionVariant2,});
  factory NotReceivedProductDescription.fromJson(Object? json) => NotReceivedProductDescription._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
notReceivedProductDescriptionVariant2: parseAnyOfVariant<NotReceivedProductDescriptionVariant2>(json, (value) => NotReceivedProductDescriptionVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<NotReceivedProductDescriptionVariant2> notReceivedProductDescriptionVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || notReceivedProductDescriptionVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (notReceivedProductDescriptionVariant2.isPresent) notReceivedProductDescriptionVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is NotReceivedProductDescription && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'NotReceivedProductDescription(${toJson()})';
}
