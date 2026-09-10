// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_invoices_invoice_lines_line_item_id_request_tax_amounts_variant1.dart';@immutable final class PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant2 {const PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant2._(this.value);

factory PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant2._(json),
}; }

static const PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant2 $empty = PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant2._('');

static const List<PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant2($value)'; } 
 }
/// A list of up to 10 tax amounts for this line item. This can be useful if you calculate taxes on your own or use a third-party to calculate them. You cannot set tax amounts if any line item has [tax_rates](https://docs.stripe.com/api/invoices/line_item#invoice_line_item_object-tax_rates) or if the invoice has [default_tax_rates](https://docs.stripe.com/api/invoices/object#invoice_object-default_tax_rates) or uses [automatic tax](https://docs.stripe.com/tax/invoicing). Pass an empty string to remove previously defined tax amounts.
@immutable
final class PostInvoicesInvoiceLinesLineItemIdRequestTaxAmounts {
  const PostInvoicesInvoiceLinesLineItemIdRequestTaxAmounts({this.listPostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1 = const Omittable.absent(),
this.postInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesInvoiceLinesLineItemIdRequestTaxAmounts._({required this.rawValue, required this.listPostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1,
required this.postInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant2,});
  factory PostInvoicesInvoiceLinesLineItemIdRequestTaxAmounts.fromJson(Object? json) => PostInvoicesInvoiceLinesLineItemIdRequestTaxAmounts._(
    rawValue: Omittable(json),
    listPostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1: parseAnyOfVariant<List<PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant2: parseAnyOfVariant<PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant2>(json, (value) => PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1>> listPostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1;
final Omittable<PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant2> postInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1.isPresent || postInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1.isPresent) listPostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1.value?.map((e) => e.toJson()).toList(),
if (postInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant2.isPresent) postInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesInvoiceLinesLineItemIdRequestTaxAmounts && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesInvoiceLinesLineItemIdRequestTaxAmounts(${toJson()})';
}
