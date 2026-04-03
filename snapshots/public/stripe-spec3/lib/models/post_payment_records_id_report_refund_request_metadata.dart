// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentRecordsIdReportRefundRequestMetadataVariant2 {const PostPaymentRecordsIdReportRefundRequestMetadataVariant2._(this.value);

factory PostPaymentRecordsIdReportRefundRequestMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentRecordsIdReportRefundRequestMetadataVariant2._(json),
}; }

static const PostPaymentRecordsIdReportRefundRequestMetadataVariant2 $empty = PostPaymentRecordsIdReportRefundRequestMetadataVariant2._('');

static const List<PostPaymentRecordsIdReportRefundRequestMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentRecordsIdReportRefundRequestMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentRecordsIdReportRefundRequestMetadataVariant2($value)'; } 
 }
typedef PostPaymentRecordsIdReportRefundRequestMetadata = OneOf2<Map<String,String>,PostPaymentRecordsIdReportRefundRequestMetadataVariant2>;
