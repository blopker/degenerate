// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zero_trust_gateway_notification_settings.dart';/// Specify whether to enable anti-virus scanning on downloads.
extension type const ZeroTrustGatewayEnabledDownloadPhase(bool value) {
factory ZeroTrustGatewayEnabledDownloadPhase.fromJson(bool json) => ZeroTrustGatewayEnabledDownloadPhase(json);

bool toJson() => value;

}
/// Specify whether to enable anti-virus scanning on uploads.
extension type const ZeroTrustGatewayEnabledUploadPhase(bool value) {
factory ZeroTrustGatewayEnabledUploadPhase.fromJson(bool json) => ZeroTrustGatewayEnabledUploadPhase(json);

bool toJson() => value;

}
/// Specify whether to block requests for unscannable files.
extension type const ZeroTrustGatewayFailClosed(bool value) {
factory ZeroTrustGatewayFailClosed.fromJson(bool json) => ZeroTrustGatewayFailClosed(json);

bool toJson() => value;

}
/// Specify anti-virus settings.
@immutable final class ZeroTrustGatewayAntiVirusSettings {const ZeroTrustGatewayAntiVirusSettings({this.enabledDownloadPhase = const Omittable.absent(), this.enabledUploadPhase = const Omittable.absent(), this.failClosed = const Omittable.absent(), this.notificationSettings, });

factory ZeroTrustGatewayAntiVirusSettings.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayAntiVirusSettings(
  enabledDownloadPhase: json.containsKey('enabled_download_phase') ? Omittable(json['enabled_download_phase'] != null ? ZeroTrustGatewayEnabledDownloadPhase.fromJson(json['enabled_download_phase'] as bool) : null) : const Omittable.absent(),
  enabledUploadPhase: json.containsKey('enabled_upload_phase') ? Omittable(json['enabled_upload_phase'] != null ? ZeroTrustGatewayEnabledUploadPhase.fromJson(json['enabled_upload_phase'] as bool) : null) : const Omittable.absent(),
  failClosed: json.containsKey('fail_closed') ? Omittable(json['fail_closed'] != null ? ZeroTrustGatewayFailClosed.fromJson(json['fail_closed'] as bool) : null) : const Omittable.absent(),
  notificationSettings: json['notification_settings'] != null ? ZeroTrustGatewayNotificationSettings.fromJson(json['notification_settings'] as Map<String, dynamic>) : null,
); }

final Omittable<ZeroTrustGatewayEnabledDownloadPhase?> enabledDownloadPhase;

final Omittable<ZeroTrustGatewayEnabledUploadPhase?> enabledUploadPhase;

final Omittable<ZeroTrustGatewayFailClosed?> failClosed;

final ZeroTrustGatewayNotificationSettings? notificationSettings;

Map<String, dynamic> toJson() { return {
  if (enabledDownloadPhase.isPresent) 'enabled_download_phase': enabledDownloadPhase.value?.toJson(),
  if (enabledUploadPhase.isPresent) 'enabled_upload_phase': enabledUploadPhase.value?.toJson(),
  if (failClosed.isPresent) 'fail_closed': failClosed.value?.toJson(),
  if (notificationSettings != null) 'notification_settings': notificationSettings?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled_download_phase', 'enabled_upload_phase', 'fail_closed', 'notification_settings'}.contains(key)); } 
ZeroTrustGatewayAntiVirusSettings copyWith({Omittable<ZeroTrustGatewayEnabledDownloadPhase?>? enabledDownloadPhase, Omittable<ZeroTrustGatewayEnabledUploadPhase?>? enabledUploadPhase, Omittable<ZeroTrustGatewayFailClosed?>? failClosed, ZeroTrustGatewayNotificationSettings? Function()? notificationSettings, }) { return ZeroTrustGatewayAntiVirusSettings(
  enabledDownloadPhase: enabledDownloadPhase ?? this.enabledDownloadPhase,
  enabledUploadPhase: enabledUploadPhase ?? this.enabledUploadPhase,
  failClosed: failClosed ?? this.failClosed,
  notificationSettings: notificationSettings != null ? notificationSettings() : this.notificationSettings,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayAntiVirusSettings &&
          enabledDownloadPhase == other.enabledDownloadPhase &&
          enabledUploadPhase == other.enabledUploadPhase &&
          failClosed == other.failClosed &&
          notificationSettings == other.notificationSettings; } 
@override int get hashCode { return Object.hash(enabledDownloadPhase, enabledUploadPhase, failClosed, notificationSettings); } 
@override String toString() { return 'ZeroTrustGatewayAntiVirusSettings(enabledDownloadPhase: $enabledDownloadPhase, enabledUploadPhase: $enabledUploadPhase, failClosed: $failClosed, notificationSettings: $notificationSettings)'; } 
 }
