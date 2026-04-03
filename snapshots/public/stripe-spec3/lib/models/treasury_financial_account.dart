// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'treasury_financial_account_features.dart';import 'treasury_financial_accounts_resource_balance.dart';import 'treasury_financial_accounts_resource_financial_address.dart';import 'treasury_financial_accounts_resource_platform_restrictions.dart';import 'treasury_financial_accounts_resource_status_details.dart';@immutable final class TreasuryFinancialAccountActiveFeatures {const TreasuryFinancialAccountActiveFeatures._(this.value);

factory TreasuryFinancialAccountActiveFeatures.fromJson(String json) { return switch (json) {
  'card_issuing' => cardIssuing,
  'deposit_insurance' => depositInsurance,
  'financial_addresses.aba' => financialAddressesAba,
  'financial_addresses.aba.forwarding' => financialAddressesAbaForwarding,
  'inbound_transfers.ach' => inboundTransfersAch,
  'intra_stripe_flows' => intraStripeFlows,
  'outbound_payments.ach' => outboundPaymentsAch,
  'outbound_payments.us_domestic_wire' => outboundPaymentsUsDomesticWire,
  'outbound_transfers.ach' => outboundTransfersAch,
  'outbound_transfers.us_domestic_wire' => outboundTransfersUsDomesticWire,
  'remote_deposit_capture' => remoteDepositCapture,
  _ => TreasuryFinancialAccountActiveFeatures._(json),
}; }

static const TreasuryFinancialAccountActiveFeatures cardIssuing = TreasuryFinancialAccountActiveFeatures._('card_issuing');

static const TreasuryFinancialAccountActiveFeatures depositInsurance = TreasuryFinancialAccountActiveFeatures._('deposit_insurance');

static const TreasuryFinancialAccountActiveFeatures financialAddressesAba = TreasuryFinancialAccountActiveFeatures._('financial_addresses.aba');

static const TreasuryFinancialAccountActiveFeatures financialAddressesAbaForwarding = TreasuryFinancialAccountActiveFeatures._('financial_addresses.aba.forwarding');

static const TreasuryFinancialAccountActiveFeatures inboundTransfersAch = TreasuryFinancialAccountActiveFeatures._('inbound_transfers.ach');

static const TreasuryFinancialAccountActiveFeatures intraStripeFlows = TreasuryFinancialAccountActiveFeatures._('intra_stripe_flows');

static const TreasuryFinancialAccountActiveFeatures outboundPaymentsAch = TreasuryFinancialAccountActiveFeatures._('outbound_payments.ach');

static const TreasuryFinancialAccountActiveFeatures outboundPaymentsUsDomesticWire = TreasuryFinancialAccountActiveFeatures._('outbound_payments.us_domestic_wire');

static const TreasuryFinancialAccountActiveFeatures outboundTransfersAch = TreasuryFinancialAccountActiveFeatures._('outbound_transfers.ach');

static const TreasuryFinancialAccountActiveFeatures outboundTransfersUsDomesticWire = TreasuryFinancialAccountActiveFeatures._('outbound_transfers.us_domestic_wire');

static const TreasuryFinancialAccountActiveFeatures remoteDepositCapture = TreasuryFinancialAccountActiveFeatures._('remote_deposit_capture');

static const List<TreasuryFinancialAccountActiveFeatures> values = [cardIssuing, depositInsurance, financialAddressesAba, financialAddressesAbaForwarding, inboundTransfersAch, intraStripeFlows, outboundPaymentsAch, outboundPaymentsUsDomesticWire, outboundTransfersAch, outboundTransfersUsDomesticWire, remoteDepositCapture];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TreasuryFinancialAccountActiveFeatures && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TreasuryFinancialAccountActiveFeatures($value)'; } 
 }
/// String representing the object's type. Objects of the same type share the same value.
@immutable final class TreasuryFinancialAccountObject {const TreasuryFinancialAccountObject._(this.value);

factory TreasuryFinancialAccountObject.fromJson(String json) { return switch (json) {
  'treasury.financial_account' => treasuryFinancialAccount,
  _ => TreasuryFinancialAccountObject._(json),
}; }

static const TreasuryFinancialAccountObject treasuryFinancialAccount = TreasuryFinancialAccountObject._('treasury.financial_account');

static const List<TreasuryFinancialAccountObject> values = [treasuryFinancialAccount];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TreasuryFinancialAccountObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TreasuryFinancialAccountObject($value)'; } 
 }
@immutable final class TreasuryFinancialAccountPendingFeatures {const TreasuryFinancialAccountPendingFeatures._(this.value);

factory TreasuryFinancialAccountPendingFeatures.fromJson(String json) { return switch (json) {
  'card_issuing' => cardIssuing,
  'deposit_insurance' => depositInsurance,
  'financial_addresses.aba' => financialAddressesAba,
  'financial_addresses.aba.forwarding' => financialAddressesAbaForwarding,
  'inbound_transfers.ach' => inboundTransfersAch,
  'intra_stripe_flows' => intraStripeFlows,
  'outbound_payments.ach' => outboundPaymentsAch,
  'outbound_payments.us_domestic_wire' => outboundPaymentsUsDomesticWire,
  'outbound_transfers.ach' => outboundTransfersAch,
  'outbound_transfers.us_domestic_wire' => outboundTransfersUsDomesticWire,
  'remote_deposit_capture' => remoteDepositCapture,
  _ => TreasuryFinancialAccountPendingFeatures._(json),
}; }

static const TreasuryFinancialAccountPendingFeatures cardIssuing = TreasuryFinancialAccountPendingFeatures._('card_issuing');

static const TreasuryFinancialAccountPendingFeatures depositInsurance = TreasuryFinancialAccountPendingFeatures._('deposit_insurance');

static const TreasuryFinancialAccountPendingFeatures financialAddressesAba = TreasuryFinancialAccountPendingFeatures._('financial_addresses.aba');

static const TreasuryFinancialAccountPendingFeatures financialAddressesAbaForwarding = TreasuryFinancialAccountPendingFeatures._('financial_addresses.aba.forwarding');

static const TreasuryFinancialAccountPendingFeatures inboundTransfersAch = TreasuryFinancialAccountPendingFeatures._('inbound_transfers.ach');

static const TreasuryFinancialAccountPendingFeatures intraStripeFlows = TreasuryFinancialAccountPendingFeatures._('intra_stripe_flows');

static const TreasuryFinancialAccountPendingFeatures outboundPaymentsAch = TreasuryFinancialAccountPendingFeatures._('outbound_payments.ach');

static const TreasuryFinancialAccountPendingFeatures outboundPaymentsUsDomesticWire = TreasuryFinancialAccountPendingFeatures._('outbound_payments.us_domestic_wire');

static const TreasuryFinancialAccountPendingFeatures outboundTransfersAch = TreasuryFinancialAccountPendingFeatures._('outbound_transfers.ach');

static const TreasuryFinancialAccountPendingFeatures outboundTransfersUsDomesticWire = TreasuryFinancialAccountPendingFeatures._('outbound_transfers.us_domestic_wire');

static const TreasuryFinancialAccountPendingFeatures remoteDepositCapture = TreasuryFinancialAccountPendingFeatures._('remote_deposit_capture');

static const List<TreasuryFinancialAccountPendingFeatures> values = [cardIssuing, depositInsurance, financialAddressesAba, financialAddressesAbaForwarding, inboundTransfersAch, intraStripeFlows, outboundPaymentsAch, outboundPaymentsUsDomesticWire, outboundTransfersAch, outboundTransfersUsDomesticWire, remoteDepositCapture];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TreasuryFinancialAccountPendingFeatures && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TreasuryFinancialAccountPendingFeatures($value)'; } 
 }
@immutable final class TreasuryFinancialAccountRestrictedFeatures {const TreasuryFinancialAccountRestrictedFeatures._(this.value);

factory TreasuryFinancialAccountRestrictedFeatures.fromJson(String json) { return switch (json) {
  'card_issuing' => cardIssuing,
  'deposit_insurance' => depositInsurance,
  'financial_addresses.aba' => financialAddressesAba,
  'financial_addresses.aba.forwarding' => financialAddressesAbaForwarding,
  'inbound_transfers.ach' => inboundTransfersAch,
  'intra_stripe_flows' => intraStripeFlows,
  'outbound_payments.ach' => outboundPaymentsAch,
  'outbound_payments.us_domestic_wire' => outboundPaymentsUsDomesticWire,
  'outbound_transfers.ach' => outboundTransfersAch,
  'outbound_transfers.us_domestic_wire' => outboundTransfersUsDomesticWire,
  'remote_deposit_capture' => remoteDepositCapture,
  _ => TreasuryFinancialAccountRestrictedFeatures._(json),
}; }

static const TreasuryFinancialAccountRestrictedFeatures cardIssuing = TreasuryFinancialAccountRestrictedFeatures._('card_issuing');

static const TreasuryFinancialAccountRestrictedFeatures depositInsurance = TreasuryFinancialAccountRestrictedFeatures._('deposit_insurance');

static const TreasuryFinancialAccountRestrictedFeatures financialAddressesAba = TreasuryFinancialAccountRestrictedFeatures._('financial_addresses.aba');

static const TreasuryFinancialAccountRestrictedFeatures financialAddressesAbaForwarding = TreasuryFinancialAccountRestrictedFeatures._('financial_addresses.aba.forwarding');

static const TreasuryFinancialAccountRestrictedFeatures inboundTransfersAch = TreasuryFinancialAccountRestrictedFeatures._('inbound_transfers.ach');

static const TreasuryFinancialAccountRestrictedFeatures intraStripeFlows = TreasuryFinancialAccountRestrictedFeatures._('intra_stripe_flows');

static const TreasuryFinancialAccountRestrictedFeatures outboundPaymentsAch = TreasuryFinancialAccountRestrictedFeatures._('outbound_payments.ach');

static const TreasuryFinancialAccountRestrictedFeatures outboundPaymentsUsDomesticWire = TreasuryFinancialAccountRestrictedFeatures._('outbound_payments.us_domestic_wire');

static const TreasuryFinancialAccountRestrictedFeatures outboundTransfersAch = TreasuryFinancialAccountRestrictedFeatures._('outbound_transfers.ach');

static const TreasuryFinancialAccountRestrictedFeatures outboundTransfersUsDomesticWire = TreasuryFinancialAccountRestrictedFeatures._('outbound_transfers.us_domestic_wire');

static const TreasuryFinancialAccountRestrictedFeatures remoteDepositCapture = TreasuryFinancialAccountRestrictedFeatures._('remote_deposit_capture');

static const List<TreasuryFinancialAccountRestrictedFeatures> values = [cardIssuing, depositInsurance, financialAddressesAba, financialAddressesAbaForwarding, inboundTransfersAch, intraStripeFlows, outboundPaymentsAch, outboundPaymentsUsDomesticWire, outboundTransfersAch, outboundTransfersUsDomesticWire, remoteDepositCapture];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TreasuryFinancialAccountRestrictedFeatures && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TreasuryFinancialAccountRestrictedFeatures($value)'; } 
 }
/// Status of this FinancialAccount.
@immutable final class TreasuryFinancialAccountStatus {const TreasuryFinancialAccountStatus._(this.value);

factory TreasuryFinancialAccountStatus.fromJson(String json) { return switch (json) {
  'closed' => closed,
  'open' => open,
  _ => TreasuryFinancialAccountStatus._(json),
}; }

static const TreasuryFinancialAccountStatus closed = TreasuryFinancialAccountStatus._('closed');

static const TreasuryFinancialAccountStatus open = TreasuryFinancialAccountStatus._('open');

static const List<TreasuryFinancialAccountStatus> values = [closed, open];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TreasuryFinancialAccountStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TreasuryFinancialAccountStatus($value)'; } 
 }
/// Stripe Treasury provides users with a container for money called a FinancialAccount that is separate from their Payments balance.
/// FinancialAccounts serve as the source and destination of Treasury’s money movement APIs.
@immutable final class TreasuryFinancialAccount {const TreasuryFinancialAccount({required this.balance, required this.country, required this.created, required this.financialAddresses, required this.id, required this.livemode, required this.object, required this.status, required this.statusDetails, required this.supportedCurrencies, this.activeFeatures, this.features, this.isDefault, this.metadata, this.nickname, this.pendingFeatures, this.platformRestrictions, this.restrictedFeatures, });

factory TreasuryFinancialAccount.fromJson(Map<String, dynamic> json) { return TreasuryFinancialAccount(
  activeFeatures: (json['active_features'] as List<dynamic>?)?.map((e) => TreasuryFinancialAccountActiveFeatures.fromJson(e as String)).toList(),
  balance: TreasuryFinancialAccountsResourceBalance.fromJson(json['balance'] as Map<String, dynamic>),
  country: json['country'] as String,
  created: (json['created'] as num).toInt(),
  features: json['features'] != null ? TreasuryFinancialAccountFeatures.fromJson(json['features'] as Map<String, dynamic>) : null,
  financialAddresses: (json['financial_addresses'] as List<dynamic>).map((e) => TreasuryFinancialAccountsResourceFinancialAddress.fromJson(e as Map<String, dynamic>)).toList(),
  id: json['id'] as String,
  isDefault: json['is_default'] as bool?,
  livemode: json['livemode'] as bool,
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  nickname: json['nickname'] as String?,
  object: TreasuryFinancialAccountObject.fromJson(json['object'] as String),
  pendingFeatures: (json['pending_features'] as List<dynamic>?)?.map((e) => TreasuryFinancialAccountPendingFeatures.fromJson(e as String)).toList(),
  platformRestrictions: json['platform_restrictions'] != null ? TreasuryFinancialAccountsResourcePlatformRestrictions.fromJson(json['platform_restrictions'] as Map<String, dynamic>) : null,
  restrictedFeatures: (json['restricted_features'] as List<dynamic>?)?.map((e) => TreasuryFinancialAccountRestrictedFeatures.fromJson(e as String)).toList(),
  status: TreasuryFinancialAccountStatus.fromJson(json['status'] as String),
  statusDetails: TreasuryFinancialAccountsResourceStatusDetails.fromJson(json['status_details'] as Map<String, dynamic>),
  supportedCurrencies: (json['supported_currencies'] as List<dynamic>).map((e) => e as String).toList(),
); }

/// The array of paths to active Features in the Features hash.
final List<TreasuryFinancialAccountActiveFeatures>? activeFeatures;

final TreasuryFinancialAccountsResourceBalance balance;

/// Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
final String country;

/// Time at which the object was created. Measured in seconds since the Unix epoch.
final int created;

final TreasuryFinancialAccountFeatures? features;

/// The set of credentials that resolve to a FinancialAccount.
final List<TreasuryFinancialAccountsResourceFinancialAddress> financialAddresses;

/// Unique identifier for the object.
final String id;

final bool? isDefault;

/// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
final bool livemode;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
final Map<String,String>? metadata;

/// The nickname for the FinancialAccount.
final String? nickname;

/// String representing the object's type. Objects of the same type share the same value.
final TreasuryFinancialAccountObject object;

/// The array of paths to pending Features in the Features hash.
final List<TreasuryFinancialAccountPendingFeatures>? pendingFeatures;

/// The set of functionalities that the platform can restrict on the FinancialAccount.
final TreasuryFinancialAccountsResourcePlatformRestrictions? platformRestrictions;

/// The array of paths to restricted Features in the Features hash.
final List<TreasuryFinancialAccountRestrictedFeatures>? restrictedFeatures;

/// Status of this FinancialAccount.
final TreasuryFinancialAccountStatus status;

final TreasuryFinancialAccountsResourceStatusDetails statusDetails;

/// The currencies the FinancialAccount can hold a balance in. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase.
final List<String> supportedCurrencies;

Map<String, dynamic> toJson() { return {
  if (activeFeatures != null) 'active_features': activeFeatures?.map((e) => e.toJson()).toList(),
  'balance': balance.toJson(),
  'country': country,
  'created': created,
  if (features != null) 'features': features?.toJson(),
  'financial_addresses': financialAddresses.map((e) => e.toJson()).toList(),
  'id': id,
  'is_default': ?isDefault,
  'livemode': livemode,
  'metadata': ?metadata,
  'nickname': ?nickname,
  'object': object.toJson(),
  if (pendingFeatures != null) 'pending_features': pendingFeatures?.map((e) => e.toJson()).toList(),
  if (platformRestrictions != null) 'platform_restrictions': platformRestrictions?.toJson(),
  if (restrictedFeatures != null) 'restricted_features': restrictedFeatures?.map((e) => e.toJson()).toList(),
  'status': status.toJson(),
  'status_details': statusDetails.toJson(),
  'supported_currencies': supportedCurrencies,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('balance') &&
      json.containsKey('country') && json['country'] is String &&
      json.containsKey('created') && json['created'] is num &&
      json.containsKey('financial_addresses') &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('livemode') && json['livemode'] is bool &&
      json.containsKey('object') &&
      json.containsKey('status') &&
      json.containsKey('status_details') &&
      json.containsKey('supported_currencies'); } 
TreasuryFinancialAccount copyWith({List<TreasuryFinancialAccountActiveFeatures> Function()? activeFeatures, TreasuryFinancialAccountsResourceBalance? balance, String? country, int? created, TreasuryFinancialAccountFeatures Function()? features, List<TreasuryFinancialAccountsResourceFinancialAddress>? financialAddresses, String? id, bool Function()? isDefault, bool? livemode, Map<String, String>? Function()? metadata, String? Function()? nickname, TreasuryFinancialAccountObject? object, List<TreasuryFinancialAccountPendingFeatures> Function()? pendingFeatures, TreasuryFinancialAccountsResourcePlatformRestrictions? Function()? platformRestrictions, List<TreasuryFinancialAccountRestrictedFeatures> Function()? restrictedFeatures, TreasuryFinancialAccountStatus? status, TreasuryFinancialAccountsResourceStatusDetails? statusDetails, List<String>? supportedCurrencies, }) { return TreasuryFinancialAccount(
  activeFeatures: activeFeatures != null ? activeFeatures() : this.activeFeatures,
  balance: balance ?? this.balance,
  country: country ?? this.country,
  created: created ?? this.created,
  features: features != null ? features() : this.features,
  financialAddresses: financialAddresses ?? this.financialAddresses,
  id: id ?? this.id,
  isDefault: isDefault != null ? isDefault() : this.isDefault,
  livemode: livemode ?? this.livemode,
  metadata: metadata != null ? metadata() : this.metadata,
  nickname: nickname != null ? nickname() : this.nickname,
  object: object ?? this.object,
  pendingFeatures: pendingFeatures != null ? pendingFeatures() : this.pendingFeatures,
  platformRestrictions: platformRestrictions != null ? platformRestrictions() : this.platformRestrictions,
  restrictedFeatures: restrictedFeatures != null ? restrictedFeatures() : this.restrictedFeatures,
  status: status ?? this.status,
  statusDetails: statusDetails ?? this.statusDetails,
  supportedCurrencies: supportedCurrencies ?? this.supportedCurrencies,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TreasuryFinancialAccount &&
          listEquals(activeFeatures, other.activeFeatures) &&
          balance == other.balance &&
          country == other.country &&
          created == other.created &&
          features == other.features &&
          listEquals(financialAddresses, other.financialAddresses) &&
          id == other.id &&
          isDefault == other.isDefault &&
          livemode == other.livemode &&
          metadata == other.metadata &&
          nickname == other.nickname &&
          object == other.object &&
          listEquals(pendingFeatures, other.pendingFeatures) &&
          platformRestrictions == other.platformRestrictions &&
          listEquals(restrictedFeatures, other.restrictedFeatures) &&
          status == other.status &&
          statusDetails == other.statusDetails &&
          listEquals(supportedCurrencies, other.supportedCurrencies); } 
@override int get hashCode { return Object.hash(Object.hashAll(activeFeatures ?? const []), balance, country, created, features, Object.hashAll(financialAddresses), id, isDefault, livemode, metadata, nickname, object, Object.hashAll(pendingFeatures ?? const []), platformRestrictions, Object.hashAll(restrictedFeatures ?? const []), status, statusDetails, Object.hashAll(supportedCurrencies)); } 
@override String toString() { return 'TreasuryFinancialAccount(activeFeatures: $activeFeatures, balance: $balance, country: $country, created: $created, features: $features, financialAddresses: $financialAddresses, id: $id, isDefault: $isDefault, livemode: $livemode, metadata: $metadata, nickname: $nickname, object: $object, pendingFeatures: $pendingFeatures, platformRestrictions: $platformRestrictions, restrictedFeatures: $restrictedFeatures, status: $status, statusDetails: $statusDetails, supportedCurrencies: $supportedCurrencies)'; } 
 }
