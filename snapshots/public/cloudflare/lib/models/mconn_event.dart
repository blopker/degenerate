// GENERATED CODE - DO NOT MODIFY BY HAND

import 'mconn_event_configure_cloudflared_tunnel.dart';import 'mconn_event_finish_attestation_failure.dart';import 'mconn_event_finish_attestation_success.dart';import 'mconn_event_finish_rotate_crypt_key_failure.dart';import 'mconn_event_finish_rotate_crypt_key_success.dart';import 'mconn_event_finish_rotate_pki_failure.dart';import 'mconn_event_finish_rotate_pki_success.dart';import 'mconn_event_finish_upgrade_failure.dart';import 'mconn_event_finish_upgrade_success.dart';import 'mconn_event_init.dart';import 'mconn_event_leave.dart';import 'mconn_event_reconcile.dart';import 'mconn_event_start_attestation.dart';import 'mconn_event_start_rotate_crypt_key.dart';import 'mconn_event_start_rotate_pki.dart';import 'mconn_event_start_upgrade.dart';/// A value that is one of: `MconnEventInit`, `MconnEventLeave`, `MconnEventStartAttestation`, `MconnEventFinishAttestationSuccess`, `MconnEventFinishAttestationFailure`, `MconnEventStartRotateCryptKey`, `MconnEventFinishRotateCryptKeySuccess`, `MconnEventFinishRotateCryptKeyFailure`, `MconnEventStartRotatePki`, `MconnEventFinishRotatePkiSuccess`, `MconnEventFinishRotatePkiFailure`, `MconnEventStartUpgrade`, `MconnEventFinishUpgradeSuccess`, `MconnEventFinishUpgradeFailure`, `MconnEventReconcile`, `MconnEventConfigureCloudflaredTunnel`.
sealed class MconnEvent {const MconnEvent();

factory MconnEvent.fromJson(Map<String, dynamic> json) {   if (MconnEventInit.canParse(json)) {
    return MconnEventMconnEventInit(MconnEventInit.fromJson(json));
  }
  if (MconnEventLeave.canParse(json)) {
    return MconnEventMconnEventLeave(MconnEventLeave.fromJson(json));
  }
  if (MconnEventStartAttestation.canParse(json)) {
    return MconnEventMconnEventStartAttestation(MconnEventStartAttestation.fromJson(json));
  }
  if (MconnEventFinishAttestationSuccess.canParse(json)) {
    return MconnEventMconnEventFinishAttestationSuccess(MconnEventFinishAttestationSuccess.fromJson(json));
  }
  if (MconnEventFinishAttestationFailure.canParse(json)) {
    return MconnEventMconnEventFinishAttestationFailure(MconnEventFinishAttestationFailure.fromJson(json));
  }
  if (MconnEventStartRotateCryptKey.canParse(json)) {
    return MconnEventMconnEventStartRotateCryptKey(MconnEventStartRotateCryptKey.fromJson(json));
  }
  if (MconnEventFinishRotateCryptKeySuccess.canParse(json)) {
    return MconnEventMconnEventFinishRotateCryptKeySuccess(MconnEventFinishRotateCryptKeySuccess.fromJson(json));
  }
  if (MconnEventFinishRotateCryptKeyFailure.canParse(json)) {
    return MconnEventMconnEventFinishRotateCryptKeyFailure(MconnEventFinishRotateCryptKeyFailure.fromJson(json));
  }
  if (MconnEventStartRotatePki.canParse(json)) {
    return MconnEventMconnEventStartRotatePki(MconnEventStartRotatePki.fromJson(json));
  }
  if (MconnEventFinishRotatePkiSuccess.canParse(json)) {
    return MconnEventMconnEventFinishRotatePkiSuccess(MconnEventFinishRotatePkiSuccess.fromJson(json));
  }
  if (MconnEventFinishRotatePkiFailure.canParse(json)) {
    return MconnEventMconnEventFinishRotatePkiFailure(MconnEventFinishRotatePkiFailure.fromJson(json));
  }
  if (MconnEventStartUpgrade.canParse(json)) {
    return MconnEventMconnEventStartUpgrade(MconnEventStartUpgrade.fromJson(json));
  }
  if (MconnEventFinishUpgradeSuccess.canParse(json)) {
    return MconnEventMconnEventFinishUpgradeSuccess(MconnEventFinishUpgradeSuccess.fromJson(json));
  }
  if (MconnEventFinishUpgradeFailure.canParse(json)) {
    return MconnEventMconnEventFinishUpgradeFailure(MconnEventFinishUpgradeFailure.fromJson(json));
  }
  if (MconnEventReconcile.canParse(json)) {
    return MconnEventMconnEventReconcile(MconnEventReconcile.fromJson(json));
  }
  if (MconnEventConfigureCloudflaredTunnel.canParse(json)) {
    return MconnEventMconnEventConfigureCloudflaredTunnel(MconnEventConfigureCloudflaredTunnel.fromJson(json));
  }
  return MconnEvent$Unknown(json); }

/// The underlying raw value.
dynamic get value;
dynamic toJson() { return value; } 
 }
final class MconnEventMconnEventInit extends MconnEvent {const MconnEventMconnEventInit(this._value);

final MconnEventInit _value;

@override MconnEventInit get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MconnEventMconnEventInit && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'MconnEvent.mconnEventInit($_value)'; } 
 }
final class MconnEventMconnEventLeave extends MconnEvent {const MconnEventMconnEventLeave(this._value);

final MconnEventLeave _value;

@override MconnEventLeave get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MconnEventMconnEventLeave && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'MconnEvent.mconnEventLeave($_value)'; } 
 }
final class MconnEventMconnEventStartAttestation extends MconnEvent {const MconnEventMconnEventStartAttestation(this._value);

final MconnEventStartAttestation _value;

@override MconnEventStartAttestation get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MconnEventMconnEventStartAttestation && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'MconnEvent.mconnEventStartAttestation($_value)'; } 
 }
final class MconnEventMconnEventFinishAttestationSuccess extends MconnEvent {const MconnEventMconnEventFinishAttestationSuccess(this._value);

final MconnEventFinishAttestationSuccess _value;

@override MconnEventFinishAttestationSuccess get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MconnEventMconnEventFinishAttestationSuccess && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'MconnEvent.mconnEventFinishAttestationSuccess($_value)'; } 
 }
final class MconnEventMconnEventFinishAttestationFailure extends MconnEvent {const MconnEventMconnEventFinishAttestationFailure(this._value);

final MconnEventFinishAttestationFailure _value;

@override MconnEventFinishAttestationFailure get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MconnEventMconnEventFinishAttestationFailure && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'MconnEvent.mconnEventFinishAttestationFailure($_value)'; } 
 }
final class MconnEventMconnEventStartRotateCryptKey extends MconnEvent {const MconnEventMconnEventStartRotateCryptKey(this._value);

final MconnEventStartRotateCryptKey _value;

@override MconnEventStartRotateCryptKey get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MconnEventMconnEventStartRotateCryptKey && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'MconnEvent.mconnEventStartRotateCryptKey($_value)'; } 
 }
final class MconnEventMconnEventFinishRotateCryptKeySuccess extends MconnEvent {const MconnEventMconnEventFinishRotateCryptKeySuccess(this._value);

final MconnEventFinishRotateCryptKeySuccess _value;

@override MconnEventFinishRotateCryptKeySuccess get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MconnEventMconnEventFinishRotateCryptKeySuccess && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'MconnEvent.mconnEventFinishRotateCryptKeySuccess($_value)'; } 
 }
final class MconnEventMconnEventFinishRotateCryptKeyFailure extends MconnEvent {const MconnEventMconnEventFinishRotateCryptKeyFailure(this._value);

final MconnEventFinishRotateCryptKeyFailure _value;

@override MconnEventFinishRotateCryptKeyFailure get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MconnEventMconnEventFinishRotateCryptKeyFailure && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'MconnEvent.mconnEventFinishRotateCryptKeyFailure($_value)'; } 
 }
final class MconnEventMconnEventStartRotatePki extends MconnEvent {const MconnEventMconnEventStartRotatePki(this._value);

final MconnEventStartRotatePki _value;

@override MconnEventStartRotatePki get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MconnEventMconnEventStartRotatePki && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'MconnEvent.mconnEventStartRotatePki($_value)'; } 
 }
final class MconnEventMconnEventFinishRotatePkiSuccess extends MconnEvent {const MconnEventMconnEventFinishRotatePkiSuccess(this._value);

final MconnEventFinishRotatePkiSuccess _value;

@override MconnEventFinishRotatePkiSuccess get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MconnEventMconnEventFinishRotatePkiSuccess && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'MconnEvent.mconnEventFinishRotatePkiSuccess($_value)'; } 
 }
final class MconnEventMconnEventFinishRotatePkiFailure extends MconnEvent {const MconnEventMconnEventFinishRotatePkiFailure(this._value);

final MconnEventFinishRotatePkiFailure _value;

@override MconnEventFinishRotatePkiFailure get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MconnEventMconnEventFinishRotatePkiFailure && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'MconnEvent.mconnEventFinishRotatePkiFailure($_value)'; } 
 }
final class MconnEventMconnEventStartUpgrade extends MconnEvent {const MconnEventMconnEventStartUpgrade(this._value);

final MconnEventStartUpgrade _value;

@override MconnEventStartUpgrade get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MconnEventMconnEventStartUpgrade && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'MconnEvent.mconnEventStartUpgrade($_value)'; } 
 }
final class MconnEventMconnEventFinishUpgradeSuccess extends MconnEvent {const MconnEventMconnEventFinishUpgradeSuccess(this._value);

final MconnEventFinishUpgradeSuccess _value;

@override MconnEventFinishUpgradeSuccess get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MconnEventMconnEventFinishUpgradeSuccess && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'MconnEvent.mconnEventFinishUpgradeSuccess($_value)'; } 
 }
final class MconnEventMconnEventFinishUpgradeFailure extends MconnEvent {const MconnEventMconnEventFinishUpgradeFailure(this._value);

final MconnEventFinishUpgradeFailure _value;

@override MconnEventFinishUpgradeFailure get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MconnEventMconnEventFinishUpgradeFailure && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'MconnEvent.mconnEventFinishUpgradeFailure($_value)'; } 
 }
final class MconnEventMconnEventReconcile extends MconnEvent {const MconnEventMconnEventReconcile(this._value);

final MconnEventReconcile _value;

@override MconnEventReconcile get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MconnEventMconnEventReconcile && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'MconnEvent.mconnEventReconcile($_value)'; } 
 }
final class MconnEventMconnEventConfigureCloudflaredTunnel extends MconnEvent {const MconnEventMconnEventConfigureCloudflaredTunnel(this._value);

final MconnEventConfigureCloudflaredTunnel _value;

@override MconnEventConfigureCloudflaredTunnel get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MconnEventMconnEventConfigureCloudflaredTunnel && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'MconnEvent.mconnEventConfigureCloudflaredTunnel($_value)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
final class MconnEvent$Unknown extends MconnEvent {const MconnEvent$Unknown(this._value);

final dynamic _value;

@override dynamic get value { return _value ?? ''; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MconnEvent$Unknown && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'MconnEvent.unknown($_value)'; } 
 }
