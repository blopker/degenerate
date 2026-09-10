// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_invoices_create_preview_request_schedule_details_phases_discounts_variant1.dart';@immutable final class PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDiscountsVariant2 {const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDiscountsVariant2._(this.value);

factory PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDiscountsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDiscountsVariant2._(json),
}; }

static const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDiscountsVariant2 $empty = PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDiscountsVariant2._('');

static const List<PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDiscountsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDiscountsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDiscountsVariant2($value)'; } 
 }

@immutable
final class PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDiscounts {
  const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDiscounts({this.listPostInvoicesCreatePreviewRequestScheduleDetailsPhasesDiscountsVariant1 = const Omittable.absent(),
this.postInvoicesCreatePreviewRequestScheduleDetailsPhasesDiscountsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDiscounts._({required this.rawValue, required this.listPostInvoicesCreatePreviewRequestScheduleDetailsPhasesDiscountsVariant1,
required this.postInvoicesCreatePreviewRequestScheduleDetailsPhasesDiscountsVariant2,});
  factory PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDiscounts.fromJson(Object? json) => PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDiscounts._(
    rawValue: Omittable(json),
    listPostInvoicesCreatePreviewRequestScheduleDetailsPhasesDiscountsVariant1: parseAnyOfVariant<List<PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDiscountsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDiscountsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postInvoicesCreatePreviewRequestScheduleDetailsPhasesDiscountsVariant2: parseAnyOfVariant<PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDiscountsVariant2>(json, (value) => PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDiscountsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDiscountsVariant1>> listPostInvoicesCreatePreviewRequestScheduleDetailsPhasesDiscountsVariant1;
final Omittable<PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDiscountsVariant2> postInvoicesCreatePreviewRequestScheduleDetailsPhasesDiscountsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostInvoicesCreatePreviewRequestScheduleDetailsPhasesDiscountsVariant1.isPresent || postInvoicesCreatePreviewRequestScheduleDetailsPhasesDiscountsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostInvoicesCreatePreviewRequestScheduleDetailsPhasesDiscountsVariant1.isPresent) listPostInvoicesCreatePreviewRequestScheduleDetailsPhasesDiscountsVariant1.value?.map((e) => e.toJson()).toList(),
if (postInvoicesCreatePreviewRequestScheduleDetailsPhasesDiscountsVariant2.isPresent) postInvoicesCreatePreviewRequestScheduleDetailsPhasesDiscountsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDiscounts && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDiscounts(${toJson()})';
}
