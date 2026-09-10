// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_invoices_invoice_update_lines_request_lines_discounts_variant1.dart';@immutable final class PostInvoicesInvoiceUpdateLinesRequestLinesDiscountsVariant2 {const PostInvoicesInvoiceUpdateLinesRequestLinesDiscountsVariant2._(this.value);

factory PostInvoicesInvoiceUpdateLinesRequestLinesDiscountsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesInvoiceUpdateLinesRequestLinesDiscountsVariant2._(json),
}; }

static const PostInvoicesInvoiceUpdateLinesRequestLinesDiscountsVariant2 $empty = PostInvoicesInvoiceUpdateLinesRequestLinesDiscountsVariant2._('');

static const List<PostInvoicesInvoiceUpdateLinesRequestLinesDiscountsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesInvoiceUpdateLinesRequestLinesDiscountsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesInvoiceUpdateLinesRequestLinesDiscountsVariant2($value)'; } 
 }

@immutable
final class PostInvoicesInvoiceUpdateLinesRequestLinesDiscounts {
  const PostInvoicesInvoiceUpdateLinesRequestLinesDiscounts({this.listPostInvoicesInvoiceUpdateLinesRequestLinesDiscountsVariant1 = const Omittable.absent(),
this.postInvoicesInvoiceUpdateLinesRequestLinesDiscountsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesInvoiceUpdateLinesRequestLinesDiscounts._({required this.rawValue, required this.listPostInvoicesInvoiceUpdateLinesRequestLinesDiscountsVariant1,
required this.postInvoicesInvoiceUpdateLinesRequestLinesDiscountsVariant2,});
  factory PostInvoicesInvoiceUpdateLinesRequestLinesDiscounts.fromJson(Object? json) => PostInvoicesInvoiceUpdateLinesRequestLinesDiscounts._(
    rawValue: Omittable(json),
    listPostInvoicesInvoiceUpdateLinesRequestLinesDiscountsVariant1: parseAnyOfVariant<List<PostInvoicesInvoiceUpdateLinesRequestLinesDiscountsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostInvoicesInvoiceUpdateLinesRequestLinesDiscountsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postInvoicesInvoiceUpdateLinesRequestLinesDiscountsVariant2: parseAnyOfVariant<PostInvoicesInvoiceUpdateLinesRequestLinesDiscountsVariant2>(json, (value) => PostInvoicesInvoiceUpdateLinesRequestLinesDiscountsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostInvoicesInvoiceUpdateLinesRequestLinesDiscountsVariant1>> listPostInvoicesInvoiceUpdateLinesRequestLinesDiscountsVariant1;
final Omittable<PostInvoicesInvoiceUpdateLinesRequestLinesDiscountsVariant2> postInvoicesInvoiceUpdateLinesRequestLinesDiscountsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostInvoicesInvoiceUpdateLinesRequestLinesDiscountsVariant1.isPresent || postInvoicesInvoiceUpdateLinesRequestLinesDiscountsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostInvoicesInvoiceUpdateLinesRequestLinesDiscountsVariant1.isPresent) listPostInvoicesInvoiceUpdateLinesRequestLinesDiscountsVariant1.value?.map((e) => e.toJson()).toList(),
if (postInvoicesInvoiceUpdateLinesRequestLinesDiscountsVariant2.isPresent) postInvoicesInvoiceUpdateLinesRequestLinesDiscountsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesInvoiceUpdateLinesRequestLinesDiscounts && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesInvoiceUpdateLinesRequestLinesDiscounts(${toJson()})';
}
