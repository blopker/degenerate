// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDefaultTaxRatesVariant2 {const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDefaultTaxRatesVariant2._(this.value);

factory PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDefaultTaxRatesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDefaultTaxRatesVariant2._(json),
}; }

static const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDefaultTaxRatesVariant2 $empty = PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDefaultTaxRatesVariant2._('');

static const List<PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDefaultTaxRatesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDefaultTaxRatesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDefaultTaxRatesVariant2($value)'; } 
 }
typedef PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDefaultTaxRates = OneOf2<List<String>,PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDefaultTaxRatesVariant2>;
