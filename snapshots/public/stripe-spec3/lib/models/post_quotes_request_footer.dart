// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostQuotesRequestFooterVariant2 {const PostQuotesRequestFooterVariant2._(this.value);

factory PostQuotesRequestFooterVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostQuotesRequestFooterVariant2._(json),
};}

static const PostQuotesRequestFooterVariant2 $empty = PostQuotesRequestFooterVariant2._('');

static const List<PostQuotesRequestFooterVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostQuotesRequestFooterVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostQuotesRequestFooterVariant2($value)';}
}
/// A footer that will be displayed on the quote PDF. If no value is passed, the default footer configured in your [quote template settings](https://dashboard.stripe.com/settings/billing/quote) will be used.
@immutable
final class PostQuotesRequestFooter {
  const PostQuotesRequestFooter({this.string = const Omittable.absent(),
this.postQuotesRequestFooterVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostQuotesRequestFooter._({required this.rawValue, required this.string,
required this.postQuotesRequestFooterVariant2,});
  factory PostQuotesRequestFooter.fromJson(Object? json) => PostQuotesRequestFooter._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postQuotesRequestFooterVariant2: parseAnyOfVariant<PostQuotesRequestFooterVariant2>(json, (value) => PostQuotesRequestFooterVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostQuotesRequestFooterVariant2> postQuotesRequestFooterVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postQuotesRequestFooterVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postQuotesRequestFooterVariant2.isPresent) postQuotesRequestFooterVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostQuotesRequestFooter && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostQuotesRequestFooter(${toJson()})';
}
