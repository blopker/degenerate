// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'digital_experience_monitoring_colo.dart';import 'digital_experience_monitoring_cpu_pct_by_app2.dart';import 'digital_experience_monitoring_ip_info.dart';import 'digital_experience_monitoring_mode.dart';import 'digital_experience_monitoring_platform.dart';import 'digital_experience_monitoring_ram_used_pct_by_app2.dart';import 'digital_experience_monitoring_status.dart';import 'digital_experience_monitoring_timestamp.dart';import 'digital_experience_monitoring_version.dart';/// User contact email address
extension type const DigitalExperienceMonitoringPersonEmail(String value) {
factory DigitalExperienceMonitoringPersonEmail.fromJson(String json) => DigitalExperienceMonitoringPersonEmail(json);

String toJson() => value;

}
@immutable final class DigitalExperienceMonitoringDevice {const DigitalExperienceMonitoringDevice({required this.version, required this.colo, required this.mode, required this.deviceId, required this.platform, required this.status, required this.timestamp, this.diskReadBps = const Omittable.absent(), this.batteryPct = const Omittable.absent(), this.deviceIpv4, this.deviceIpv6, this.deviceName, this.alwaysOn = const Omittable.absent(), this.diskUsagePct = const Omittable.absent(), this.diskWriteBps = const Omittable.absent(), this.dohSubdomain = const Omittable.absent(), this.estimatedLossPct = const Omittable.absent(), this.firewallEnabled = const Omittable.absent(), this.gatewayIpv4, this.gatewayIpv6, this.handshakeLatencyMs = const Omittable.absent(), this.ispIpv4, this.ispIpv6, this.metal = const Omittable.absent(), this.wifiStrengthDbm = const Omittable.absent(), this.networkRcvdBps = const Omittable.absent(), this.networkSentBps = const Omittable.absent(), this.networkSsid = const Omittable.absent(), this.personEmail, this.batteryCharging = const Omittable.absent(), this.ramAvailableKb = const Omittable.absent(), this.ramUsedPct = const Omittable.absent(), this.ramUsedPctByApp = const Omittable.absent(), this.connectionType = const Omittable.absent(), this.switchLocked = const Omittable.absent(), this.batteryCycles = const Omittable.absent(), this.cpuPctByApp = const Omittable.absent(), this.cpuPct = const Omittable.absent(), });

factory DigitalExperienceMonitoringDevice.fromJson(Map<String, dynamic> json) { return DigitalExperienceMonitoringDevice(
  alwaysOn: json.containsKey('alwaysOn') ? Omittable(json['alwaysOn'] as bool?) : const Omittable.absent(),
  batteryCharging: json.containsKey('batteryCharging') ? Omittable(json['batteryCharging'] as bool?) : const Omittable.absent(),
  batteryCycles: json.containsKey('batteryCycles') ? Omittable(json['batteryCycles'] != null ? (json['batteryCycles'] as num).toInt() : null) : const Omittable.absent(),
  batteryPct: json.containsKey('batteryPct') ? Omittable(json['batteryPct'] != null ? (json['batteryPct'] as num).toDouble() : null) : const Omittable.absent(),
  colo: DigitalExperienceMonitoringColo.fromJson(json['colo'] as String),
  connectionType: json.containsKey('connectionType') ? Omittable(json['connectionType'] as String?) : const Omittable.absent(),
  cpuPct: json.containsKey('cpuPct') ? Omittable(json['cpuPct'] != null ? (json['cpuPct'] as num).toDouble() : null) : const Omittable.absent(),
  cpuPctByApp: json.containsKey('cpuPctByApp') ? Omittable((json['cpuPctByApp'] as List<dynamic>?)?.map((e) => (e as List<dynamic>).map((e) => DigitalExperienceMonitoringCpuPctByApp2.fromJson(e as Map<String, dynamic>)).toList()).toList()) : const Omittable.absent(),
  deviceId: json['deviceId'] as String,
  deviceIpv4: json['deviceIpv4'] != null ? DigitalExperienceMonitoringIpInfo.fromJson(json['deviceIpv4'] as Map<String, dynamic>) : null,
  deviceIpv6: json['deviceIpv6'] != null ? DigitalExperienceMonitoringIpInfo.fromJson(json['deviceIpv6'] as Map<String, dynamic>) : null,
  deviceName: json['deviceName'] as String?,
  diskReadBps: json.containsKey('diskReadBps') ? Omittable(json['diskReadBps'] != null ? (json['diskReadBps'] as num).toInt() : null) : const Omittable.absent(),
  diskUsagePct: json.containsKey('diskUsagePct') ? Omittable(json['diskUsagePct'] != null ? (json['diskUsagePct'] as num).toDouble() : null) : const Omittable.absent(),
  diskWriteBps: json.containsKey('diskWriteBps') ? Omittable(json['diskWriteBps'] != null ? (json['diskWriteBps'] as num).toInt() : null) : const Omittable.absent(),
  dohSubdomain: json.containsKey('dohSubdomain') ? Omittable(json['dohSubdomain'] as String?) : const Omittable.absent(),
  estimatedLossPct: json.containsKey('estimatedLossPct') ? Omittable(json['estimatedLossPct'] != null ? (json['estimatedLossPct'] as num).toDouble() : null) : const Omittable.absent(),
  firewallEnabled: json.containsKey('firewallEnabled') ? Omittable(json['firewallEnabled'] as bool?) : const Omittable.absent(),
  gatewayIpv4: json['gatewayIpv4'] != null ? DigitalExperienceMonitoringIpInfo.fromJson(json['gatewayIpv4'] as Map<String, dynamic>) : null,
  gatewayIpv6: json['gatewayIpv6'] != null ? DigitalExperienceMonitoringIpInfo.fromJson(json['gatewayIpv6'] as Map<String, dynamic>) : null,
  handshakeLatencyMs: json.containsKey('handshakeLatencyMs') ? Omittable(json['handshakeLatencyMs'] != null ? (json['handshakeLatencyMs'] as num).toDouble() : null) : const Omittable.absent(),
  ispIpv4: json['ispIpv4'] != null ? DigitalExperienceMonitoringIpInfo.fromJson(json['ispIpv4'] as Map<String, dynamic>) : null,
  ispIpv6: json['ispIpv6'] != null ? DigitalExperienceMonitoringIpInfo.fromJson(json['ispIpv6'] as Map<String, dynamic>) : null,
  metal: json.containsKey('metal') ? Omittable(json['metal'] as String?) : const Omittable.absent(),
  mode: DigitalExperienceMonitoringMode.fromJson(json['mode'] as String),
  networkRcvdBps: json.containsKey('networkRcvdBps') ? Omittable(json['networkRcvdBps'] != null ? (json['networkRcvdBps'] as num).toInt() : null) : const Omittable.absent(),
  networkSentBps: json.containsKey('networkSentBps') ? Omittable(json['networkSentBps'] != null ? (json['networkSentBps'] as num).toInt() : null) : const Omittable.absent(),
  networkSsid: json.containsKey('networkSsid') ? Omittable(json['networkSsid'] as String?) : const Omittable.absent(),
  personEmail: json['personEmail'] != null ? DigitalExperienceMonitoringPersonEmail.fromJson(json['personEmail'] as String) : null,
  platform: DigitalExperienceMonitoringPlatform.fromJson(json['platform'] as String),
  ramAvailableKb: json.containsKey('ramAvailableKb') ? Omittable(json['ramAvailableKb'] != null ? (json['ramAvailableKb'] as num).toInt() : null) : const Omittable.absent(),
  ramUsedPct: json.containsKey('ramUsedPct') ? Omittable(json['ramUsedPct'] != null ? (json['ramUsedPct'] as num).toDouble() : null) : const Omittable.absent(),
  ramUsedPctByApp: json.containsKey('ramUsedPctByApp') ? Omittable((json['ramUsedPctByApp'] as List<dynamic>?)?.map((e) => (e as List<dynamic>).map((e) => DigitalExperienceMonitoringRamUsedPctByApp2.fromJson(e as Map<String, dynamic>)).toList()).toList()) : const Omittable.absent(),
  status: DigitalExperienceMonitoringStatus.fromJson(json['status'] as String),
  switchLocked: json.containsKey('switchLocked') ? Omittable(json['switchLocked'] as bool?) : const Omittable.absent(),
  timestamp: DigitalExperienceMonitoringTimestamp.fromJson(json['timestamp'] as String),
  version: DigitalExperienceMonitoringVersion.fromJson(json['version'] as String),
  wifiStrengthDbm: json.containsKey('wifiStrengthDbm') ? Omittable(json['wifiStrengthDbm'] != null ? (json['wifiStrengthDbm'] as num).toInt() : null) : const Omittable.absent(),
); }

final Omittable<bool?> alwaysOn;

final Omittable<bool?> batteryCharging;

final Omittable<int?> batteryCycles;

final Omittable<double?> batteryPct;

/// Cloudflare colo
final DigitalExperienceMonitoringColo colo;

final Omittable<String?> connectionType;

final Omittable<double?> cpuPct;

final Omittable<List<List<DigitalExperienceMonitoringCpuPctByApp2>>?> cpuPctByApp;

/// Device identifier (UUID v4)
final String deviceId;

final DigitalExperienceMonitoringIpInfo? deviceIpv4;

final DigitalExperienceMonitoringIpInfo? deviceIpv6;

/// Device identifier (human readable)
final String? deviceName;

final Omittable<int?> diskReadBps;

final Omittable<double?> diskUsagePct;

final Omittable<int?> diskWriteBps;

final Omittable<String?> dohSubdomain;

final Omittable<double?> estimatedLossPct;

final Omittable<bool?> firewallEnabled;

final DigitalExperienceMonitoringIpInfo? gatewayIpv4;

final DigitalExperienceMonitoringIpInfo? gatewayIpv6;

final Omittable<double?> handshakeLatencyMs;

final DigitalExperienceMonitoringIpInfo? ispIpv4;

final DigitalExperienceMonitoringIpInfo? ispIpv6;

final Omittable<String?> metal;

final DigitalExperienceMonitoringMode mode;

final Omittable<int?> networkRcvdBps;

final Omittable<int?> networkSentBps;

final Omittable<String?> networkSsid;

final DigitalExperienceMonitoringPersonEmail? personEmail;

final DigitalExperienceMonitoringPlatform platform;

final Omittable<int?> ramAvailableKb;

final Omittable<double?> ramUsedPct;

final Omittable<List<List<DigitalExperienceMonitoringRamUsedPctByApp2>>?> ramUsedPctByApp;

final DigitalExperienceMonitoringStatus status;

final Omittable<bool?> switchLocked;

final DigitalExperienceMonitoringTimestamp timestamp;

final DigitalExperienceMonitoringVersion version;

final Omittable<int?> wifiStrengthDbm;

Map<String, dynamic> toJson() { return {
  if (alwaysOn.isPresent) 'alwaysOn': alwaysOn.value,
  if (batteryCharging.isPresent) 'batteryCharging': batteryCharging.value,
  if (batteryCycles.isPresent) 'batteryCycles': batteryCycles.value,
  if (batteryPct.isPresent) 'batteryPct': batteryPct.value,
  'colo': colo.toJson(),
  if (connectionType.isPresent) 'connectionType': connectionType.value,
  if (cpuPct.isPresent) 'cpuPct': cpuPct.value,
  if (cpuPctByApp.isPresent) 'cpuPctByApp': cpuPctByApp.value?.map((e) => e.map((e) => e.toJson()).toList()).toList(),
  'deviceId': deviceId,
  if (deviceIpv4 != null) 'deviceIpv4': deviceIpv4?.toJson(),
  if (deviceIpv6 != null) 'deviceIpv6': deviceIpv6?.toJson(),
  'deviceName': ?deviceName,
  if (diskReadBps.isPresent) 'diskReadBps': diskReadBps.value,
  if (diskUsagePct.isPresent) 'diskUsagePct': diskUsagePct.value,
  if (diskWriteBps.isPresent) 'diskWriteBps': diskWriteBps.value,
  if (dohSubdomain.isPresent) 'dohSubdomain': dohSubdomain.value,
  if (estimatedLossPct.isPresent) 'estimatedLossPct': estimatedLossPct.value,
  if (firewallEnabled.isPresent) 'firewallEnabled': firewallEnabled.value,
  if (gatewayIpv4 != null) 'gatewayIpv4': gatewayIpv4?.toJson(),
  if (gatewayIpv6 != null) 'gatewayIpv6': gatewayIpv6?.toJson(),
  if (handshakeLatencyMs.isPresent) 'handshakeLatencyMs': handshakeLatencyMs.value,
  if (ispIpv4 != null) 'ispIpv4': ispIpv4?.toJson(),
  if (ispIpv6 != null) 'ispIpv6': ispIpv6?.toJson(),
  if (metal.isPresent) 'metal': metal.value,
  'mode': mode.toJson(),
  if (networkRcvdBps.isPresent) 'networkRcvdBps': networkRcvdBps.value,
  if (networkSentBps.isPresent) 'networkSentBps': networkSentBps.value,
  if (networkSsid.isPresent) 'networkSsid': networkSsid.value,
  if (personEmail != null) 'personEmail': personEmail?.toJson(),
  'platform': platform.toJson(),
  if (ramAvailableKb.isPresent) 'ramAvailableKb': ramAvailableKb.value,
  if (ramUsedPct.isPresent) 'ramUsedPct': ramUsedPct.value,
  if (ramUsedPctByApp.isPresent) 'ramUsedPctByApp': ramUsedPctByApp.value?.map((e) => e.map((e) => e.toJson()).toList()).toList(),
  'status': status.toJson(),
  if (switchLocked.isPresent) 'switchLocked': switchLocked.value,
  'timestamp': timestamp.toJson(),
  'version': version.toJson(),
  if (wifiStrengthDbm.isPresent) 'wifiStrengthDbm': wifiStrengthDbm.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('colo') &&
      json.containsKey('deviceId') && json['deviceId'] is String &&
      json.containsKey('mode') &&
      json.containsKey('platform') &&
      json.containsKey('status') &&
      json.containsKey('timestamp') &&
      json.containsKey('version'); } 
DigitalExperienceMonitoringDevice copyWith({Omittable<bool?>? alwaysOn, Omittable<bool?>? batteryCharging, Omittable<int?>? batteryCycles, Omittable<double?>? batteryPct, DigitalExperienceMonitoringColo? colo, Omittable<String?>? connectionType, Omittable<double?>? cpuPct, Omittable<List<List<DigitalExperienceMonitoringCpuPctByApp2>>?>? cpuPctByApp, String? deviceId, DigitalExperienceMonitoringIpInfo? Function()? deviceIpv4, DigitalExperienceMonitoringIpInfo? Function()? deviceIpv6, String? Function()? deviceName, Omittable<int?>? diskReadBps, Omittable<double?>? diskUsagePct, Omittable<int?>? diskWriteBps, Omittable<String?>? dohSubdomain, Omittable<double?>? estimatedLossPct, Omittable<bool?>? firewallEnabled, DigitalExperienceMonitoringIpInfo? Function()? gatewayIpv4, DigitalExperienceMonitoringIpInfo? Function()? gatewayIpv6, Omittable<double?>? handshakeLatencyMs, DigitalExperienceMonitoringIpInfo? Function()? ispIpv4, DigitalExperienceMonitoringIpInfo? Function()? ispIpv6, Omittable<String?>? metal, DigitalExperienceMonitoringMode? mode, Omittable<int?>? networkRcvdBps, Omittable<int?>? networkSentBps, Omittable<String?>? networkSsid, DigitalExperienceMonitoringPersonEmail? Function()? personEmail, DigitalExperienceMonitoringPlatform? platform, Omittable<int?>? ramAvailableKb, Omittable<double?>? ramUsedPct, Omittable<List<List<DigitalExperienceMonitoringRamUsedPctByApp2>>?>? ramUsedPctByApp, DigitalExperienceMonitoringStatus? status, Omittable<bool?>? switchLocked, DigitalExperienceMonitoringTimestamp? timestamp, DigitalExperienceMonitoringVersion? version, Omittable<int?>? wifiStrengthDbm, }) { return DigitalExperienceMonitoringDevice(
  alwaysOn: alwaysOn ?? this.alwaysOn,
  batteryCharging: batteryCharging ?? this.batteryCharging,
  batteryCycles: batteryCycles ?? this.batteryCycles,
  batteryPct: batteryPct ?? this.batteryPct,
  colo: colo ?? this.colo,
  connectionType: connectionType ?? this.connectionType,
  cpuPct: cpuPct ?? this.cpuPct,
  cpuPctByApp: cpuPctByApp ?? this.cpuPctByApp,
  deviceId: deviceId ?? this.deviceId,
  deviceIpv4: deviceIpv4 != null ? deviceIpv4() : this.deviceIpv4,
  deviceIpv6: deviceIpv6 != null ? deviceIpv6() : this.deviceIpv6,
  deviceName: deviceName != null ? deviceName() : this.deviceName,
  diskReadBps: diskReadBps ?? this.diskReadBps,
  diskUsagePct: diskUsagePct ?? this.diskUsagePct,
  diskWriteBps: diskWriteBps ?? this.diskWriteBps,
  dohSubdomain: dohSubdomain ?? this.dohSubdomain,
  estimatedLossPct: estimatedLossPct ?? this.estimatedLossPct,
  firewallEnabled: firewallEnabled ?? this.firewallEnabled,
  gatewayIpv4: gatewayIpv4 != null ? gatewayIpv4() : this.gatewayIpv4,
  gatewayIpv6: gatewayIpv6 != null ? gatewayIpv6() : this.gatewayIpv6,
  handshakeLatencyMs: handshakeLatencyMs ?? this.handshakeLatencyMs,
  ispIpv4: ispIpv4 != null ? ispIpv4() : this.ispIpv4,
  ispIpv6: ispIpv6 != null ? ispIpv6() : this.ispIpv6,
  metal: metal ?? this.metal,
  mode: mode ?? this.mode,
  networkRcvdBps: networkRcvdBps ?? this.networkRcvdBps,
  networkSentBps: networkSentBps ?? this.networkSentBps,
  networkSsid: networkSsid ?? this.networkSsid,
  personEmail: personEmail != null ? personEmail() : this.personEmail,
  platform: platform ?? this.platform,
  ramAvailableKb: ramAvailableKb ?? this.ramAvailableKb,
  ramUsedPct: ramUsedPct ?? this.ramUsedPct,
  ramUsedPctByApp: ramUsedPctByApp ?? this.ramUsedPctByApp,
  status: status ?? this.status,
  switchLocked: switchLocked ?? this.switchLocked,
  timestamp: timestamp ?? this.timestamp,
  version: version ?? this.version,
  wifiStrengthDbm: wifiStrengthDbm ?? this.wifiStrengthDbm,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DigitalExperienceMonitoringDevice &&
          alwaysOn == other.alwaysOn &&
          batteryCharging == other.batteryCharging &&
          batteryCycles == other.batteryCycles &&
          batteryPct == other.batteryPct &&
          colo == other.colo &&
          connectionType == other.connectionType &&
          cpuPct == other.cpuPct &&
          cpuPctByApp.isPresent == other.cpuPctByApp.isPresent &&
          listEquals(cpuPctByApp.value, other.cpuPctByApp.value) &&
          deviceId == other.deviceId &&
          deviceIpv4 == other.deviceIpv4 &&
          deviceIpv6 == other.deviceIpv6 &&
          deviceName == other.deviceName &&
          diskReadBps == other.diskReadBps &&
          diskUsagePct == other.diskUsagePct &&
          diskWriteBps == other.diskWriteBps &&
          dohSubdomain == other.dohSubdomain &&
          estimatedLossPct == other.estimatedLossPct &&
          firewallEnabled == other.firewallEnabled &&
          gatewayIpv4 == other.gatewayIpv4 &&
          gatewayIpv6 == other.gatewayIpv6 &&
          handshakeLatencyMs == other.handshakeLatencyMs &&
          ispIpv4 == other.ispIpv4 &&
          ispIpv6 == other.ispIpv6 &&
          metal == other.metal &&
          mode == other.mode &&
          networkRcvdBps == other.networkRcvdBps &&
          networkSentBps == other.networkSentBps &&
          networkSsid == other.networkSsid &&
          personEmail == other.personEmail &&
          platform == other.platform &&
          ramAvailableKb == other.ramAvailableKb &&
          ramUsedPct == other.ramUsedPct &&
          ramUsedPctByApp.isPresent == other.ramUsedPctByApp.isPresent &&
          listEquals(ramUsedPctByApp.value, other.ramUsedPctByApp.value) &&
          status == other.status &&
          switchLocked == other.switchLocked &&
          timestamp == other.timestamp &&
          version == other.version &&
          wifiStrengthDbm == other.wifiStrengthDbm; } 
@override int get hashCode { return Object.hashAll([alwaysOn, batteryCharging, batteryCycles, batteryPct, colo, connectionType, cpuPct, Object.hashAll(cpuPctByApp.value ?? const []), deviceId, deviceIpv4, deviceIpv6, deviceName, diskReadBps, diskUsagePct, diskWriteBps, dohSubdomain, estimatedLossPct, firewallEnabled, gatewayIpv4, gatewayIpv6, handshakeLatencyMs, ispIpv4, ispIpv6, metal, mode, networkRcvdBps, networkSentBps, networkSsid, personEmail, platform, ramAvailableKb, ramUsedPct, Object.hashAll(ramUsedPctByApp.value ?? const []), status, switchLocked, timestamp, version, wifiStrengthDbm]); } 
@override String toString() { return 'DigitalExperienceMonitoringDevice(alwaysOn: $alwaysOn, batteryCharging: $batteryCharging, batteryCycles: $batteryCycles, batteryPct: $batteryPct, colo: $colo, connectionType: $connectionType, cpuPct: $cpuPct, cpuPctByApp: $cpuPctByApp, deviceId: $deviceId, deviceIpv4: $deviceIpv4, deviceIpv6: $deviceIpv6, deviceName: $deviceName, diskReadBps: $diskReadBps, diskUsagePct: $diskUsagePct, diskWriteBps: $diskWriteBps, dohSubdomain: $dohSubdomain, estimatedLossPct: $estimatedLossPct, firewallEnabled: $firewallEnabled, gatewayIpv4: $gatewayIpv4, gatewayIpv6: $gatewayIpv6, handshakeLatencyMs: $handshakeLatencyMs, ispIpv4: $ispIpv4, ispIpv6: $ispIpv6, metal: $metal, mode: $mode, networkRcvdBps: $networkRcvdBps, networkSentBps: $networkSentBps, networkSsid: $networkSsid, personEmail: $personEmail, platform: $platform, ramAvailableKb: $ramAvailableKb, ramUsedPct: $ramUsedPct, ramUsedPctByApp: $ramUsedPctByApp, status: $status, switchLocked: $switchLocked, timestamp: $timestamp, version: $version, wifiStrengthDbm: $wifiStrengthDbm)'; } 
 }
