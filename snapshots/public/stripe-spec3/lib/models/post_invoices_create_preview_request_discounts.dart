// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_invoices_create_preview_request_discounts_variant1.dart';@immutable final class PostInvoicesCreatePreviewRequestDiscountsVariant2 {const PostInvoicesCreatePreviewRequestDiscountsVariant2._(this.value);

factory PostInvoicesCreatePreviewRequestDiscountsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesCreatePreviewRequestDiscountsVariant2._(json),
}; }

static const PostInvoicesCreatePreviewRequestDiscountsVariant2 $empty = PostInvoicesCreatePreviewRequestDiscountsVariant2._('');

static const List<PostInvoicesCreatePreviewRequestDiscountsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesCreatePreviewRequestDiscountsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesCreatePreviewRequestDiscountsVariant2($value)'; } 
 }
/// The coupons to redeem into discounts for the invoice preview. If not specified, inherits the discount from the subscription or customer. This works for both coupons directly applied to an invoice and coupons applied to a subscription. Pass an empty string to avoid inheriting any discounts.
@immutable
final class PostInvoicesCreatePreviewRequestDiscounts {
  const PostInvoicesCreatePreviewRequestDiscounts({this.listPostInvoicesCreatePreviewRequestDiscountsVariant1 = const Omittable.absent(),
this.postInvoicesCreatePreviewRequestDiscountsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesCreatePreviewRequestDiscounts._({required this.rawValue, required this.listPostInvoicesCreatePreviewRequestDiscountsVariant1,
required this.postInvoicesCreatePreviewRequestDiscountsVariant2,});
  factory PostInvoicesCreatePreviewRequestDiscounts.fromJson(Object? json) => PostInvoicesCreatePreviewRequestDiscounts._(
    rawValue: Omittable(json),
    listPostInvoicesCreatePreviewRequestDiscountsVariant1: parseAnyOfVariant<List<PostInvoicesCreatePreviewRequestDiscountsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostInvoicesCreatePreviewRequestDiscountsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postInvoicesCreatePreviewRequestDiscountsVariant2: parseAnyOfVariant<PostInvoicesCreatePreviewRequestDiscountsVariant2>(json, (value) => PostInvoicesCreatePreviewRequestDiscountsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostInvoicesCreatePreviewRequestDiscountsVariant1>> listPostInvoicesCreatePreviewRequestDiscountsVariant1;
final Omittable<PostInvoicesCreatePreviewRequestDiscountsVariant2> postInvoicesCreatePreviewRequestDiscountsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostInvoicesCreatePreviewRequestDiscountsVariant1.isPresent || postInvoicesCreatePreviewRequestDiscountsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostInvoicesCreatePreviewRequestDiscountsVariant1.isPresent) listPostInvoicesCreatePreviewRequestDiscountsVariant1.value?.map((e) => e.toJson()).toList(),
if (postInvoicesCreatePreviewRequestDiscountsVariant2.isPresent) postInvoicesCreatePreviewRequestDiscountsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesCreatePreviewRequestDiscounts && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesCreatePreviewRequestDiscounts(${toJson()})';
}
