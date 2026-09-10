// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class NoValidAuthorizationExplanationVariant2 {const NoValidAuthorizationExplanationVariant2._(this.value);

factory NoValidAuthorizationExplanationVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => NoValidAuthorizationExplanationVariant2._(json),
};}

static const NoValidAuthorizationExplanationVariant2 $empty = NoValidAuthorizationExplanationVariant2._('');

static const List<NoValidAuthorizationExplanationVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is NoValidAuthorizationExplanationVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'NoValidAuthorizationExplanationVariant2($value)';}
}

@immutable
final class NoValidAuthorizationExplanation {
  const NoValidAuthorizationExplanation({this.string = const Omittable.absent(),
this.noValidAuthorizationExplanationVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const NoValidAuthorizationExplanation._({required this.rawValue, required this.string,
required this.noValidAuthorizationExplanationVariant2,});
  factory NoValidAuthorizationExplanation.fromJson(Object? json) => NoValidAuthorizationExplanation._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
noValidAuthorizationExplanationVariant2: parseAnyOfVariant<NoValidAuthorizationExplanationVariant2>(json, (value) => NoValidAuthorizationExplanationVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<NoValidAuthorizationExplanationVariant2> noValidAuthorizationExplanationVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || noValidAuthorizationExplanationVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (noValidAuthorizationExplanationVariant2.isPresent) noValidAuthorizationExplanationVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is NoValidAuthorizationExplanation && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'NoValidAuthorizationExplanation(${toJson()})';
}
