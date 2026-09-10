// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_invoices_request_discounts_variant1.dart';@immutable final class PostInvoicesRequestDiscountsVariant2 {const PostInvoicesRequestDiscountsVariant2._(this.value);

factory PostInvoicesRequestDiscountsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesRequestDiscountsVariant2._(json),
}; }

static const PostInvoicesRequestDiscountsVariant2 $empty = PostInvoicesRequestDiscountsVariant2._('');

static const List<PostInvoicesRequestDiscountsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesRequestDiscountsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesRequestDiscountsVariant2($value)'; } 
 }
/// The coupons and promotion codes to redeem into discounts for the invoice. If not specified, inherits the discount from the invoice's customer. Pass an empty string to avoid inheriting any discounts.
@immutable
final class PostInvoicesRequestDiscounts {
  const PostInvoicesRequestDiscounts({this.listPostInvoicesRequestDiscountsVariant1 = const Omittable.absent(),
this.postInvoicesRequestDiscountsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesRequestDiscounts._({required this.rawValue, required this.listPostInvoicesRequestDiscountsVariant1,
required this.postInvoicesRequestDiscountsVariant2,});
  factory PostInvoicesRequestDiscounts.fromJson(Object? json) => PostInvoicesRequestDiscounts._(
    rawValue: Omittable(json),
    listPostInvoicesRequestDiscountsVariant1: parseAnyOfVariant<List<PostInvoicesRequestDiscountsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostInvoicesRequestDiscountsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postInvoicesRequestDiscountsVariant2: parseAnyOfVariant<PostInvoicesRequestDiscountsVariant2>(json, (value) => PostInvoicesRequestDiscountsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostInvoicesRequestDiscountsVariant1>> listPostInvoicesRequestDiscountsVariant1;
final Omittable<PostInvoicesRequestDiscountsVariant2> postInvoicesRequestDiscountsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostInvoicesRequestDiscountsVariant1.isPresent || postInvoicesRequestDiscountsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostInvoicesRequestDiscountsVariant1.isPresent) listPostInvoicesRequestDiscountsVariant1.value?.map((e) => e.toJson()).toList(),
if (postInvoicesRequestDiscountsVariant2.isPresent) postInvoicesRequestDiscountsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesRequestDiscounts && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesRequestDiscounts(${toJson()})';
}
