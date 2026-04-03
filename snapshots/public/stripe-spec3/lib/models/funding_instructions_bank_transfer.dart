// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'funding_instructions_bank_transfer_financial_address.dart';/// The bank_transfer type
@immutable final class FundingInstructionsBankTransferType {const FundingInstructionsBankTransferType._(this.value);

factory FundingInstructionsBankTransferType.fromJson(String json) { return switch (json) {
  'eu_bank_transfer' => euBankTransfer,
  'jp_bank_transfer' => jpBankTransfer,
  _ => FundingInstructionsBankTransferType._(json),
}; }

static const FundingInstructionsBankTransferType euBankTransfer = FundingInstructionsBankTransferType._('eu_bank_transfer');

static const FundingInstructionsBankTransferType jpBankTransfer = FundingInstructionsBankTransferType._('jp_bank_transfer');

static const List<FundingInstructionsBankTransferType> values = [euBankTransfer, jpBankTransfer];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FundingInstructionsBankTransferType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'FundingInstructionsBankTransferType($value)'; } 
 }
/// 
@immutable final class FundingInstructionsBankTransfer {const FundingInstructionsBankTransfer({required this.country, required this.financialAddresses, required this.type, });

factory FundingInstructionsBankTransfer.fromJson(Map<String, dynamic> json) { return FundingInstructionsBankTransfer(
  country: json['country'] as String,
  financialAddresses: (json['financial_addresses'] as List<dynamic>).map((e) => FundingInstructionsBankTransferFinancialAddress.fromJson(e as Map<String, dynamic>)).toList(),
  type: FundingInstructionsBankTransferType.fromJson(json['type'] as String),
); }

/// The country of the bank account to fund
final String country;

/// A list of financial addresses that can be used to fund a particular balance
final List<FundingInstructionsBankTransferFinancialAddress> financialAddresses;

/// The bank_transfer type
final FundingInstructionsBankTransferType type;

Map<String, dynamic> toJson() { return {
  'country': country,
  'financial_addresses': financialAddresses.map((e) => e.toJson()).toList(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('country') && json['country'] is String &&
      json.containsKey('financial_addresses') &&
      json.containsKey('type'); } 
FundingInstructionsBankTransfer copyWith({String? country, List<FundingInstructionsBankTransferFinancialAddress>? financialAddresses, FundingInstructionsBankTransferType? type, }) { return FundingInstructionsBankTransfer(
  country: country ?? this.country,
  financialAddresses: financialAddresses ?? this.financialAddresses,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FundingInstructionsBankTransfer &&
          country == other.country &&
          listEquals(financialAddresses, other.financialAddresses) &&
          type == other.type; } 
@override int get hashCode { return Object.hash(country, Object.hashAll(financialAddresses), type); } 
@override String toString() { return 'FundingInstructionsBankTransfer(country: $country, financialAddresses: $financialAddresses, type: $type)'; } 
 }
