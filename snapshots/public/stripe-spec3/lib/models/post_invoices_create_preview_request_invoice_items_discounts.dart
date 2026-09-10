// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_invoices_create_preview_request_invoice_items_discounts_variant1.dart';@immutable final class PostInvoicesCreatePreviewRequestInvoiceItemsDiscountsVariant2 {const PostInvoicesCreatePreviewRequestInvoiceItemsDiscountsVariant2._(this.value);

factory PostInvoicesCreatePreviewRequestInvoiceItemsDiscountsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesCreatePreviewRequestInvoiceItemsDiscountsVariant2._(json),
}; }

static const PostInvoicesCreatePreviewRequestInvoiceItemsDiscountsVariant2 $empty = PostInvoicesCreatePreviewRequestInvoiceItemsDiscountsVariant2._('');

static const List<PostInvoicesCreatePreviewRequestInvoiceItemsDiscountsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesCreatePreviewRequestInvoiceItemsDiscountsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesCreatePreviewRequestInvoiceItemsDiscountsVariant2($value)'; } 
 }

@immutable
final class PostInvoicesCreatePreviewRequestInvoiceItemsDiscounts {
  const PostInvoicesCreatePreviewRequestInvoiceItemsDiscounts({this.listPostInvoicesCreatePreviewRequestInvoiceItemsDiscountsVariant1 = const Omittable.absent(),
this.postInvoicesCreatePreviewRequestInvoiceItemsDiscountsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesCreatePreviewRequestInvoiceItemsDiscounts._({required this.rawValue, required this.listPostInvoicesCreatePreviewRequestInvoiceItemsDiscountsVariant1,
required this.postInvoicesCreatePreviewRequestInvoiceItemsDiscountsVariant2,});
  factory PostInvoicesCreatePreviewRequestInvoiceItemsDiscounts.fromJson(Object? json) => PostInvoicesCreatePreviewRequestInvoiceItemsDiscounts._(
    rawValue: Omittable(json),
    listPostInvoicesCreatePreviewRequestInvoiceItemsDiscountsVariant1: parseAnyOfVariant<List<PostInvoicesCreatePreviewRequestInvoiceItemsDiscountsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostInvoicesCreatePreviewRequestInvoiceItemsDiscountsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postInvoicesCreatePreviewRequestInvoiceItemsDiscountsVariant2: parseAnyOfVariant<PostInvoicesCreatePreviewRequestInvoiceItemsDiscountsVariant2>(json, (value) => PostInvoicesCreatePreviewRequestInvoiceItemsDiscountsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostInvoicesCreatePreviewRequestInvoiceItemsDiscountsVariant1>> listPostInvoicesCreatePreviewRequestInvoiceItemsDiscountsVariant1;
final Omittable<PostInvoicesCreatePreviewRequestInvoiceItemsDiscountsVariant2> postInvoicesCreatePreviewRequestInvoiceItemsDiscountsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostInvoicesCreatePreviewRequestInvoiceItemsDiscountsVariant1.isPresent || postInvoicesCreatePreviewRequestInvoiceItemsDiscountsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostInvoicesCreatePreviewRequestInvoiceItemsDiscountsVariant1.isPresent) listPostInvoicesCreatePreviewRequestInvoiceItemsDiscountsVariant1.value?.map((e) => e.toJson()).toList(),
if (postInvoicesCreatePreviewRequestInvoiceItemsDiscountsVariant2.isPresent) postInvoicesCreatePreviewRequestInvoiceItemsDiscountsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesCreatePreviewRequestInvoiceItemsDiscounts && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesCreatePreviewRequestInvoiceItemsDiscounts(${toJson()})';
}
