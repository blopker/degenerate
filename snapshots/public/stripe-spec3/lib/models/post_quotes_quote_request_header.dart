// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostQuotesQuoteRequestHeaderVariant2 {const PostQuotesQuoteRequestHeaderVariant2._(this.value);

factory PostQuotesQuoteRequestHeaderVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostQuotesQuoteRequestHeaderVariant2._(json),
};}

static const PostQuotesQuoteRequestHeaderVariant2 $empty = PostQuotesQuoteRequestHeaderVariant2._('');

static const List<PostQuotesQuoteRequestHeaderVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostQuotesQuoteRequestHeaderVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostQuotesQuoteRequestHeaderVariant2($value)';}
}
/// A header that will be displayed on the quote PDF.
@immutable
final class PostQuotesQuoteRequestHeader {
  const PostQuotesQuoteRequestHeader({this.string = const Omittable.absent(),
this.postQuotesQuoteRequestHeaderVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostQuotesQuoteRequestHeader._({required this.rawValue, required this.string,
required this.postQuotesQuoteRequestHeaderVariant2,});
  factory PostQuotesQuoteRequestHeader.fromJson(Object? json) => PostQuotesQuoteRequestHeader._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postQuotesQuoteRequestHeaderVariant2: parseAnyOfVariant<PostQuotesQuoteRequestHeaderVariant2>(json, (value) => PostQuotesQuoteRequestHeaderVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostQuotesQuoteRequestHeaderVariant2> postQuotesQuoteRequestHeaderVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postQuotesQuoteRequestHeaderVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postQuotesQuoteRequestHeaderVariant2.isPresent) postQuotesQuoteRequestHeaderVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostQuotesQuoteRequestHeader && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostQuotesQuoteRequestHeader(${toJson()})';
}
