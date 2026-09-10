// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostIssuingCardsRequestSecondLineVariant2 {const PostIssuingCardsRequestSecondLineVariant2._(this.value);

factory PostIssuingCardsRequestSecondLineVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostIssuingCardsRequestSecondLineVariant2._(json),
}; }

static const PostIssuingCardsRequestSecondLineVariant2 $empty = PostIssuingCardsRequestSecondLineVariant2._('');

static const List<PostIssuingCardsRequestSecondLineVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostIssuingCardsRequestSecondLineVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostIssuingCardsRequestSecondLineVariant2($value)'; } 
 }
/// The second line to print on the card. Max length: 24 characters.
@immutable
final class PostIssuingCardsRequestSecondLine {
  const PostIssuingCardsRequestSecondLine({this.string = const Omittable.absent(),
this.postIssuingCardsRequestSecondLineVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostIssuingCardsRequestSecondLine._({required this.rawValue, required this.string,
required this.postIssuingCardsRequestSecondLineVariant2,});
  factory PostIssuingCardsRequestSecondLine.fromJson(Object? json) => PostIssuingCardsRequestSecondLine._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postIssuingCardsRequestSecondLineVariant2: parseAnyOfVariant<PostIssuingCardsRequestSecondLineVariant2>(json, (value) => PostIssuingCardsRequestSecondLineVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostIssuingCardsRequestSecondLineVariant2> postIssuingCardsRequestSecondLineVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postIssuingCardsRequestSecondLineVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postIssuingCardsRequestSecondLineVariant2.isPresent) postIssuingCardsRequestSecondLineVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostIssuingCardsRequestSecondLine && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostIssuingCardsRequestSecondLine(${toJson()})';
}
