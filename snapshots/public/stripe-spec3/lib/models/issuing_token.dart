// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'issuing_card.dart';import 'issuing_network_token_network_data.dart';import 'issuing_token_card.dart';/// The token service provider / card network associated with the token.
final class IssuingTokenNetwork {const IssuingTokenNetwork._(this.value);

factory IssuingTokenNetwork.fromJson(String json) { return switch (json) {
  'mastercard' => mastercard,
  'visa' => visa,
  _ => IssuingTokenNetwork._(json),
}; }

static const IssuingTokenNetwork mastercard = IssuingTokenNetwork._('mastercard');

static const IssuingTokenNetwork visa = IssuingTokenNetwork._('visa');

static const List<IssuingTokenNetwork> values = [mastercard, visa];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuingTokenNetwork && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuingTokenNetwork($value)'; } 
 }
/// String representing the object's type. Objects of the same type share the same value.
final class IssuingTokenObject {const IssuingTokenObject._(this.value);

factory IssuingTokenObject.fromJson(String json) { return switch (json) {
  'issuing.token' => issuingToken,
  _ => IssuingTokenObject._(json),
}; }

static const IssuingTokenObject issuingToken = IssuingTokenObject._('issuing.token');

static const List<IssuingTokenObject> values = [issuingToken];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuingTokenObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuingTokenObject($value)'; } 
 }
/// The usage state of the token.
final class IssuingTokenStatus {const IssuingTokenStatus._(this.value);

factory IssuingTokenStatus.fromJson(String json) { return switch (json) {
  'active' => active,
  'deleted' => deleted,
  'requested' => requested,
  'suspended' => suspended,
  _ => IssuingTokenStatus._(json),
}; }

static const IssuingTokenStatus active = IssuingTokenStatus._('active');

static const IssuingTokenStatus deleted = IssuingTokenStatus._('deleted');

static const IssuingTokenStatus requested = IssuingTokenStatus._('requested');

static const IssuingTokenStatus suspended = IssuingTokenStatus._('suspended');

static const List<IssuingTokenStatus> values = [active, deleted, requested, suspended];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuingTokenStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuingTokenStatus($value)'; } 
 }
/// The digital wallet for this token, if one was used.
final class IssuingTokenWalletProvider {const IssuingTokenWalletProvider._(this.value);

factory IssuingTokenWalletProvider.fromJson(String json) { return switch (json) {
  'apple_pay' => applePay,
  'google_pay' => googlePay,
  'samsung_pay' => samsungPay,
  _ => IssuingTokenWalletProvider._(json),
}; }

static const IssuingTokenWalletProvider applePay = IssuingTokenWalletProvider._('apple_pay');

static const IssuingTokenWalletProvider googlePay = IssuingTokenWalletProvider._('google_pay');

static const IssuingTokenWalletProvider samsungPay = IssuingTokenWalletProvider._('samsung_pay');

static const List<IssuingTokenWalletProvider> values = [applePay, googlePay, samsungPay];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuingTokenWalletProvider && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuingTokenWalletProvider($value)'; } 
 }
/// An issuing token object is created when an issued card is added to a digital wallet. As a [card issuer](https://docs.stripe.com/issuing), you can [view and manage these tokens](https://docs.stripe.com/issuing/controls/token-management) through Stripe.
final class IssuingToken {const IssuingToken({required this.card, required this.created, this.deviceFingerprint, required this.id, this.last4, required this.livemode, required this.network, this.networkData, required this.networkUpdatedAt, required this.object, required this.status, this.walletProvider, });

factory IssuingToken.fromJson(Map<String, dynamic> json) { return IssuingToken(
  card: OneOf2.parse(json['card'], fromA: (v) => v as String, fromB: (v) => IssuingCard.fromJson(v as Map<String, dynamic>),),
  created: (json['created'] as num).toInt(),
  deviceFingerprint: json['device_fingerprint'] as String?,
  id: json['id'] as String,
  last4: json['last4'] as String?,
  livemode: json['livemode'] as bool,
  network: IssuingTokenNetwork.fromJson(json['network'] as String),
  networkData: json['network_data'] != null ? IssuingNetworkTokenNetworkData.fromJson(json['network_data'] as Map<String, dynamic>) : null,
  networkUpdatedAt: (json['network_updated_at'] as num).toInt(),
  object: IssuingTokenObject.fromJson(json['object'] as String),
  status: IssuingTokenStatus.fromJson(json['status'] as String),
  walletProvider: json['wallet_provider'] != null ? IssuingTokenWalletProvider.fromJson(json['wallet_provider'] as String) : null,
); }

/// Card associated with this token.
final IssuingTokenCard card;

/// Time at which the object was created. Measured in seconds since the Unix epoch.
final int created;

/// The hashed ID derived from the device ID from the card network associated with the token.
final String? deviceFingerprint;

/// Unique identifier for the object.
final String id;

/// The last four digits of the token.
final String? last4;

/// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
final bool livemode;

/// The token service provider / card network associated with the token.
final IssuingTokenNetwork network;

final IssuingNetworkTokenNetworkData? networkData;

/// Time at which the token was last updated by the card network. Measured in seconds since the Unix epoch.
final int networkUpdatedAt;

/// String representing the object's type. Objects of the same type share the same value.
final IssuingTokenObject object;

/// The usage state of the token.
final IssuingTokenStatus status;

/// The digital wallet for this token, if one was used.
final IssuingTokenWalletProvider? walletProvider;

Map<String, dynamic> toJson() { return {
  'card': card.toJson(),
  'created': created,
  'device_fingerprint': ?deviceFingerprint,
  'id': id,
  'last4': ?last4,
  'livemode': livemode,
  'network': network.toJson(),
  if (networkData != null) 'network_data': networkData?.toJson(),
  'network_updated_at': networkUpdatedAt,
  'object': object.toJson(),
  'status': status.toJson(),
  if (walletProvider != null) 'wallet_provider': walletProvider?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('card') &&
      json.containsKey('created') && json['created'] is num &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('livemode') && json['livemode'] is bool &&
      json.containsKey('network') &&
      json.containsKey('network_updated_at') && json['network_updated_at'] is num &&
      json.containsKey('object') &&
      json.containsKey('status'); } 
IssuingToken copyWith({IssuingTokenCard? card, int? created, String? Function()? deviceFingerprint, String? id, String Function()? last4, bool? livemode, IssuingTokenNetwork? network, IssuingNetworkTokenNetworkData Function()? networkData, int? networkUpdatedAt, IssuingTokenObject? object, IssuingTokenStatus? status, IssuingTokenWalletProvider Function()? walletProvider, }) { return IssuingToken(
  card: card ?? this.card,
  created: created ?? this.created,
  deviceFingerprint: deviceFingerprint != null ? deviceFingerprint() : this.deviceFingerprint,
  id: id ?? this.id,
  last4: last4 != null ? last4() : this.last4,
  livemode: livemode ?? this.livemode,
  network: network ?? this.network,
  networkData: networkData != null ? networkData() : this.networkData,
  networkUpdatedAt: networkUpdatedAt ?? this.networkUpdatedAt,
  object: object ?? this.object,
  status: status ?? this.status,
  walletProvider: walletProvider != null ? walletProvider() : this.walletProvider,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingToken &&
          card == other.card &&
          created == other.created &&
          deviceFingerprint == other.deviceFingerprint &&
          id == other.id &&
          last4 == other.last4 &&
          livemode == other.livemode &&
          network == other.network &&
          networkData == other.networkData &&
          networkUpdatedAt == other.networkUpdatedAt &&
          object == other.object &&
          status == other.status &&
          walletProvider == other.walletProvider; } 
@override int get hashCode { return Object.hash(card, created, deviceFingerprint, id, last4, livemode, network, networkData, networkUpdatedAt, object, status, walletProvider); } 
@override String toString() { return 'IssuingToken(card: $card, created: $created, deviceFingerprint: $deviceFingerprint, id: $id, last4: $last4, livemode: $livemode, network: $network, networkData: $networkData, networkUpdatedAt: $networkUpdatedAt, object: $object, status: $status, walletProvider: $walletProvider)'; } 
 }
