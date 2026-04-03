// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The status of the mandate on the Bacs network. Can be one of `pending`, `revoked`, `refused`, or `accepted`.
@immutable final class MandateBacsDebitNetworkStatus {const MandateBacsDebitNetworkStatus._(this.value);

factory MandateBacsDebitNetworkStatus.fromJson(String json) { return switch (json) {
  'accepted' => accepted,
  'pending' => pending,
  'refused' => refused,
  'revoked' => revoked,
  _ => MandateBacsDebitNetworkStatus._(json),
}; }

static const MandateBacsDebitNetworkStatus accepted = MandateBacsDebitNetworkStatus._('accepted');

static const MandateBacsDebitNetworkStatus pending = MandateBacsDebitNetworkStatus._('pending');

static const MandateBacsDebitNetworkStatus refused = MandateBacsDebitNetworkStatus._('refused');

static const MandateBacsDebitNetworkStatus revoked = MandateBacsDebitNetworkStatus._('revoked');

static const List<MandateBacsDebitNetworkStatus> values = [accepted, pending, refused, revoked];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MandateBacsDebitNetworkStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MandateBacsDebitNetworkStatus($value)'; } 
 }
/// When the mandate is revoked on the Bacs network this field displays the reason for the revocation.
@immutable final class MandateBacsDebitRevocationReason {const MandateBacsDebitRevocationReason._(this.value);

factory MandateBacsDebitRevocationReason.fromJson(String json) { return switch (json) {
  'account_closed' => accountClosed,
  'bank_account_restricted' => bankAccountRestricted,
  'bank_ownership_changed' => bankOwnershipChanged,
  'could_not_process' => couldNotProcess,
  'debit_not_authorized' => debitNotAuthorized,
  _ => MandateBacsDebitRevocationReason._(json),
}; }

static const MandateBacsDebitRevocationReason accountClosed = MandateBacsDebitRevocationReason._('account_closed');

static const MandateBacsDebitRevocationReason bankAccountRestricted = MandateBacsDebitRevocationReason._('bank_account_restricted');

static const MandateBacsDebitRevocationReason bankOwnershipChanged = MandateBacsDebitRevocationReason._('bank_ownership_changed');

static const MandateBacsDebitRevocationReason couldNotProcess = MandateBacsDebitRevocationReason._('could_not_process');

static const MandateBacsDebitRevocationReason debitNotAuthorized = MandateBacsDebitRevocationReason._('debit_not_authorized');

static const List<MandateBacsDebitRevocationReason> values = [accountClosed, bankAccountRestricted, bankOwnershipChanged, couldNotProcess, debitNotAuthorized];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MandateBacsDebitRevocationReason && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MandateBacsDebitRevocationReason($value)'; } 
 }
/// 
@immutable final class MandateBacsDebit {const MandateBacsDebit({required this.networkStatus, required this.reference, required this.url, this.displayName, this.revocationReason, this.serviceUserNumber, });

factory MandateBacsDebit.fromJson(Map<String, dynamic> json) { return MandateBacsDebit(
  displayName: json['display_name'] as String?,
  networkStatus: MandateBacsDebitNetworkStatus.fromJson(json['network_status'] as String),
  reference: json['reference'] as String,
  revocationReason: json['revocation_reason'] != null ? MandateBacsDebitRevocationReason.fromJson(json['revocation_reason'] as String) : null,
  serviceUserNumber: json['service_user_number'] as String?,
  url: json['url'] as String,
); }

/// The display name for the account on this mandate.
final String? displayName;

/// The status of the mandate on the Bacs network. Can be one of `pending`, `revoked`, `refused`, or `accepted`.
final MandateBacsDebitNetworkStatus networkStatus;

/// The unique reference identifying the mandate on the Bacs network.
final String reference;

/// When the mandate is revoked on the Bacs network this field displays the reason for the revocation.
final MandateBacsDebitRevocationReason? revocationReason;

/// The service user number for the account on this mandate.
final String? serviceUserNumber;

/// The URL that will contain the mandate that the customer has signed.
final String url;

Map<String, dynamic> toJson() { return {
  'display_name': ?displayName,
  'network_status': networkStatus.toJson(),
  'reference': reference,
  if (revocationReason != null) 'revocation_reason': revocationReason?.toJson(),
  'service_user_number': ?serviceUserNumber,
  'url': url,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('network_status') &&
      json.containsKey('reference') && json['reference'] is String &&
      json.containsKey('url') && json['url'] is String; } 
MandateBacsDebit copyWith({String? Function()? displayName, MandateBacsDebitNetworkStatus? networkStatus, String? reference, MandateBacsDebitRevocationReason? Function()? revocationReason, String? Function()? serviceUserNumber, String? url, }) { return MandateBacsDebit(
  displayName: displayName != null ? displayName() : this.displayName,
  networkStatus: networkStatus ?? this.networkStatus,
  reference: reference ?? this.reference,
  revocationReason: revocationReason != null ? revocationReason() : this.revocationReason,
  serviceUserNumber: serviceUserNumber != null ? serviceUserNumber() : this.serviceUserNumber,
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MandateBacsDebit &&
          displayName == other.displayName &&
          networkStatus == other.networkStatus &&
          reference == other.reference &&
          revocationReason == other.revocationReason &&
          serviceUserNumber == other.serviceUserNumber &&
          url == other.url; } 
@override int get hashCode { return Object.hash(displayName, networkStatus, reference, revocationReason, serviceUserNumber, url); } 
@override String toString() { return 'MandateBacsDebit(displayName: $displayName, networkStatus: $networkStatus, reference: $reference, revocationReason: $revocationReason, serviceUserNumber: $serviceUserNumber, url: $url)'; } 
 }
