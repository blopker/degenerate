// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostQuotesRequestHeaderVariant2 {const PostQuotesRequestHeaderVariant2._(this.value);

factory PostQuotesRequestHeaderVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostQuotesRequestHeaderVariant2._(json),
};}

static const PostQuotesRequestHeaderVariant2 $empty = PostQuotesRequestHeaderVariant2._('');

static const List<PostQuotesRequestHeaderVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostQuotesRequestHeaderVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostQuotesRequestHeaderVariant2($value)';}
}
/// A header that will be displayed on the quote PDF. If no value is passed, the default header configured in your [quote template settings](https://dashboard.stripe.com/settings/billing/quote) will be used.
@immutable
final class PostQuotesRequestHeader {
  const PostQuotesRequestHeader({this.string = const Omittable.absent(),
this.postQuotesRequestHeaderVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostQuotesRequestHeader._({required this.rawValue, required this.string,
required this.postQuotesRequestHeaderVariant2,});
  factory PostQuotesRequestHeader.fromJson(Object? json) => PostQuotesRequestHeader._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postQuotesRequestHeaderVariant2: parseAnyOfVariant<PostQuotesRequestHeaderVariant2>(json, (value) => PostQuotesRequestHeaderVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostQuotesRequestHeaderVariant2> postQuotesRequestHeaderVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postQuotesRequestHeaderVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postQuotesRequestHeaderVariant2.isPresent) postQuotesRequestHeaderVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostQuotesRequestHeader && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostQuotesRequestHeader(${toJson()})';
}
