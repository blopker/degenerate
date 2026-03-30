// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'credit_note_refund_refund.dart';import 'credit_notes_payment_record_refund.dart';import 'refund.dart';/// Type of the refund, one of `refund` or `payment_record_refund`.
final class CreditNoteRefundType {const CreditNoteRefundType._(this.value);

factory CreditNoteRefundType.fromJson(String json) { return switch (json) {
  'payment_record_refund' => paymentRecordRefund,
  'refund' => refund,
  _ => CreditNoteRefundType._(json),
}; }

static const CreditNoteRefundType paymentRecordRefund = CreditNoteRefundType._('payment_record_refund');

static const CreditNoteRefundType refund = CreditNoteRefundType._('refund');

static const List<CreditNoteRefundType> values = [paymentRecordRefund, refund];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreditNoteRefundType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CreditNoteRefundType($value)'; } 
 }
/// 
final class CreditNoteRefund {const CreditNoteRefund({required this.amountRefunded, this.paymentRecordRefund, required this.refund, this.type, });

factory CreditNoteRefund.fromJson(Map<String, dynamic> json) { return CreditNoteRefund(
  amountRefunded: (json['amount_refunded'] as num).toInt(),
  paymentRecordRefund: json['payment_record_refund'] != null ? CreditNotesPaymentRecordRefund.fromJson(json['payment_record_refund'] as Map<String, dynamic>) : null,
  refund: OneOf2.parse(json['refund'], fromA: (v) => v as String, fromB: (v) => Refund.fromJson(v as Map<String, dynamic>),),
  type: json['type'] != null ? CreditNoteRefundType.fromJson(json['type'] as String) : null,
); }

/// Amount of the refund that applies to this credit note, in cents (or local equivalent).
final int amountRefunded;

/// The PaymentRecord refund details associated with this credit note refund.
final CreditNotesPaymentRecordRefund? paymentRecordRefund;

/// ID of the refund.
final CreditNoteRefundRefund refund;

/// Type of the refund, one of `refund` or `payment_record_refund`.
final CreditNoteRefundType? type;

Map<String, dynamic> toJson() { return {
  'amount_refunded': amountRefunded,
  if (paymentRecordRefund != null) 'payment_record_refund': paymentRecordRefund?.toJson(),
  'refund': refund.toJson(),
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('amount_refunded') && json['amount_refunded'] is num &&
      json.containsKey('refund'); } 
CreditNoteRefund copyWith({int? amountRefunded, CreditNotesPaymentRecordRefund? Function()? paymentRecordRefund, CreditNoteRefundRefund? refund, CreditNoteRefundType? Function()? type, }) { return CreditNoteRefund(
  amountRefunded: amountRefunded ?? this.amountRefunded,
  paymentRecordRefund: paymentRecordRefund != null ? paymentRecordRefund() : this.paymentRecordRefund,
  refund: refund ?? this.refund,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreditNoteRefund &&
          amountRefunded == other.amountRefunded &&
          paymentRecordRefund == other.paymentRecordRefund &&
          refund == other.refund &&
          type == other.type; } 
@override int get hashCode { return Object.hash(amountRefunded, paymentRecordRefund, refund, type); } 
@override String toString() { return 'CreditNoteRefund(amountRefunded: $amountRefunded, paymentRecordRefund: $paymentRecordRefund, refund: $refund, type: $type)'; } 
 }
