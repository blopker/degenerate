// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Fraudulent2ExplanationVariant2 {const Fraudulent2ExplanationVariant2._(this.value);

factory Fraudulent2ExplanationVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => Fraudulent2ExplanationVariant2._(json),
};}

static const Fraudulent2ExplanationVariant2 $empty = Fraudulent2ExplanationVariant2._('');

static const List<Fraudulent2ExplanationVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is Fraudulent2ExplanationVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'Fraudulent2ExplanationVariant2($value)';}
}

@immutable
final class Fraudulent2Explanation {
  const Fraudulent2Explanation({this.string = const Omittable.absent(),
this.fraudulent2ExplanationVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const Fraudulent2Explanation._({required this.rawValue, required this.string,
required this.fraudulent2ExplanationVariant2,});
  factory Fraudulent2Explanation.fromJson(Object? json) => Fraudulent2Explanation._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
fraudulent2ExplanationVariant2: parseAnyOfVariant<Fraudulent2ExplanationVariant2>(json, (value) => Fraudulent2ExplanationVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<Fraudulent2ExplanationVariant2> fraudulent2ExplanationVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || fraudulent2ExplanationVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (fraudulent2ExplanationVariant2.isPresent) fraudulent2ExplanationVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is Fraudulent2Explanation && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'Fraudulent2Explanation(${toJson()})';
}
