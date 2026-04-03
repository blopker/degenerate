// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_credit_notes_request_refunds_payment_record_refund.dart';@immutable final class PostCreditNotesRequestRefundsType {const PostCreditNotesRequestRefundsType._(this.value);

factory PostCreditNotesRequestRefundsType.fromJson(String json) { return switch (json) {
  'payment_record_refund' => paymentRecordRefund,
  'refund' => refund,
  _ => PostCreditNotesRequestRefundsType._(json),
}; }

static const PostCreditNotesRequestRefundsType paymentRecordRefund = PostCreditNotesRequestRefundsType._('payment_record_refund');

static const PostCreditNotesRequestRefundsType refund = PostCreditNotesRequestRefundsType._('refund');

static const List<PostCreditNotesRequestRefundsType> values = [paymentRecordRefund, refund];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCreditNotesRequestRefundsType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCreditNotesRequestRefundsType($value)'; } 
 }
@immutable final class PostCreditNotesRequestRefunds {const PostCreditNotesRequestRefunds({this.amountRefunded, this.paymentRecordRefund, this.refund, this.type, });

factory PostCreditNotesRequestRefunds.fromJson(Map<String, dynamic> json) { return PostCreditNotesRequestRefunds(
  amountRefunded: json['amount_refunded'] != null ? (json['amount_refunded'] as num).toInt() : null,
  paymentRecordRefund: json['payment_record_refund'] != null ? PostCreditNotesRequestRefundsPaymentRecordRefund.fromJson(json['payment_record_refund'] as Map<String, dynamic>) : null,
  refund: json['refund'] as String?,
  type: json['type'] != null ? PostCreditNotesRequestRefundsType.fromJson(json['type'] as String) : null,
); }

final int? amountRefunded;

final PostCreditNotesRequestRefundsPaymentRecordRefund? paymentRecordRefund;

final String? refund;

final PostCreditNotesRequestRefundsType? type;

Map<String, dynamic> toJson() { return {
  'amount_refunded': ?amountRefunded,
  if (paymentRecordRefund != null) 'payment_record_refund': paymentRecordRefund?.toJson(),
  'refund': ?refund,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'amount_refunded', 'payment_record_refund', 'refund', 'type'}.contains(key)); } 
PostCreditNotesRequestRefunds copyWith({int Function()? amountRefunded, PostCreditNotesRequestRefundsPaymentRecordRefund Function()? paymentRecordRefund, String Function()? refund, PostCreditNotesRequestRefundsType Function()? type, }) { return PostCreditNotesRequestRefunds(
  amountRefunded: amountRefunded != null ? amountRefunded() : this.amountRefunded,
  paymentRecordRefund: paymentRecordRefund != null ? paymentRecordRefund() : this.paymentRecordRefund,
  refund: refund != null ? refund() : this.refund,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCreditNotesRequestRefunds &&
          amountRefunded == other.amountRefunded &&
          paymentRecordRefund == other.paymentRecordRefund &&
          refund == other.refund &&
          type == other.type; } 
@override int get hashCode { return Object.hash(amountRefunded, paymentRecordRefund, refund, type); } 
@override String toString() { return 'PostCreditNotesRequestRefunds(amountRefunded: $amountRefunded, paymentRecordRefund: $paymentRecordRefund, refund: $refund, type: $type)'; } 
 }
