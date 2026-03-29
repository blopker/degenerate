// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentRecordsReportPaymentRequestProcessorDetailsCustom {const PostPaymentRecordsReportPaymentRequestProcessorDetailsCustom({required this.paymentReference});

factory PostPaymentRecordsReportPaymentRequestProcessorDetailsCustom.fromJson(Map<String, dynamic> json) { return PostPaymentRecordsReportPaymentRequestProcessorDetailsCustom(
  paymentReference: json['payment_reference'] as String,
); }

final String paymentReference;

Map<String, dynamic> toJson() { return {
  'payment_reference': paymentReference,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('payment_reference') && json['payment_reference'] is String; } 
PostPaymentRecordsReportPaymentRequestProcessorDetailsCustom copyWith({String? paymentReference}) { return PostPaymentRecordsReportPaymentRequestProcessorDetailsCustom(
  paymentReference: paymentReference ?? this.paymentReference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentRecordsReportPaymentRequestProcessorDetailsCustom &&
          paymentReference == other.paymentReference; } 
@override int get hashCode { return paymentReference.hashCode; } 
@override String toString() { return 'PostPaymentRecordsReportPaymentRequestProcessorDetailsCustom(paymentReference: $paymentReference)'; } 
 }
