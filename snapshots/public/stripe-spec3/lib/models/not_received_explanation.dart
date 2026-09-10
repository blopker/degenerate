// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class NotReceivedExplanationVariant2 {const NotReceivedExplanationVariant2._(this.value);

factory NotReceivedExplanationVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => NotReceivedExplanationVariant2._(json),
}; }

static const NotReceivedExplanationVariant2 $empty = NotReceivedExplanationVariant2._('');

static const List<NotReceivedExplanationVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is NotReceivedExplanationVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'NotReceivedExplanationVariant2($value)'; } 
 }

@immutable
final class NotReceivedExplanation {
  const NotReceivedExplanation({this.string = const Omittable.absent(),
this.notReceivedExplanationVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const NotReceivedExplanation._({required this.rawValue, required this.string,
required this.notReceivedExplanationVariant2,});
  factory NotReceivedExplanation.fromJson(Object? json) => NotReceivedExplanation._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
notReceivedExplanationVariant2: parseAnyOfVariant<NotReceivedExplanationVariant2>(json, (value) => NotReceivedExplanationVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<NotReceivedExplanationVariant2> notReceivedExplanationVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || notReceivedExplanationVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (notReceivedExplanationVariant2.isPresent) notReceivedExplanationVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is NotReceivedExplanation && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'NotReceivedExplanation(${toJson()})';
}
