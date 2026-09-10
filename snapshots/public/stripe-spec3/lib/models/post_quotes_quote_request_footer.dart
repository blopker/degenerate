// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostQuotesQuoteRequestFooterVariant2 {const PostQuotesQuoteRequestFooterVariant2._(this.value);

factory PostQuotesQuoteRequestFooterVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostQuotesQuoteRequestFooterVariant2._(json),
}; }

static const PostQuotesQuoteRequestFooterVariant2 $empty = PostQuotesQuoteRequestFooterVariant2._('');

static const List<PostQuotesQuoteRequestFooterVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostQuotesQuoteRequestFooterVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostQuotesQuoteRequestFooterVariant2($value)'; } 
 }
/// A footer that will be displayed on the quote PDF.
@immutable
final class PostQuotesQuoteRequestFooter {
  const PostQuotesQuoteRequestFooter({this.string = const Omittable.absent(),
this.postQuotesQuoteRequestFooterVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostQuotesQuoteRequestFooter._({required this.rawValue, required this.string,
required this.postQuotesQuoteRequestFooterVariant2,});
  factory PostQuotesQuoteRequestFooter.fromJson(Object? json) => PostQuotesQuoteRequestFooter._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postQuotesQuoteRequestFooterVariant2: parseAnyOfVariant<PostQuotesQuoteRequestFooterVariant2>(json, (value) => PostQuotesQuoteRequestFooterVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostQuotesQuoteRequestFooterVariant2> postQuotesQuoteRequestFooterVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postQuotesQuoteRequestFooterVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postQuotesQuoteRequestFooterVariant2.isPresent) postQuotesQuoteRequestFooterVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostQuotesQuoteRequestFooter && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostQuotesQuoteRequestFooter(${toJson()})';
}
