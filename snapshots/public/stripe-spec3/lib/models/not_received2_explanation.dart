// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class NotReceived2ExplanationVariant2 {const NotReceived2ExplanationVariant2._(this.value);

factory NotReceived2ExplanationVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => NotReceived2ExplanationVariant2._(json),
}; }

static const NotReceived2ExplanationVariant2 $empty = NotReceived2ExplanationVariant2._('');

static const List<NotReceived2ExplanationVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is NotReceived2ExplanationVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'NotReceived2ExplanationVariant2($value)'; } 
 }

@immutable
final class NotReceived2Explanation {
  const NotReceived2Explanation({this.string = const Omittable.absent(),
this.notReceived2ExplanationVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const NotReceived2Explanation._({required this.rawValue, required this.string,
required this.notReceived2ExplanationVariant2,});
  factory NotReceived2Explanation.fromJson(Object? json) => NotReceived2Explanation._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
notReceived2ExplanationVariant2: parseAnyOfVariant<NotReceived2ExplanationVariant2>(json, (value) => NotReceived2ExplanationVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<NotReceived2ExplanationVariant2> notReceived2ExplanationVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || notReceived2ExplanationVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (notReceived2ExplanationVariant2.isPresent) notReceived2ExplanationVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is NotReceived2Explanation && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'NotReceived2Explanation(${toJson()})';
}
