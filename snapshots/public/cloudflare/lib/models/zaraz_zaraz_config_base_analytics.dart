// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Cloudflare Monitoring settings.
@immutable final class ZarazZarazConfigBaseAnalytics {const ZarazZarazConfigBaseAnalytics({this.defaultPurpose, this.enabled, this.sessionExpTime, });

factory ZarazZarazConfigBaseAnalytics.fromJson(Map<String, dynamic> json) { return ZarazZarazConfigBaseAnalytics(
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
ZarazZarazConfigBaseAnalytics copyWith({String Function()? defaultPurpose, bool Function()? enabled, int Function()? sessionExpTime, }) { return ZarazZarazConfigBaseAnalytics(
  defaultPurpose: defaultPurpose != null ? defaultPurpose() : this.defaultPurpose,
  enabled: enabled != null ? enabled() : this.enabled,
  sessionExpTime: sessionExpTime != null ? sessionExpTime() : this.sessionExpTime,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZarazZarazConfigBaseAnalytics &&
          defaultPurpose == other.defaultPurpose &&
          enabled == other.enabled &&
          sessionExpTime == other.sessionExpTime; } 
@override int get hashCode { return Object.hash(defaultPurpose, enabled, sessionExpTime); } 
@override String toString() { return 'ZarazZarazConfigBaseAnalytics(defaultPurpose: $defaultPurpose, enabled: $enabled, sessionExpTime: $sessionExpTime)'; } 
 }
