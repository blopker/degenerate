// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Canceled2ExplanationVariant2 {const Canceled2ExplanationVariant2._(this.value);

factory Canceled2ExplanationVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => Canceled2ExplanationVariant2._(json),
};}

static const Canceled2ExplanationVariant2 $empty = Canceled2ExplanationVariant2._('');

static const List<Canceled2ExplanationVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is Canceled2ExplanationVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'Canceled2ExplanationVariant2($value)';}
}

@immutable
final class Canceled2Explanation {
  const Canceled2Explanation({this.string = const Omittable.absent(),
this.canceled2ExplanationVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const Canceled2Explanation._({required this.rawValue, required this.string,
required this.canceled2ExplanationVariant2,});
  factory Canceled2Explanation.fromJson(Object? json) => Canceled2Explanation._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
canceled2ExplanationVariant2: parseAnyOfVariant<Canceled2ExplanationVariant2>(json, (value) => Canceled2ExplanationVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<Canceled2ExplanationVariant2> canceled2ExplanationVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || canceled2ExplanationVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (canceled2ExplanationVariant2.isPresent) canceled2ExplanationVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is Canceled2Explanation && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'Canceled2Explanation(${toJson()})';
}
