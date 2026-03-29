// GENERATED CODE - DO NOT MODIFY BY HAND

import 'credit_notes_payment_record_refund.dart';/// The PaymentRecord refund details associated with this credit note refund.
final class CreditNoteRefundPaymentRecordRefund {const CreditNoteRefundPaymentRecordRefund({this.creditNotesPaymentRecordRefund});

factory CreditNoteRefundPaymentRecordRefund.fromJson(Map<String, dynamic> json) { return CreditNoteRefundPaymentRecordRefund(
  creditNotesPaymentRecordRefund: CreditNotesPaymentRecordRefund.canParse(json) ? CreditNotesPaymentRecordRefund.fromJson(json) : null,
); }

final CreditNotesPaymentRecordRefund? creditNotesPaymentRecordRefund;

/// At least one variant must be present.
bool get isValid { return creditNotesPaymentRecordRefund != null; } 
Map<String, dynamic> toJson() { return {
  ...?creditNotesPaymentRecordRefund?.toJson(),
}; } 
 }
