// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'application_fee.dart';import 'charge.dart';import 'connect_collection_transfer.dart';import 'customer_cash_balance_transaction.dart';import 'dispute.dart';import 'fee_refund.dart';import 'issuing_authorization.dart';import 'issuing_dispute.dart';import 'issuing_transaction.dart';import 'payout.dart';import 'refund.dart';import 'reserve_transaction.dart';import 'tax_deducted_at_source.dart';import 'topup.dart';import 'transfer.dart';import 'transfer_reversal.dart';/// This transaction relates to the Stripe object.
@immutable
final class BalanceTransactionSource {
  const BalanceTransactionSource({this.string = const Omittable.absent(),
this.applicationFee = const Omittable.absent(),
this.charge = const Omittable.absent(),
this.connectCollectionTransfer = const Omittable.absent(),
this.customerCashBalanceTransaction = const Omittable.absent(),
this.dispute = const Omittable.absent(),
this.feeRefund = const Omittable.absent(),
this.issuingAuthorization = const Omittable.absent(),
this.issuingDispute = const Omittable.absent(),
this.issuingTransaction = const Omittable.absent(),
this.payout = const Omittable.absent(),
this.refund = const Omittable.absent(),
this.reserveTransaction = const Omittable.absent(),
this.taxDeductedAtSource = const Omittable.absent(),
this.topup = const Omittable.absent(),
this.transfer = const Omittable.absent(),
this.transferReversal = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const BalanceTransactionSource._({required this.rawValue, required this.string,
required this.applicationFee,
required this.charge,
required this.connectCollectionTransfer,
required this.customerCashBalanceTransaction,
required this.dispute,
required this.feeRefund,
required this.issuingAuthorization,
required this.issuingDispute,
required this.issuingTransaction,
required this.payout,
required this.refund,
required this.reserveTransaction,
required this.taxDeductedAtSource,
required this.topup,
required this.transfer,
required this.transferReversal,});
  factory BalanceTransactionSource.fromJson(Object? json) => BalanceTransactionSource._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
applicationFee: parseAnyOfVariant<ApplicationFee>(json, (value) => ApplicationFee.fromJson(value! as Map<String, dynamic>)),
charge: parseAnyOfVariant<Charge>(json, (value) => Charge.fromJson(value! as Map<String, dynamic>)),
connectCollectionTransfer: parseAnyOfVariant<ConnectCollectionTransfer>(json, (value) => ConnectCollectionTransfer.fromJson(value! as Map<String, dynamic>)),
customerCashBalanceTransaction: parseAnyOfVariant<CustomerCashBalanceTransaction>(json, (value) => CustomerCashBalanceTransaction.fromJson(value! as Map<String, dynamic>)),
dispute: parseAnyOfVariant<Dispute>(json, (value) => Dispute.fromJson(value! as Map<String, dynamic>)),
feeRefund: parseAnyOfVariant<FeeRefund>(json, (value) => FeeRefund.fromJson(value! as Map<String, dynamic>)),
issuingAuthorization: parseAnyOfVariant<IssuingAuthorization>(json, (value) => IssuingAuthorization.fromJson(value! as Map<String, dynamic>)),
issuingDispute: parseAnyOfVariant<IssuingDispute>(json, (value) => IssuingDispute.fromJson(value! as Map<String, dynamic>)),
issuingTransaction: parseAnyOfVariant<IssuingTransaction>(json, (value) => IssuingTransaction.fromJson(value! as Map<String, dynamic>)),
payout: parseAnyOfVariant<Payout>(json, (value) => Payout.fromJson(value! as Map<String, dynamic>)),
refund: parseAnyOfVariant<Refund>(json, (value) => Refund.fromJson(value! as Map<String, dynamic>)),
reserveTransaction: parseAnyOfVariant<ReserveTransaction>(json, (value) => ReserveTransaction.fromJson(value! as Map<String, dynamic>)),
taxDeductedAtSource: parseAnyOfVariant<TaxDeductedAtSource>(json, (value) => TaxDeductedAtSource.fromJson(value! as Map<String, dynamic>)),
topup: parseAnyOfVariant<Topup>(json, (value) => Topup.fromJson(value! as Map<String, dynamic>)),
transfer: parseAnyOfVariant<Transfer>(json, (value) => Transfer.fromJson(value! as Map<String, dynamic>)),
transferReversal: parseAnyOfVariant<TransferReversal>(json, (value) => TransferReversal.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<ApplicationFee> applicationFee;
final Omittable<Charge> charge;
final Omittable<ConnectCollectionTransfer> connectCollectionTransfer;
final Omittable<CustomerCashBalanceTransaction> customerCashBalanceTransaction;
final Omittable<Dispute> dispute;
final Omittable<FeeRefund> feeRefund;
final Omittable<IssuingAuthorization> issuingAuthorization;
final Omittable<IssuingDispute> issuingDispute;
final Omittable<IssuingTransaction> issuingTransaction;
final Omittable<Payout> payout;
final Omittable<Refund> refund;
final Omittable<ReserveTransaction> reserveTransaction;
final Omittable<TaxDeductedAtSource> taxDeductedAtSource;
final Omittable<Topup> topup;
final Omittable<Transfer> transfer;
final Omittable<TransferReversal> transferReversal;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || string.isPresent || applicationFee.isPresent || charge.isPresent || connectCollectionTransfer.isPresent || customerCashBalanceTransaction.isPresent || dispute.isPresent || feeRefund.isPresent || issuingAuthorization.isPresent || issuingDispute.isPresent || issuingTransaction.isPresent || payout.isPresent || refund.isPresent || reserveTransaction.isPresent || taxDeductedAtSource.isPresent || topup.isPresent || transfer.isPresent || transferReversal.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (applicationFee.isPresent) applicationFee.value?.toJson(),
if (charge.isPresent) charge.value?.toJson(),
if (connectCollectionTransfer.isPresent) connectCollectionTransfer.value?.toJson(),
if (customerCashBalanceTransaction.isPresent) customerCashBalanceTransaction.value?.toJson(),
if (dispute.isPresent) dispute.value?.toJson(),
if (feeRefund.isPresent) feeRefund.value?.toJson(),
if (issuingAuthorization.isPresent) issuingAuthorization.value?.toJson(),
if (issuingDispute.isPresent) issuingDispute.value?.toJson(),
if (issuingTransaction.isPresent) issuingTransaction.value?.toJson(),
if (payout.isPresent) payout.value?.toJson(),
if (refund.isPresent) refund.value?.toJson(),
if (reserveTransaction.isPresent) reserveTransaction.value?.toJson(),
if (taxDeductedAtSource.isPresent) taxDeductedAtSource.value?.toJson(),
if (topup.isPresent) topup.value?.toJson(),
if (transfer.isPresent) transfer.value?.toJson(),
if (transferReversal.isPresent) transferReversal.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is BalanceTransactionSource && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'BalanceTransactionSource(${toJson()})';
}
