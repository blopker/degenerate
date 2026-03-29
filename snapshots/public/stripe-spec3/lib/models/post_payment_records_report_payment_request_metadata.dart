// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostPaymentRecordsReportPaymentRequestMetadataVariant2 {const PostPaymentRecordsReportPaymentRequestMetadataVariant2._(this.value);

factory PostPaymentRecordsReportPaymentRequestMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentRecordsReportPaymentRequestMetadataVariant2._(json),
}; }

static const PostPaymentRecordsReportPaymentRequestMetadataVariant2 $empty = PostPaymentRecordsReportPaymentRequestMetadataVariant2._('');

static const List<PostPaymentRecordsReportPaymentRequestMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentRecordsReportPaymentRequestMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentRecordsReportPaymentRequestMetadataVariant2($value)'; } 
 }
typedef PostPaymentRecordsReportPaymentRequestMetadata = OneOf2<Map<String,String>,PostPaymentRecordsReportPaymentRequestMetadataVariant2>;