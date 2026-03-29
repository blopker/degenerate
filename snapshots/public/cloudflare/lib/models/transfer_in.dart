// GENERATED CODE - DO NOT MODIFY BY HAND

/// Form of authorization has been accepted by the registrant.
final class TransferInAcceptFoa {const TransferInAcceptFoa._(this.value);

factory TransferInAcceptFoa.fromJson(String json) { return switch (json) {
  'needed' => needed,
  'ok' => ok,
  _ => TransferInAcceptFoa._(json),
}; }

static const TransferInAcceptFoa needed = TransferInAcceptFoa._('needed');

static const TransferInAcceptFoa ok = TransferInAcceptFoa._('ok');

static const List<TransferInAcceptFoa> values = [needed, ok];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TransferInAcceptFoa && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TransferInAcceptFoa($value)'; } 
 }
/// Shows transfer status with the registry.
final class TransferInApproveTransfer {const TransferInApproveTransfer._(this.value);

factory TransferInApproveTransfer.fromJson(String json) { return switch (json) {
  'needed' => needed,
  'ok' => ok,
  'pending' => pending,
  'trying' => trying,
  'rejected' => rejected,
  'unknown' => unknown,
  _ => TransferInApproveTransfer._(json),
}; }

static const TransferInApproveTransfer needed = TransferInApproveTransfer._('needed');

static const TransferInApproveTransfer ok = TransferInApproveTransfer._('ok');

static const TransferInApproveTransfer pending = TransferInApproveTransfer._('pending');

static const TransferInApproveTransfer trying = TransferInApproveTransfer._('trying');

static const TransferInApproveTransfer rejected = TransferInApproveTransfer._('rejected');

static const TransferInApproveTransfer unknown = TransferInApproveTransfer._('unknown');

static const List<TransferInApproveTransfer> values = [needed, ok, pending, trying, rejected, unknown];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TransferInApproveTransfer && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TransferInApproveTransfer($value)'; } 
 }
/// Privacy guards are disabled at the foreign registrar.
final class TransferInDisablePrivacy {const TransferInDisablePrivacy._(this.value);

factory TransferInDisablePrivacy.fromJson(String json) { return switch (json) {
  'needed' => needed,
  'ok' => ok,
  'unknown' => unknown,
  _ => TransferInDisablePrivacy._(json),
}; }

static const TransferInDisablePrivacy needed = TransferInDisablePrivacy._('needed');

static const TransferInDisablePrivacy ok = TransferInDisablePrivacy._('ok');

static const TransferInDisablePrivacy unknown = TransferInDisablePrivacy._('unknown');

static const List<TransferInDisablePrivacy> values = [needed, ok, unknown];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TransferInDisablePrivacy && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TransferInDisablePrivacy($value)'; } 
 }
/// Auth code has been entered and verified.
final class TransferInEnterAuthCode {const TransferInEnterAuthCode._(this.value);

factory TransferInEnterAuthCode.fromJson(String json) { return switch (json) {
  'needed' => needed,
  'ok' => ok,
  'pending' => pending,
  'trying' => trying,
  'rejected' => rejected,
  _ => TransferInEnterAuthCode._(json),
}; }

static const TransferInEnterAuthCode needed = TransferInEnterAuthCode._('needed');

static const TransferInEnterAuthCode ok = TransferInEnterAuthCode._('ok');

static const TransferInEnterAuthCode pending = TransferInEnterAuthCode._('pending');

static const TransferInEnterAuthCode trying = TransferInEnterAuthCode._('trying');

static const TransferInEnterAuthCode rejected = TransferInEnterAuthCode._('rejected');

static const List<TransferInEnterAuthCode> values = [needed, ok, pending, trying, rejected];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TransferInEnterAuthCode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TransferInEnterAuthCode($value)'; } 
 }
/// Domain is unlocked at the foreign registrar.
final class TransferInUnlockDomain {const TransferInUnlockDomain._(this.value);

factory TransferInUnlockDomain.fromJson(String json) { return switch (json) {
  'needed' => needed,
  'ok' => ok,
  'pending' => pending,
  'trying' => trying,
  'unknown' => unknown,
  _ => TransferInUnlockDomain._(json),
}; }

static const TransferInUnlockDomain needed = TransferInUnlockDomain._('needed');

static const TransferInUnlockDomain ok = TransferInUnlockDomain._('ok');

static const TransferInUnlockDomain pending = TransferInUnlockDomain._('pending');

static const TransferInUnlockDomain trying = TransferInUnlockDomain._('trying');

static const TransferInUnlockDomain unknown = TransferInUnlockDomain._('unknown');

static const List<TransferInUnlockDomain> values = [needed, ok, pending, trying, unknown];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TransferInUnlockDomain && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TransferInUnlockDomain($value)'; } 
 }
/// Statuses for domain transfers into Cloudflare Registrar.
final class TransferIn {const TransferIn({this.acceptFoa, this.approveTransfer, this.canCancelTransfer, this.disablePrivacy, this.enterAuthCode, this.unlockDomain, });

factory TransferIn.fromJson(Map<String, dynamic> json) { return TransferIn(
  acceptFoa: json['accept_foa'] != null ? TransferInAcceptFoa.fromJson(json['accept_foa'] as String) : null,
  approveTransfer: json['approve_transfer'] != null ? TransferInApproveTransfer.fromJson(json['approve_transfer'] as String) : null,
  canCancelTransfer: json['can_cancel_transfer'] as bool?,
  disablePrivacy: json['disable_privacy'] != null ? TransferInDisablePrivacy.fromJson(json['disable_privacy'] as String) : null,
  enterAuthCode: json['enter_auth_code'] != null ? TransferInEnterAuthCode.fromJson(json['enter_auth_code'] as String) : null,
  unlockDomain: json['unlock_domain'] != null ? TransferInUnlockDomain.fromJson(json['unlock_domain'] as String) : null,
); }

/// Form of authorization has been accepted by the registrant.
final TransferInAcceptFoa? acceptFoa;

/// Shows transfer status with the registry.
final TransferInApproveTransfer? approveTransfer;

/// Indicates if cancellation is still possible.
final bool? canCancelTransfer;

/// Privacy guards are disabled at the foreign registrar.
final TransferInDisablePrivacy? disablePrivacy;

/// Auth code has been entered and verified.
final TransferInEnterAuthCode? enterAuthCode;

/// Domain is unlocked at the foreign registrar.
final TransferInUnlockDomain? unlockDomain;

Map<String, dynamic> toJson() { return {
  if (acceptFoa != null) 'accept_foa': acceptFoa?.toJson(),
  if (approveTransfer != null) 'approve_transfer': approveTransfer?.toJson(),
  'can_cancel_transfer': ?canCancelTransfer,
  if (disablePrivacy != null) 'disable_privacy': disablePrivacy?.toJson(),
  if (enterAuthCode != null) 'enter_auth_code': enterAuthCode?.toJson(),
  if (unlockDomain != null) 'unlock_domain': unlockDomain?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
TransferIn copyWith({TransferInAcceptFoa Function()? acceptFoa, TransferInApproveTransfer Function()? approveTransfer, bool Function()? canCancelTransfer, TransferInDisablePrivacy Function()? disablePrivacy, TransferInEnterAuthCode Function()? enterAuthCode, TransferInUnlockDomain Function()? unlockDomain, }) { return TransferIn(
  acceptFoa: acceptFoa != null ? acceptFoa() : this.acceptFoa,
  approveTransfer: approveTransfer != null ? approveTransfer() : this.approveTransfer,
  canCancelTransfer: canCancelTransfer != null ? canCancelTransfer() : this.canCancelTransfer,
  disablePrivacy: disablePrivacy != null ? disablePrivacy() : this.disablePrivacy,
  enterAuthCode: enterAuthCode != null ? enterAuthCode() : this.enterAuthCode,
  unlockDomain: unlockDomain != null ? unlockDomain() : this.unlockDomain,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TransferIn &&
          acceptFoa == other.acceptFoa &&
          approveTransfer == other.approveTransfer &&
          canCancelTransfer == other.canCancelTransfer &&
          disablePrivacy == other.disablePrivacy &&
          enterAuthCode == other.enterAuthCode &&
          unlockDomain == other.unlockDomain; } 
@override int get hashCode { return Object.hash(acceptFoa, approveTransfer, canCancelTransfer, disablePrivacy, enterAuthCode, unlockDomain); } 
@override String toString() { return 'TransferIn(acceptFoa: $acceptFoa, approveTransfer: $approveTransfer, canCancelTransfer: $canCancelTransfer, disablePrivacy: $disablePrivacy, enterAuthCode: $enterAuthCode, unlockDomain: $unlockDomain)'; } 
 }
