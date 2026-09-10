// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_invoices_invoice_lines_line_item_id_request_discounts_variant1.dart';@immutable final class PostInvoicesInvoiceLinesLineItemIdRequestDiscountsVariant2 {const PostInvoicesInvoiceLinesLineItemIdRequestDiscountsVariant2._(this.value);

factory PostInvoicesInvoiceLinesLineItemIdRequestDiscountsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesInvoiceLinesLineItemIdRequestDiscountsVariant2._(json),
}; }

static const PostInvoicesInvoiceLinesLineItemIdRequestDiscountsVariant2 $empty = PostInvoicesInvoiceLinesLineItemIdRequestDiscountsVariant2._('');

static const List<PostInvoicesInvoiceLinesLineItemIdRequestDiscountsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesInvoiceLinesLineItemIdRequestDiscountsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesInvoiceLinesLineItemIdRequestDiscountsVariant2($value)'; } 
 }
/// The coupons, promotion codes & existing discounts which apply to the line item. Item discounts are applied before invoice discounts. Pass an empty string to remove previously-defined discounts.
@immutable
final class PostInvoicesInvoiceLinesLineItemIdRequestDiscounts {
  const PostInvoicesInvoiceLinesLineItemIdRequestDiscounts({this.listPostInvoicesInvoiceLinesLineItemIdRequestDiscountsVariant1 = const Omittable.absent(),
this.postInvoicesInvoiceLinesLineItemIdRequestDiscountsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesInvoiceLinesLineItemIdRequestDiscounts._({required this.rawValue, required this.listPostInvoicesInvoiceLinesLineItemIdRequestDiscountsVariant1,
required this.postInvoicesInvoiceLinesLineItemIdRequestDiscountsVariant2,});
  factory PostInvoicesInvoiceLinesLineItemIdRequestDiscounts.fromJson(Object? json) => PostInvoicesInvoiceLinesLineItemIdRequestDiscounts._(
    rawValue: Omittable(json),
    listPostInvoicesInvoiceLinesLineItemIdRequestDiscountsVariant1: parseAnyOfVariant<List<PostInvoicesInvoiceLinesLineItemIdRequestDiscountsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostInvoicesInvoiceLinesLineItemIdRequestDiscountsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postInvoicesInvoiceLinesLineItemIdRequestDiscountsVariant2: parseAnyOfVariant<PostInvoicesInvoiceLinesLineItemIdRequestDiscountsVariant2>(json, (value) => PostInvoicesInvoiceLinesLineItemIdRequestDiscountsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostInvoicesInvoiceLinesLineItemIdRequestDiscountsVariant1>> listPostInvoicesInvoiceLinesLineItemIdRequestDiscountsVariant1;
final Omittable<PostInvoicesInvoiceLinesLineItemIdRequestDiscountsVariant2> postInvoicesInvoiceLinesLineItemIdRequestDiscountsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostInvoicesInvoiceLinesLineItemIdRequestDiscountsVariant1.isPresent || postInvoicesInvoiceLinesLineItemIdRequestDiscountsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostInvoicesInvoiceLinesLineItemIdRequestDiscountsVariant1.isPresent) listPostInvoicesInvoiceLinesLineItemIdRequestDiscountsVariant1.value?.map((e) => e.toJson()).toList(),
if (postInvoicesInvoiceLinesLineItemIdRequestDiscountsVariant2.isPresent) postInvoicesInvoiceLinesLineItemIdRequestDiscountsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesInvoiceLinesLineItemIdRequestDiscounts && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesInvoiceLinesLineItemIdRequestDiscounts(${toJson()})';
}
