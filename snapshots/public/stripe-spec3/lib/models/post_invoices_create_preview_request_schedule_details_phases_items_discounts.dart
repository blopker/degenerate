// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_invoices_create_preview_request_schedule_details_phases_items_discounts_variant1.dart';@immutable final class PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsDiscountsVariant2 {const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsDiscountsVariant2._(this.value);

factory PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsDiscountsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsDiscountsVariant2._(json),
}; }

static const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsDiscountsVariant2 $empty = PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsDiscountsVariant2._('');

static const List<PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsDiscountsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsDiscountsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsDiscountsVariant2($value)'; } 
 }

@immutable
final class PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsDiscounts {
  const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsDiscounts({this.listPostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsDiscountsVariant1 = const Omittable.absent(),
this.postInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsDiscountsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsDiscounts._({required this.rawValue, required this.listPostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsDiscountsVariant1,
required this.postInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsDiscountsVariant2,});
  factory PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsDiscounts.fromJson(Object? json) => PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsDiscounts._(
    rawValue: Omittable(json),
    listPostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsDiscountsVariant1: parseAnyOfVariant<List<PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsDiscountsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsDiscountsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsDiscountsVariant2: parseAnyOfVariant<PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsDiscountsVariant2>(json, (value) => PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsDiscountsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsDiscountsVariant1>> listPostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsDiscountsVariant1;
final Omittable<PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsDiscountsVariant2> postInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsDiscountsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsDiscountsVariant1.isPresent || postInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsDiscountsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsDiscountsVariant1.isPresent) listPostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsDiscountsVariant1.value?.map((e) => e.toJson()).toList(),
if (postInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsDiscountsVariant2.isPresent) postInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsDiscountsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsDiscounts && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsDiscounts(${toJson()})';
}
