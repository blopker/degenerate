// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentRecordsIdReportRefundRequestProcessorDetailsCustom {const PostPaymentRecordsIdReportRefundRequestProcessorDetailsCustom({required this.refundReference});

factory PostPaymentRecordsIdReportRefundRequestProcessorDetailsCustom.fromJson(Map<String, dynamic> json) { return PostPaymentRecordsIdReportRefundRequestProcessorDetailsCustom(
  refundReference: json['refund_reference'] as String,
); }

final String refundReference;

Map<String, dynamic> toJson() { return {
  'refund_reference': refundReference,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('refund_reference') && json['refund_reference'] is String; } 
PostPaymentRecordsIdReportRefundRequestProcessorDetailsCustom copyWith({String? refundReference}) { return PostPaymentRecordsIdReportRefundRequestProcessorDetailsCustom(
  refundReference: refundReference ?? this.refundReference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentRecordsIdReportRefundRequestProcessorDetailsCustom &&
          refundReference == other.refundReference; } 
@override int get hashCode { return refundReference.hashCode; } 
@override String toString() { return 'PostPaymentRecordsIdReportRefundRequestProcessorDetailsCustom(refundReference: $refundReference)'; } 
 }
