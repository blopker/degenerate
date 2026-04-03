// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Information about the payment attempt failure.
@immutable final class PostPaymentRecordsIdReportPaymentAttemptRequestFailed {const PostPaymentRecordsIdReportPaymentAttemptRequestFailed({required this.failedAt});

factory PostPaymentRecordsIdReportPaymentAttemptRequestFailed.fromJson(Map<String, dynamic> json) { return PostPaymentRecordsIdReportPaymentAttemptRequestFailed(
  failedAt: (json['failed_at'] as num).toInt(),
); }

final int failedAt;

Map<String, dynamic> toJson() { return {
  'failed_at': failedAt,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('failed_at') && json['failed_at'] is num; } 
PostPaymentRecordsIdReportPaymentAttemptRequestFailed copyWith({int? failedAt}) { return PostPaymentRecordsIdReportPaymentAttemptRequestFailed(
  failedAt: failedAt ?? this.failedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentRecordsIdReportPaymentAttemptRequestFailed &&
          failedAt == other.failedAt; } 
@override int get hashCode { return failedAt.hashCode; } 
@override String toString() { return 'PostPaymentRecordsIdReportPaymentAttemptRequestFailed(failedAt: $failedAt)'; } 
 }
