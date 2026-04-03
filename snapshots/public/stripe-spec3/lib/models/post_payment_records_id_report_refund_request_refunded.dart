// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Information about the payment attempt refund.
@immutable final class PostPaymentRecordsIdReportRefundRequestRefunded {const PostPaymentRecordsIdReportRefundRequestRefunded({required this.refundedAt});

factory PostPaymentRecordsIdReportRefundRequestRefunded.fromJson(Map<String, dynamic> json) { return PostPaymentRecordsIdReportRefundRequestRefunded(
  refundedAt: (json['refunded_at'] as num).toInt(),
); }

final int refundedAt;

Map<String, dynamic> toJson() { return {
  'refunded_at': refundedAt,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('refunded_at') && json['refunded_at'] is num; } 
PostPaymentRecordsIdReportRefundRequestRefunded copyWith({int? refundedAt}) { return PostPaymentRecordsIdReportRefundRequestRefunded(
  refundedAt: refundedAt ?? this.refundedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentRecordsIdReportRefundRequestRefunded &&
          refundedAt == other.refundedAt; } 
@override int get hashCode { return refundedAt.hashCode; } 
@override String toString() { return 'PostPaymentRecordsIdReportRefundRequestRefunded(refundedAt: $refundedAt)'; } 
 }
