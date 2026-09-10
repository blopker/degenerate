// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_record.dart';/// ID of the PaymentRecord associated with this payment when `type` is `payment_record`.
@immutable
final class InvoicesPaymentsInvoicePaymentAssociatedPaymentPaymentRecord {
  const InvoicesPaymentsInvoicePaymentAssociatedPaymentPaymentRecord({this.string = const Omittable.absent(),
this.paymentRecord = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const InvoicesPaymentsInvoicePaymentAssociatedPaymentPaymentRecord._({required this.rawValue, required this.string,
required this.paymentRecord,});
  factory InvoicesPaymentsInvoicePaymentAssociatedPaymentPaymentRecord.fromJson(Object? json) => InvoicesPaymentsInvoicePaymentAssociatedPaymentPaymentRecord._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
paymentRecord: parseAnyOfVariant<PaymentRecord>(json, (value) => PaymentRecord.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PaymentRecord> paymentRecord;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || paymentRecord.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (paymentRecord.isPresent) paymentRecord.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is InvoicesPaymentsInvoicePaymentAssociatedPaymentPaymentRecord && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'InvoicesPaymentsInvoicePaymentAssociatedPaymentPaymentRecord(${toJson()})';
}
