// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_invoices_invoice_request_discounts_variant1.dart';@immutable final class PostInvoicesInvoiceRequestDiscountsVariant2 {const PostInvoicesInvoiceRequestDiscountsVariant2._(this.value);

factory PostInvoicesInvoiceRequestDiscountsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesInvoiceRequestDiscountsVariant2._(json),
}; }

static const PostInvoicesInvoiceRequestDiscountsVariant2 $empty = PostInvoicesInvoiceRequestDiscountsVariant2._('');

static const List<PostInvoicesInvoiceRequestDiscountsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesInvoiceRequestDiscountsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesInvoiceRequestDiscountsVariant2($value)'; } 
 }
/// The discounts that will apply to the invoice. Pass an empty string to remove previously-defined discounts.
@immutable
final class PostInvoicesInvoiceRequestDiscounts {
  const PostInvoicesInvoiceRequestDiscounts({this.listPostInvoicesInvoiceRequestDiscountsVariant1 = const Omittable.absent(),
this.postInvoicesInvoiceRequestDiscountsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesInvoiceRequestDiscounts._({required this.rawValue, required this.listPostInvoicesInvoiceRequestDiscountsVariant1,
required this.postInvoicesInvoiceRequestDiscountsVariant2,});
  factory PostInvoicesInvoiceRequestDiscounts.fromJson(Object? json) => PostInvoicesInvoiceRequestDiscounts._(
    rawValue: Omittable(json),
    listPostInvoicesInvoiceRequestDiscountsVariant1: parseAnyOfVariant<List<PostInvoicesInvoiceRequestDiscountsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostInvoicesInvoiceRequestDiscountsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postInvoicesInvoiceRequestDiscountsVariant2: parseAnyOfVariant<PostInvoicesInvoiceRequestDiscountsVariant2>(json, (value) => PostInvoicesInvoiceRequestDiscountsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostInvoicesInvoiceRequestDiscountsVariant1>> listPostInvoicesInvoiceRequestDiscountsVariant1;
final Omittable<PostInvoicesInvoiceRequestDiscountsVariant2> postInvoicesInvoiceRequestDiscountsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostInvoicesInvoiceRequestDiscountsVariant1.isPresent || postInvoicesInvoiceRequestDiscountsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostInvoicesInvoiceRequestDiscountsVariant1.isPresent) listPostInvoicesInvoiceRequestDiscountsVariant1.value?.map((e) => e.toJson()).toList(),
if (postInvoicesInvoiceRequestDiscountsVariant2.isPresent) postInvoicesInvoiceRequestDiscountsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesInvoiceRequestDiscounts && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesInvoiceRequestDiscounts(${toJson()})';
}
