// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'review.dart';/// ID of the review associated with this charge if one exists.
@immutable
final class ChargeReview {
  const ChargeReview({this.string = const Omittable.absent(),
this.review = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const ChargeReview._({required this.rawValue, required this.string,
required this.review,});
  factory ChargeReview.fromJson(Object? json) => ChargeReview._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
review: parseAnyOfVariant<Review>(json, (value) => Review.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<Review> review;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || string.isPresent || review.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (review.isPresent) review.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is ChargeReview && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'ChargeReview(${toJson()})';
}
