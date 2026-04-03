// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'treasury_financial_accounts_resource_aba_record.dart';@immutable final class TreasuryFinancialAccountsResourceFinancialAddressSupportedNetworks {const TreasuryFinancialAccountsResourceFinancialAddressSupportedNetworks._(this.value);

factory TreasuryFinancialAccountsResourceFinancialAddressSupportedNetworks.fromJson(String json) { return switch (json) {
  'ach' => ach,
  'us_domestic_wire' => usDomesticWire,
  _ => TreasuryFinancialAccountsResourceFinancialAddressSupportedNetworks._(json),
}; }

static const TreasuryFinancialAccountsResourceFinancialAddressSupportedNetworks ach = TreasuryFinancialAccountsResourceFinancialAddressSupportedNetworks._('ach');

static const TreasuryFinancialAccountsResourceFinancialAddressSupportedNetworks usDomesticWire = TreasuryFinancialAccountsResourceFinancialAddressSupportedNetworks._('us_domestic_wire');

static const List<TreasuryFinancialAccountsResourceFinancialAddressSupportedNetworks> values = [ach, usDomesticWire];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TreasuryFinancialAccountsResourceFinancialAddressSupportedNetworks && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TreasuryFinancialAccountsResourceFinancialAddressSupportedNetworks($value)'; } 
 }
/// The type of financial address
@immutable final class TreasuryFinancialAccountsResourceFinancialAddressType {const TreasuryFinancialAccountsResourceFinancialAddressType._(this.value);

factory TreasuryFinancialAccountsResourceFinancialAddressType.fromJson(String json) { return switch (json) {
  'aba' => aba,
  _ => TreasuryFinancialAccountsResourceFinancialAddressType._(json),
}; }

static const TreasuryFinancialAccountsResourceFinancialAddressType aba = TreasuryFinancialAccountsResourceFinancialAddressType._('aba');

static const List<TreasuryFinancialAccountsResourceFinancialAddressType> values = [aba];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TreasuryFinancialAccountsResourceFinancialAddressType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TreasuryFinancialAccountsResourceFinancialAddressType($value)'; } 
 }
/// FinancialAddresses contain identifying information that resolves to a FinancialAccount.
@immutable final class TreasuryFinancialAccountsResourceFinancialAddress {const TreasuryFinancialAccountsResourceFinancialAddress({required this.type, this.aba, this.supportedNetworks, });

factory TreasuryFinancialAccountsResourceFinancialAddress.fromJson(Map<String, dynamic> json) { return TreasuryFinancialAccountsResourceFinancialAddress(
  aba: json['aba'] != null ? TreasuryFinancialAccountsResourceAbaRecord.fromJson(json['aba'] as Map<String, dynamic>) : null,
  supportedNetworks: (json['supported_networks'] as List<dynamic>?)?.map((e) => TreasuryFinancialAccountsResourceFinancialAddressSupportedNetworks.fromJson(e as String)).toList(),
  type: TreasuryFinancialAccountsResourceFinancialAddressType.fromJson(json['type'] as String),
); }

final TreasuryFinancialAccountsResourceAbaRecord? aba;

/// The list of networks that the address supports
final List<TreasuryFinancialAccountsResourceFinancialAddressSupportedNetworks>? supportedNetworks;

/// The type of financial address
final TreasuryFinancialAccountsResourceFinancialAddressType type;

Map<String, dynamic> toJson() { return {
  if (aba != null) 'aba': aba?.toJson(),
  if (supportedNetworks != null) 'supported_networks': supportedNetworks?.map((e) => e.toJson()).toList(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
TreasuryFinancialAccountsResourceFinancialAddress copyWith({TreasuryFinancialAccountsResourceAbaRecord Function()? aba, List<TreasuryFinancialAccountsResourceFinancialAddressSupportedNetworks> Function()? supportedNetworks, TreasuryFinancialAccountsResourceFinancialAddressType? type, }) { return TreasuryFinancialAccountsResourceFinancialAddress(
  aba: aba != null ? aba() : this.aba,
  supportedNetworks: supportedNetworks != null ? supportedNetworks() : this.supportedNetworks,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TreasuryFinancialAccountsResourceFinancialAddress &&
          aba == other.aba &&
          listEquals(supportedNetworks, other.supportedNetworks) &&
          type == other.type; } 
@override int get hashCode { return Object.hash(aba, Object.hashAll(supportedNetworks ?? const []), type); } 
@override String toString() { return 'TreasuryFinancialAccountsResourceFinancialAddress(aba: $aba, supportedNetworks: $supportedNetworks, type: $type)'; } 
 }
