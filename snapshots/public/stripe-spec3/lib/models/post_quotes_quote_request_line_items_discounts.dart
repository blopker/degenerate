// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_quotes_quote_request_line_items_discounts_variant1.dart';@immutable final class PostQuotesQuoteRequestLineItemsDiscountsVariant2 {const PostQuotesQuoteRequestLineItemsDiscountsVariant2._(this.value);

factory PostQuotesQuoteRequestLineItemsDiscountsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostQuotesQuoteRequestLineItemsDiscountsVariant2._(json),
};}

static const PostQuotesQuoteRequestLineItemsDiscountsVariant2 $empty = PostQuotesQuoteRequestLineItemsDiscountsVariant2._('');

static const List<PostQuotesQuoteRequestLineItemsDiscountsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostQuotesQuoteRequestLineItemsDiscountsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostQuotesQuoteRequestLineItemsDiscountsVariant2($value)';}
}

@immutable
final class PostQuotesQuoteRequestLineItemsDiscounts {
  const PostQuotesQuoteRequestLineItemsDiscounts({this.listPostQuotesQuoteRequestLineItemsDiscountsVariant1 = const Omittable.absent(),
this.postQuotesQuoteRequestLineItemsDiscountsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostQuotesQuoteRequestLineItemsDiscounts._({required this.rawValue, required this.listPostQuotesQuoteRequestLineItemsDiscountsVariant1,
required this.postQuotesQuoteRequestLineItemsDiscountsVariant2,});
  factory PostQuotesQuoteRequestLineItemsDiscounts.fromJson(Object? json) => PostQuotesQuoteRequestLineItemsDiscounts._(
    rawValue: Omittable(json),
    listPostQuotesQuoteRequestLineItemsDiscountsVariant1: parseAnyOfVariant<List<PostQuotesQuoteRequestLineItemsDiscountsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostQuotesQuoteRequestLineItemsDiscountsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postQuotesQuoteRequestLineItemsDiscountsVariant2: parseAnyOfVariant<PostQuotesQuoteRequestLineItemsDiscountsVariant2>(json, (value) => PostQuotesQuoteRequestLineItemsDiscountsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostQuotesQuoteRequestLineItemsDiscountsVariant1>> listPostQuotesQuoteRequestLineItemsDiscountsVariant1;
final Omittable<PostQuotesQuoteRequestLineItemsDiscountsVariant2> postQuotesQuoteRequestLineItemsDiscountsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostQuotesQuoteRequestLineItemsDiscountsVariant1.isPresent || postQuotesQuoteRequestLineItemsDiscountsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostQuotesQuoteRequestLineItemsDiscountsVariant1.isPresent) listPostQuotesQuoteRequestLineItemsDiscountsVariant1.value?.map((e) => e.toJson()).toList(),
if (postQuotesQuoteRequestLineItemsDiscountsVariant2.isPresent) postQuotesQuoteRequestLineItemsDiscountsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostQuotesQuoteRequestLineItemsDiscounts && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostQuotesQuoteRequestLineItemsDiscounts(${toJson()})';
}
