// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostQuotesQuoteRequestDescriptionVariant2 {const PostQuotesQuoteRequestDescriptionVariant2._(this.value);

factory PostQuotesQuoteRequestDescriptionVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostQuotesQuoteRequestDescriptionVariant2._(json),
}; }

static const PostQuotesQuoteRequestDescriptionVariant2 $empty = PostQuotesQuoteRequestDescriptionVariant2._('');

static const List<PostQuotesQuoteRequestDescriptionVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostQuotesQuoteRequestDescriptionVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostQuotesQuoteRequestDescriptionVariant2($value)'; } 
 }
/// A description that will be displayed on the quote PDF.
@immutable
final class PostQuotesQuoteRequestDescription {
  const PostQuotesQuoteRequestDescription({this.string = const Omittable.absent(),
this.postQuotesQuoteRequestDescriptionVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostQuotesQuoteRequestDescription._({required this.rawValue, required this.string,
required this.postQuotesQuoteRequestDescriptionVariant2,});
  factory PostQuotesQuoteRequestDescription.fromJson(Object? json) => PostQuotesQuoteRequestDescription._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postQuotesQuoteRequestDescriptionVariant2: parseAnyOfVariant<PostQuotesQuoteRequestDescriptionVariant2>(json, (value) => PostQuotesQuoteRequestDescriptionVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostQuotesQuoteRequestDescriptionVariant2> postQuotesQuoteRequestDescriptionVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postQuotesQuoteRequestDescriptionVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postQuotesQuoteRequestDescriptionVariant2.isPresent) postQuotesQuoteRequestDescriptionVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostQuotesQuoteRequestDescription && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostQuotesQuoteRequestDescription(${toJson()})';
}
