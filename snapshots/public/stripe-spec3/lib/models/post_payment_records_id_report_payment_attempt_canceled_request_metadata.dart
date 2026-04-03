// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentRecordsIdReportPaymentAttemptCanceledRequestMetadataVariant2 {const PostPaymentRecordsIdReportPaymentAttemptCanceledRequestMetadataVariant2._(this.value);

factory PostPaymentRecordsIdReportPaymentAttemptCanceledRequestMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentRecordsIdReportPaymentAttemptCanceledRequestMetadataVariant2._(json),
}; }

static const PostPaymentRecordsIdReportPaymentAttemptCanceledRequestMetadataVariant2 $empty = PostPaymentRecordsIdReportPaymentAttemptCanceledRequestMetadataVariant2._('');

static const List<PostPaymentRecordsIdReportPaymentAttemptCanceledRequestMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentRecordsIdReportPaymentAttemptCanceledRequestMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentRecordsIdReportPaymentAttemptCanceledRequestMetadataVariant2($value)'; } 
 }
typedef PostPaymentRecordsIdReportPaymentAttemptCanceledRequestMetadata = OneOf2<Map<String,String>,PostPaymentRecordsIdReportPaymentAttemptCanceledRequestMetadataVariant2>;
