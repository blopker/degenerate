// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostPaymentRecordsIdReportPaymentAttemptInformationalRequestMetadataVariant2 {const PostPaymentRecordsIdReportPaymentAttemptInformationalRequestMetadataVariant2._(this.value);

factory PostPaymentRecordsIdReportPaymentAttemptInformationalRequestMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentRecordsIdReportPaymentAttemptInformationalRequestMetadataVariant2._(json),
}; }

static const PostPaymentRecordsIdReportPaymentAttemptInformationalRequestMetadataVariant2 $empty = PostPaymentRecordsIdReportPaymentAttemptInformationalRequestMetadataVariant2._('');

static const List<PostPaymentRecordsIdReportPaymentAttemptInformationalRequestMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentRecordsIdReportPaymentAttemptInformationalRequestMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentRecordsIdReportPaymentAttemptInformationalRequestMetadataVariant2($value)'; } 
 }
typedef PostPaymentRecordsIdReportPaymentAttemptInformationalRequestMetadata = OneOf2<Map<String,String>,PostPaymentRecordsIdReportPaymentAttemptInformationalRequestMetadataVariant2>;