// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostQuotesQuoteRequestSubscriptionDataDescriptionVariant2 {const PostQuotesQuoteRequestSubscriptionDataDescriptionVariant2._(this.value);

factory PostQuotesQuoteRequestSubscriptionDataDescriptionVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostQuotesQuoteRequestSubscriptionDataDescriptionVariant2._(json),
}; }

static const PostQuotesQuoteRequestSubscriptionDataDescriptionVariant2 $empty = PostQuotesQuoteRequestSubscriptionDataDescriptionVariant2._('');

static const List<PostQuotesQuoteRequestSubscriptionDataDescriptionVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostQuotesQuoteRequestSubscriptionDataDescriptionVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostQuotesQuoteRequestSubscriptionDataDescriptionVariant2($value)'; } 
 }

@immutable
final class PostQuotesQuoteRequestSubscriptionDataDescription {
  const PostQuotesQuoteRequestSubscriptionDataDescription({this.string = const Omittable.absent(),
this.postQuotesQuoteRequestSubscriptionDataDescriptionVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostQuotesQuoteRequestSubscriptionDataDescription._({required this.rawValue, required this.string,
required this.postQuotesQuoteRequestSubscriptionDataDescriptionVariant2,});
  factory PostQuotesQuoteRequestSubscriptionDataDescription.fromJson(Object? json) => PostQuotesQuoteRequestSubscriptionDataDescription._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postQuotesQuoteRequestSubscriptionDataDescriptionVariant2: parseAnyOfVariant<PostQuotesQuoteRequestSubscriptionDataDescriptionVariant2>(json, (value) => PostQuotesQuoteRequestSubscriptionDataDescriptionVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostQuotesQuoteRequestSubscriptionDataDescriptionVariant2> postQuotesQuoteRequestSubscriptionDataDescriptionVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postQuotesQuoteRequestSubscriptionDataDescriptionVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postQuotesQuoteRequestSubscriptionDataDescriptionVariant2.isPresent) postQuotesQuoteRequestSubscriptionDataDescriptionVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostQuotesQuoteRequestSubscriptionDataDescription && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostQuotesQuoteRequestSubscriptionDataDescription(${toJson()})';
}
