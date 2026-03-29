// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostPaymentRecordsIdReportPaymentAttemptRequestMetadataVariant2 {const PostPaymentRecordsIdReportPaymentAttemptRequestMetadataVariant2._(this.value);

factory PostPaymentRecordsIdReportPaymentAttemptRequestMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentRecordsIdReportPaymentAttemptRequestMetadataVariant2._(json),
}; }

static const PostPaymentRecordsIdReportPaymentAttemptRequestMetadataVariant2 $empty = PostPaymentRecordsIdReportPaymentAttemptRequestMetadataVariant2._('');

static const List<PostPaymentRecordsIdReportPaymentAttemptRequestMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentRecordsIdReportPaymentAttemptRequestMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentRecordsIdReportPaymentAttemptRequestMetadataVariant2($value)'; } 
 }
typedef PostPaymentRecordsIdReportPaymentAttemptRequestMetadata = OneOf2<Map<String,String>,PostPaymentRecordsIdReportPaymentAttemptRequestMetadataVariant2>;