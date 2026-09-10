// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_quotes_request_line_items_discounts_variant1.dart';@immutable final class PostQuotesRequestLineItemsDiscountsVariant2 {const PostQuotesRequestLineItemsDiscountsVariant2._(this.value);

factory PostQuotesRequestLineItemsDiscountsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostQuotesRequestLineItemsDiscountsVariant2._(json),
};}

static const PostQuotesRequestLineItemsDiscountsVariant2 $empty = PostQuotesRequestLineItemsDiscountsVariant2._('');

static const List<PostQuotesRequestLineItemsDiscountsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostQuotesRequestLineItemsDiscountsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostQuotesRequestLineItemsDiscountsVariant2($value)';}
}

@immutable
final class PostQuotesRequestLineItemsDiscounts {
  const PostQuotesRequestLineItemsDiscounts({this.listPostQuotesRequestLineItemsDiscountsVariant1 = const Omittable.absent(),
this.postQuotesRequestLineItemsDiscountsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostQuotesRequestLineItemsDiscounts._({required this.rawValue, required this.listPostQuotesRequestLineItemsDiscountsVariant1,
required this.postQuotesRequestLineItemsDiscountsVariant2,});
  factory PostQuotesRequestLineItemsDiscounts.fromJson(Object? json) => PostQuotesRequestLineItemsDiscounts._(
    rawValue: Omittable(json),
    listPostQuotesRequestLineItemsDiscountsVariant1: parseAnyOfVariant<List<PostQuotesRequestLineItemsDiscountsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostQuotesRequestLineItemsDiscountsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postQuotesRequestLineItemsDiscountsVariant2: parseAnyOfVariant<PostQuotesRequestLineItemsDiscountsVariant2>(json, (value) => PostQuotesRequestLineItemsDiscountsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostQuotesRequestLineItemsDiscountsVariant1>> listPostQuotesRequestLineItemsDiscountsVariant1;
final Omittable<PostQuotesRequestLineItemsDiscountsVariant2> postQuotesRequestLineItemsDiscountsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostQuotesRequestLineItemsDiscountsVariant1.isPresent || postQuotesRequestLineItemsDiscountsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostQuotesRequestLineItemsDiscountsVariant1.isPresent) listPostQuotesRequestLineItemsDiscountsVariant1.value?.map((e) => e.toJson()).toList(),
if (postQuotesRequestLineItemsDiscountsVariant2.isPresent) postQuotesRequestLineItemsDiscountsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostQuotesRequestLineItemsDiscounts && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostQuotesRequestLineItemsDiscounts(${toJson()})';
}
