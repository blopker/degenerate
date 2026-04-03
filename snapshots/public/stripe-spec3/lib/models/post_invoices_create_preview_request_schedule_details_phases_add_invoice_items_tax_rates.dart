// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsTaxRatesVariant2 {const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsTaxRatesVariant2._(this.value);

factory PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsTaxRatesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsTaxRatesVariant2._(json),
}; }

static const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsTaxRatesVariant2 $empty = PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsTaxRatesVariant2._('');

static const List<PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsTaxRatesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsTaxRatesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsTaxRatesVariant2($value)'; } 
 }
typedef PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsTaxRates = OneOf2<List<String>,PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsTaxRatesVariant2>;
