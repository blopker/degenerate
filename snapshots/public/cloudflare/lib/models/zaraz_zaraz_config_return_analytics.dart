// GENERATED CODE - DO NOT MODIFY BY HAND

/// Cloudflare Monitoring settings.
final class ZarazZarazConfigReturnAnalytics {const ZarazZarazConfigReturnAnalytics({this.defaultPurpose, this.enabled, this.sessionExpTime, });

factory ZarazZarazConfigReturnAnalytics.fromJson(Map<String, dynamic> json) { return ZarazZarazConfigReturnAnalytics(
  defaultPurpose: json['defaultPurpose'] as String?,
  enabled: json['enabled'] as bool?,
  sessionExpTime: json['sessionExpTime'] != null ? (json['sessionExpTime'] as num).toInt() : null,
); }

/// Consent purpose assigned to Monitoring.
final String? defaultPurpose;

/// Whether Advanced Monitoring reports are enabled.
final bool? enabled;

/// Session expiration time (seconds).
final int? sessionExpTime;

Map<String, dynamic> toJson() { return {
  'defaultPurpose': ?defaultPurpose,
  'enabled': ?enabled,
  'sessionExpTime': ?sessionExpTime,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'defaultPurpose', 'enabled', 'sessionExpTime'}.contains(key)); } 
ZarazZarazConfigReturnAnalytics copyWith({String Function()? defaultPurpose, bool Function()? enabled, int Function()? sessionExpTime, }) { return ZarazZarazConfigReturnAnalytics(
  defaultPurpose: defaultPurpose != null ? defaultPurpose() : this.defaultPurpose,
  enabled: enabled != null ? enabled() : this.enabled,
  sessionExpTime: sessionExpTime != null ? sessionExpTime() : this.sessionExpTime,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZarazZarazConfigReturnAnalytics &&
          defaultPurpose == other.defaultPurpose &&
          enabled == other.enabled &&
          sessionExpTime == other.sessionExpTime; } 
@override int get hashCode { return Object.hash(defaultPurpose, enabled, sessionExpTime); } 
@override String toString() { return 'ZarazZarazConfigReturnAnalytics(defaultPurpose: $defaultPurpose, enabled: $enabled, sessionExpTime: $sessionExpTime)'; } 
 }
