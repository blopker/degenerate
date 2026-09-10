// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_invoices_create_preview_request_subscription_details_items_discounts_variant1.dart';@immutable final class PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsDiscountsVariant2 {const PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsDiscountsVariant2._(this.value);

factory PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsDiscountsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsDiscountsVariant2._(json),
};}

static const PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsDiscountsVariant2 $empty = PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsDiscountsVariant2._('');

static const List<PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsDiscountsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsDiscountsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsDiscountsVariant2($value)';}
}

@immutable
final class PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsDiscounts {
  const PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsDiscounts({this.listPostInvoicesCreatePreviewRequestSubscriptionDetailsItemsDiscountsVariant1 = const Omittable.absent(),
this.postInvoicesCreatePreviewRequestSubscriptionDetailsItemsDiscountsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsDiscounts._({required this.rawValue, required this.listPostInvoicesCreatePreviewRequestSubscriptionDetailsItemsDiscountsVariant1,
required this.postInvoicesCreatePreviewRequestSubscriptionDetailsItemsDiscountsVariant2,});
  factory PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsDiscounts.fromJson(Object? json) => PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsDiscounts._(
    rawValue: Omittable(json),
    listPostInvoicesCreatePreviewRequestSubscriptionDetailsItemsDiscountsVariant1: parseAnyOfVariant<List<PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsDiscountsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsDiscountsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postInvoicesCreatePreviewRequestSubscriptionDetailsItemsDiscountsVariant2: parseAnyOfVariant<PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsDiscountsVariant2>(json, (value) => PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsDiscountsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsDiscountsVariant1>> listPostInvoicesCreatePreviewRequestSubscriptionDetailsItemsDiscountsVariant1;
final Omittable<PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsDiscountsVariant2> postInvoicesCreatePreviewRequestSubscriptionDetailsItemsDiscountsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostInvoicesCreatePreviewRequestSubscriptionDetailsItemsDiscountsVariant1.isPresent || postInvoicesCreatePreviewRequestSubscriptionDetailsItemsDiscountsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostInvoicesCreatePreviewRequestSubscriptionDetailsItemsDiscountsVariant1.isPresent) listPostInvoicesCreatePreviewRequestSubscriptionDetailsItemsDiscountsVariant1.value?.map((e) => e.toJson()).toList(),
if (postInvoicesCreatePreviewRequestSubscriptionDetailsItemsDiscountsVariant2.isPresent) postInvoicesCreatePreviewRequestSubscriptionDetailsItemsDiscountsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsDiscounts && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsDiscounts(${toJson()})';
}
