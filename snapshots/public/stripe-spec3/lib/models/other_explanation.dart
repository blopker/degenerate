// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class OtherExplanationVariant2 {const OtherExplanationVariant2._(this.value);

factory OtherExplanationVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => OtherExplanationVariant2._(json),
};}

static const OtherExplanationVariant2 $empty = OtherExplanationVariant2._('');

static const List<OtherExplanationVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is OtherExplanationVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'OtherExplanationVariant2($value)';}
}

@immutable
final class OtherExplanation {
  const OtherExplanation({this.string = const Omittable.absent(),
this.otherExplanationVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const OtherExplanation._({required this.rawValue, required this.string,
required this.otherExplanationVariant2,});
  factory OtherExplanation.fromJson(Object? json) => OtherExplanation._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
otherExplanationVariant2: parseAnyOfVariant<OtherExplanationVariant2>(json, (value) => OtherExplanationVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<OtherExplanationVariant2> otherExplanationVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || otherExplanationVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (otherExplanationVariant2.isPresent) otherExplanationVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is OtherExplanation && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'OtherExplanation(${toJson()})';
}
