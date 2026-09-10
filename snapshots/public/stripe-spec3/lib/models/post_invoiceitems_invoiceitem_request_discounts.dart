// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_invoiceitems_invoiceitem_request_discounts_variant1.dart';@immutable final class PostInvoiceitemsInvoiceitemRequestDiscountsVariant2 {const PostInvoiceitemsInvoiceitemRequestDiscountsVariant2._(this.value);

factory PostInvoiceitemsInvoiceitemRequestDiscountsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoiceitemsInvoiceitemRequestDiscountsVariant2._(json),
}; }

static const PostInvoiceitemsInvoiceitemRequestDiscountsVariant2 $empty = PostInvoiceitemsInvoiceitemRequestDiscountsVariant2._('');

static const List<PostInvoiceitemsInvoiceitemRequestDiscountsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoiceitemsInvoiceitemRequestDiscountsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoiceitemsInvoiceitemRequestDiscountsVariant2($value)'; } 
 }
/// The coupons, promotion codes & existing discounts which apply to the invoice item or invoice line item. Item discounts are applied before invoice discounts. Pass an empty string to remove previously-defined discounts.
@immutable
final class PostInvoiceitemsInvoiceitemRequestDiscounts {
  const PostInvoiceitemsInvoiceitemRequestDiscounts({this.listPostInvoiceitemsInvoiceitemRequestDiscountsVariant1 = const Omittable.absent(),
this.postInvoiceitemsInvoiceitemRequestDiscountsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoiceitemsInvoiceitemRequestDiscounts._({required this.rawValue, required this.listPostInvoiceitemsInvoiceitemRequestDiscountsVariant1,
required this.postInvoiceitemsInvoiceitemRequestDiscountsVariant2,});
  factory PostInvoiceitemsInvoiceitemRequestDiscounts.fromJson(Object? json) => PostInvoiceitemsInvoiceitemRequestDiscounts._(
    rawValue: Omittable(json),
    listPostInvoiceitemsInvoiceitemRequestDiscountsVariant1: parseAnyOfVariant<List<PostInvoiceitemsInvoiceitemRequestDiscountsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostInvoiceitemsInvoiceitemRequestDiscountsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postInvoiceitemsInvoiceitemRequestDiscountsVariant2: parseAnyOfVariant<PostInvoiceitemsInvoiceitemRequestDiscountsVariant2>(json, (value) => PostInvoiceitemsInvoiceitemRequestDiscountsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostInvoiceitemsInvoiceitemRequestDiscountsVariant1>> listPostInvoiceitemsInvoiceitemRequestDiscountsVariant1;
final Omittable<PostInvoiceitemsInvoiceitemRequestDiscountsVariant2> postInvoiceitemsInvoiceitemRequestDiscountsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostInvoiceitemsInvoiceitemRequestDiscountsVariant1.isPresent || postInvoiceitemsInvoiceitemRequestDiscountsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostInvoiceitemsInvoiceitemRequestDiscountsVariant1.isPresent) listPostInvoiceitemsInvoiceitemRequestDiscountsVariant1.value?.map((e) => e.toJson()).toList(),
if (postInvoiceitemsInvoiceitemRequestDiscountsVariant2.isPresent) postInvoiceitemsInvoiceitemRequestDiscountsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoiceitemsInvoiceitemRequestDiscounts && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoiceitemsInvoiceitemRequestDiscounts(${toJson()})';
}
