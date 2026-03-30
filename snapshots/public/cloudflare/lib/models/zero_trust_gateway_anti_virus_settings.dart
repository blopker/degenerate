// GENERATED CODE - DO NOT MODIFY BY HAND

import 'zero_trust_gateway_notification_settings.dart';/// Specify whether to enable anti-virus scanning on downloads.
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
final class ZeroTrustGatewayAntiVirusSettings {const ZeroTrustGatewayAntiVirusSettings({this.enabledDownloadPhase, this.enabledUploadPhase, this.failClosed, this.notificationSettings, });

factory ZeroTrustGatewayAntiVirusSettings.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayAntiVirusSettings(
  enabledDownloadPhase: json['enabled_download_phase'] != null ? ZeroTrustGatewayEnabledDownloadPhase.fromJson(json['enabled_download_phase'] as bool) : null,
  enabledUploadPhase: json['enabled_upload_phase'] != null ? ZeroTrustGatewayEnabledUploadPhase.fromJson(json['enabled_upload_phase'] as bool) : null,
  failClosed: json['fail_closed'] != null ? ZeroTrustGatewayFailClosed.fromJson(json['fail_closed'] as bool) : null,
  notificationSettings: json['notification_settings'] != null ? ZeroTrustGatewayNotificationSettings.fromJson(json['notification_settings'] as Map<String, dynamic>) : null,
); }

final ZeroTrustGatewayEnabledDownloadPhase? enabledDownloadPhase;

final ZeroTrustGatewayEnabledUploadPhase? enabledUploadPhase;

final ZeroTrustGatewayFailClosed? failClosed;

final ZeroTrustGatewayNotificationSettings? notificationSettings;

Map<String, dynamic> toJson() { return {
  if (enabledDownloadPhase != null) 'enabled_download_phase': enabledDownloadPhase?.toJson(),
  if (enabledUploadPhase != null) 'enabled_upload_phase': enabledUploadPhase?.toJson(),
  if (failClosed != null) 'fail_closed': failClosed?.toJson(),
  if (notificationSettings != null) 'notification_settings': notificationSettings?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled_download_phase', 'enabled_upload_phase', 'fail_closed', 'notification_settings'}.contains(key)); } 
ZeroTrustGatewayAntiVirusSettings copyWith({ZeroTrustGatewayEnabledDownloadPhase? Function()? enabledDownloadPhase, ZeroTrustGatewayEnabledUploadPhase? Function()? enabledUploadPhase, ZeroTrustGatewayFailClosed? Function()? failClosed, ZeroTrustGatewayNotificationSettings Function()? notificationSettings, }) { return ZeroTrustGatewayAntiVirusSettings(
  enabledDownloadPhase: enabledDownloadPhase != null ? enabledDownloadPhase() : this.enabledDownloadPhase,
  enabledUploadPhase: enabledUploadPhase != null ? enabledUploadPhase() : this.enabledUploadPhase,
  failClosed: failClosed != null ? failClosed() : this.failClosed,
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
