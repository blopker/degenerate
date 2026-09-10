// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_invoiceitems_request_discounts_variant1.dart';@immutable final class PostInvoiceitemsRequestDiscountsVariant2 {const PostInvoiceitemsRequestDiscountsVariant2._(this.value);

factory PostInvoiceitemsRequestDiscountsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostInvoiceitemsRequestDiscountsVariant2._(json),
};}

static const PostInvoiceitemsRequestDiscountsVariant2 $empty = PostInvoiceitemsRequestDiscountsVariant2._('');

static const List<PostInvoiceitemsRequestDiscountsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostInvoiceitemsRequestDiscountsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostInvoiceitemsRequestDiscountsVariant2($value)';}
}
/// The coupons and promotion codes to redeem into discounts for the invoice item or invoice line item.
@immutable
final class PostInvoiceitemsRequestDiscounts {
  const PostInvoiceitemsRequestDiscounts({this.listPostInvoiceitemsRequestDiscountsVariant1 = const Omittable.absent(),
this.postInvoiceitemsRequestDiscountsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoiceitemsRequestDiscounts._({required this.rawValue, required this.listPostInvoiceitemsRequestDiscountsVariant1,
required this.postInvoiceitemsRequestDiscountsVariant2,});
  factory PostInvoiceitemsRequestDiscounts.fromJson(Object? json) => PostInvoiceitemsRequestDiscounts._(
    rawValue: Omittable(json),
    listPostInvoiceitemsRequestDiscountsVariant1: parseAnyOfVariant<List<PostInvoiceitemsRequestDiscountsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostInvoiceitemsRequestDiscountsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postInvoiceitemsRequestDiscountsVariant2: parseAnyOfVariant<PostInvoiceitemsRequestDiscountsVariant2>(json, (value) => PostInvoiceitemsRequestDiscountsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostInvoiceitemsRequestDiscountsVariant1>> listPostInvoiceitemsRequestDiscountsVariant1;
final Omittable<PostInvoiceitemsRequestDiscountsVariant2> postInvoiceitemsRequestDiscountsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostInvoiceitemsRequestDiscountsVariant1.isPresent || postInvoiceitemsRequestDiscountsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostInvoiceitemsRequestDiscountsVariant1.isPresent) listPostInvoiceitemsRequestDiscountsVariant1.value?.map((e) => e.toJson()).toList(),
if (postInvoiceitemsRequestDiscountsVariant2.isPresent) postInvoiceitemsRequestDiscountsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoiceitemsRequestDiscounts && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoiceitemsRequestDiscounts(${toJson()})';
}
