// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostInvoicesInvoiceAttachPaymentRequest {const PostInvoicesInvoiceAttachPaymentRequest({this.expand, this.paymentIntent, this.paymentRecord, });

factory PostInvoicesInvoiceAttachPaymentRequest.fromJson(Map<String, dynamic> json) { return PostInvoicesInvoiceAttachPaymentRequest(
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  paymentIntent: json['payment_intent'] as String?,
  paymentRecord: json['payment_record'] as String?,
); }

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// The ID of the PaymentIntent to attach to the invoice.
final String? paymentIntent;

/// The ID of the PaymentRecord to attach to the invoice.
final String? paymentRecord;

Map<String, dynamic> toJson() { return {
  'expand': ?expand,
  'payment_intent': ?paymentIntent,
  'payment_record': ?paymentRecord,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'expand', 'payment_intent', 'payment_record'}.contains(key)); } 
PostInvoicesInvoiceAttachPaymentRequest copyWith({List<String> Function()? expand, String Function()? paymentIntent, String Function()? paymentRecord, }) { return PostInvoicesInvoiceAttachPaymentRequest(
  expand: expand != null ? expand() : this.expand,
  paymentIntent: paymentIntent != null ? paymentIntent() : this.paymentIntent,
  paymentRecord: paymentRecord != null ? paymentRecord() : this.paymentRecord,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostInvoicesInvoiceAttachPaymentRequest &&
          listEquals(expand, other.expand) &&
          paymentIntent == other.paymentIntent &&
          paymentRecord == other.paymentRecord; } 
@override int get hashCode { return Object.hash(Object.hashAll(expand ?? const []), paymentIntent, paymentRecord); } 
@override String toString() { return 'PostInvoicesInvoiceAttachPaymentRequest(expand: $expand, paymentIntent: $paymentIntent, paymentRecord: $paymentRecord)'; } 
 }
