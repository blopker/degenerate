// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class NoValidAuthorization2ExplanationVariant2 {const NoValidAuthorization2ExplanationVariant2._(this.value);

factory NoValidAuthorization2ExplanationVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => NoValidAuthorization2ExplanationVariant2._(json),
};}

static const NoValidAuthorization2ExplanationVariant2 $empty = NoValidAuthorization2ExplanationVariant2._('');

static const List<NoValidAuthorization2ExplanationVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is NoValidAuthorization2ExplanationVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'NoValidAuthorization2ExplanationVariant2($value)';}
}

@immutable
final class NoValidAuthorization2Explanation {
  const NoValidAuthorization2Explanation({this.string = const Omittable.absent(),
this.noValidAuthorization2ExplanationVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const NoValidAuthorization2Explanation._({required this.rawValue, required this.string,
required this.noValidAuthorization2ExplanationVariant2,});
  factory NoValidAuthorization2Explanation.fromJson(Object? json) => NoValidAuthorization2Explanation._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
noValidAuthorization2ExplanationVariant2: parseAnyOfVariant<NoValidAuthorization2ExplanationVariant2>(json, (value) => NoValidAuthorization2ExplanationVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<NoValidAuthorization2ExplanationVariant2> noValidAuthorization2ExplanationVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || noValidAuthorization2ExplanationVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (noValidAuthorization2ExplanationVariant2.isPresent) noValidAuthorization2ExplanationVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is NoValidAuthorization2Explanation && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'NoValidAuthorization2Explanation(${toJson()})';
}
