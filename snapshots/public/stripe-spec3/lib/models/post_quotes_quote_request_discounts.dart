// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_quotes_quote_request_discounts_variant1.dart';@immutable final class PostQuotesQuoteRequestDiscountsVariant2 {const PostQuotesQuoteRequestDiscountsVariant2._(this.value);

factory PostQuotesQuoteRequestDiscountsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostQuotesQuoteRequestDiscountsVariant2._(json),
};}

static const PostQuotesQuoteRequestDiscountsVariant2 $empty = PostQuotesQuoteRequestDiscountsVariant2._('');

static const List<PostQuotesQuoteRequestDiscountsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostQuotesQuoteRequestDiscountsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostQuotesQuoteRequestDiscountsVariant2($value)';}
}
/// The discounts applied to the quote.
@immutable
final class PostQuotesQuoteRequestDiscounts {
  const PostQuotesQuoteRequestDiscounts({this.listPostQuotesQuoteRequestDiscountsVariant1 = const Omittable.absent(),
this.postQuotesQuoteRequestDiscountsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostQuotesQuoteRequestDiscounts._({required this.rawValue, required this.listPostQuotesQuoteRequestDiscountsVariant1,
required this.postQuotesQuoteRequestDiscountsVariant2,});
  factory PostQuotesQuoteRequestDiscounts.fromJson(Object? json) => PostQuotesQuoteRequestDiscounts._(
    rawValue: Omittable(json),
    listPostQuotesQuoteRequestDiscountsVariant1: parseAnyOfVariant<List<PostQuotesQuoteRequestDiscountsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostQuotesQuoteRequestDiscountsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postQuotesQuoteRequestDiscountsVariant2: parseAnyOfVariant<PostQuotesQuoteRequestDiscountsVariant2>(json, (value) => PostQuotesQuoteRequestDiscountsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostQuotesQuoteRequestDiscountsVariant1>> listPostQuotesQuoteRequestDiscountsVariant1;
final Omittable<PostQuotesQuoteRequestDiscountsVariant2> postQuotesQuoteRequestDiscountsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostQuotesQuoteRequestDiscountsVariant1.isPresent || postQuotesQuoteRequestDiscountsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostQuotesQuoteRequestDiscountsVariant1.isPresent) listPostQuotesQuoteRequestDiscountsVariant1.value?.map((e) => e.toJson()).toList(),
if (postQuotesQuoteRequestDiscountsVariant2.isPresent) postQuotesQuoteRequestDiscountsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostQuotesQuoteRequestDiscounts && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostQuotesQuoteRequestDiscounts(${toJson()})';
}
