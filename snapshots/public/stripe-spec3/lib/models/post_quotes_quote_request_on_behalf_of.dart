// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostQuotesQuoteRequestOnBehalfOfVariant2 {const PostQuotesQuoteRequestOnBehalfOfVariant2._(this.value);

factory PostQuotesQuoteRequestOnBehalfOfVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostQuotesQuoteRequestOnBehalfOfVariant2._(json),
}; }

static const PostQuotesQuoteRequestOnBehalfOfVariant2 $empty = PostQuotesQuoteRequestOnBehalfOfVariant2._('');

static const List<PostQuotesQuoteRequestOnBehalfOfVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostQuotesQuoteRequestOnBehalfOfVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostQuotesQuoteRequestOnBehalfOfVariant2($value)'; } 
 }
/// The account on behalf of which to charge.
@immutable
final class PostQuotesQuoteRequestOnBehalfOf {
  const PostQuotesQuoteRequestOnBehalfOf({this.string = const Omittable.absent(),
this.postQuotesQuoteRequestOnBehalfOfVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostQuotesQuoteRequestOnBehalfOf._({required this.rawValue, required this.string,
required this.postQuotesQuoteRequestOnBehalfOfVariant2,});
  factory PostQuotesQuoteRequestOnBehalfOf.fromJson(Object? json) => PostQuotesQuoteRequestOnBehalfOf._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postQuotesQuoteRequestOnBehalfOfVariant2: parseAnyOfVariant<PostQuotesQuoteRequestOnBehalfOfVariant2>(json, (value) => PostQuotesQuoteRequestOnBehalfOfVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostQuotesQuoteRequestOnBehalfOfVariant2> postQuotesQuoteRequestOnBehalfOfVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postQuotesQuoteRequestOnBehalfOfVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postQuotesQuoteRequestOnBehalfOfVariant2.isPresent) postQuotesQuoteRequestOnBehalfOfVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostQuotesQuoteRequestOnBehalfOf && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostQuotesQuoteRequestOnBehalfOf(${toJson()})';
}
