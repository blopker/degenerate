// GENERATED CODE - DO NOT MODIFY BY HAND

import 'customer_balance_resource_cash_balance_transaction_resource_funded_transaction_resource_bank_transfer_resource_eu_bank_transfer.dart';import 'customer_balance_resource_cash_balance_transaction_resource_funded_transaction_resource_bank_transfer_resource_gb_bank_transfer.dart';import 'customer_balance_resource_cash_balance_transaction_resource_funded_transaction_resource_bank_transfer_resource_jp_bank_transfer.dart';import 'customer_balance_resource_cash_balance_transaction_resource_funded_transaction_resource_bank_transfer_resource_us_bank_transfer.dart';/// The funding method type used to fund the customer balance. Permitted values include: `eu_bank_transfer`, `gb_bank_transfer`, `jp_bank_transfer`, `mx_bank_transfer`, or `us_bank_transfer`.
final class CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferType {const CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferType._(this.value);

factory CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferType.fromJson(String json) { return switch (json) {
  'eu_bank_transfer' => euBankTransfer,
  'gb_bank_transfer' => gbBankTransfer,
  'jp_bank_transfer' => jpBankTransfer,
  'mx_bank_transfer' => mxBankTransfer,
  'us_bank_transfer' => usBankTransfer,
  _ => CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferType._(json),
}; }

static const CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferType euBankTransfer = CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferType._('eu_bank_transfer');

static const CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferType gbBankTransfer = CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferType._('gb_bank_transfer');

static const CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferType jpBankTransfer = CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferType._('jp_bank_transfer');

static const CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferType mxBankTransfer = CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferType._('mx_bank_transfer');

static const CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferType usBankTransfer = CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferType._('us_bank_transfer');

static const List<CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferType> values = [euBankTransfer, gbBankTransfer, jpBankTransfer, mxBankTransfer, usBankTransfer];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferType($value)'; } 
 }
/// 
final class CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransfer {const CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransfer({this.euBankTransfer, this.gbBankTransfer, this.jpBankTransfer, this.reference, required this.type, this.usBankTransfer, });

factory CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransfer.fromJson(Map<String, dynamic> json) { return CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransfer(
  euBankTransfer: json['eu_bank_transfer'] != null ? CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceEuBankTransfer.fromJson(json['eu_bank_transfer'] as Map<String, dynamic>) : null,
  gbBankTransfer: json['gb_bank_transfer'] != null ? CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceGbBankTransfer.fromJson(json['gb_bank_transfer'] as Map<String, dynamic>) : null,
  jpBankTransfer: json['jp_bank_transfer'] != null ? CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceJpBankTransfer.fromJson(json['jp_bank_transfer'] as Map<String, dynamic>) : null,
  reference: json['reference'] as String?,
  type: CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferType.fromJson(json['type'] as String),
  usBankTransfer: json['us_bank_transfer'] != null ? CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceUsBankTransfer.fromJson(json['us_bank_transfer'] as Map<String, dynamic>) : null,
); }

final CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceEuBankTransfer? euBankTransfer;

final CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceGbBankTransfer? gbBankTransfer;

final CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceJpBankTransfer? jpBankTransfer;

/// The user-supplied reference field on the bank transfer.
final String? reference;

/// The funding method type used to fund the customer balance. Permitted values include: `eu_bank_transfer`, `gb_bank_transfer`, `jp_bank_transfer`, `mx_bank_transfer`, or `us_bank_transfer`.
final CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferType type;

final CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceUsBankTransfer? usBankTransfer;

Map<String, dynamic> toJson() { return {
  if (euBankTransfer != null) 'eu_bank_transfer': euBankTransfer?.toJson(),
  if (gbBankTransfer != null) 'gb_bank_transfer': gbBankTransfer?.toJson(),
  if (jpBankTransfer != null) 'jp_bank_transfer': jpBankTransfer?.toJson(),
  'reference': ?reference,
  'type': type.toJson(),
  if (usBankTransfer != null) 'us_bank_transfer': usBankTransfer?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransfer copyWith({CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceEuBankTransfer Function()? euBankTransfer, CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceGbBankTransfer Function()? gbBankTransfer, CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceJpBankTransfer Function()? jpBankTransfer, String? Function()? reference, CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferType? type, CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceUsBankTransfer Function()? usBankTransfer, }) { return CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransfer(
  euBankTransfer: euBankTransfer != null ? euBankTransfer() : this.euBankTransfer,
  gbBankTransfer: gbBankTransfer != null ? gbBankTransfer() : this.gbBankTransfer,
  jpBankTransfer: jpBankTransfer != null ? jpBankTransfer() : this.jpBankTransfer,
  reference: reference != null ? reference() : this.reference,
  type: type ?? this.type,
  usBankTransfer: usBankTransfer != null ? usBankTransfer() : this.usBankTransfer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransfer &&
          euBankTransfer == other.euBankTransfer &&
          gbBankTransfer == other.gbBankTransfer &&
          jpBankTransfer == other.jpBankTransfer &&
          reference == other.reference &&
          type == other.type &&
          usBankTransfer == other.usBankTransfer; } 
@override int get hashCode { return Object.hash(euBankTransfer, gbBankTransfer, jpBankTransfer, reference, type, usBankTransfer); } 
@override String toString() { return 'CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransfer(euBankTransfer: $euBankTransfer, gbBankTransfer: $gbBankTransfer, jpBankTransfer: $jpBankTransfer, reference: $reference, type: $type, usBankTransfer: $usBankTransfer)'; } 
 }
