// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secret_scanning_row_version.dart';import 'secret_scanning_update_org_pattern_configs_request_custom_pattern_settings.dart';import 'secret_scanning_update_org_pattern_configs_request_provider_pattern_settings.dart';final class SecretScanningUpdateOrgPatternConfigsRequest {const SecretScanningUpdateOrgPatternConfigsRequest({this.patternConfigVersion, this.providerPatternSettings, this.customPatternSettings, });

factory SecretScanningUpdateOrgPatternConfigsRequest.fromJson(Map<String, dynamic> json) { return SecretScanningUpdateOrgPatternConfigsRequest(
  patternConfigVersion: json['pattern_config_version'] != null ? SecretScanningRowVersion.fromJson(json['pattern_config_version'] as String) : null,
  providerPatternSettings: (json['provider_pattern_settings'] as List<dynamic>?)?.map((e) => SecretScanningUpdateOrgPatternConfigsRequestProviderPatternSettings.fromJson(e as Map<String, dynamic>)).toList(),
  customPatternSettings: (json['custom_pattern_settings'] as List<dynamic>?)?.map((e) => SecretScanningUpdateOrgPatternConfigsRequestCustomPatternSettings.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The version of the entity. This is used to confirm you're updating the current version of the entity and mitigate unintentionally overriding someone else's update.
final SecretScanningRowVersion? patternConfigVersion;

/// Pattern settings for provider patterns.
final List<SecretScanningUpdateOrgPatternConfigsRequestProviderPatternSettings>? providerPatternSettings;

/// Pattern settings for custom patterns.
final List<SecretScanningUpdateOrgPatternConfigsRequestCustomPatternSettings>? customPatternSettings;

Map<String, dynamic> toJson() { return {
  if (patternConfigVersion != null) 'pattern_config_version': patternConfigVersion?.toJson(),
  if (providerPatternSettings != null) 'provider_pattern_settings': providerPatternSettings?.map((e) => e.toJson()).toList(),
  if (customPatternSettings != null) 'custom_pattern_settings': customPatternSettings?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'pattern_config_version', 'provider_pattern_settings', 'custom_pattern_settings'}.contains(key)); } 
SecretScanningUpdateOrgPatternConfigsRequest copyWith({SecretScanningRowVersion? Function()? patternConfigVersion, List<SecretScanningUpdateOrgPatternConfigsRequestProviderPatternSettings> Function()? providerPatternSettings, List<SecretScanningUpdateOrgPatternConfigsRequestCustomPatternSettings> Function()? customPatternSettings, }) { return SecretScanningUpdateOrgPatternConfigsRequest(
  patternConfigVersion: patternConfigVersion != null ? patternConfigVersion() : this.patternConfigVersion,
  providerPatternSettings: providerPatternSettings != null ? providerPatternSettings() : this.providerPatternSettings,
  customPatternSettings: customPatternSettings != null ? customPatternSettings() : this.customPatternSettings,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecretScanningUpdateOrgPatternConfigsRequest &&
          patternConfigVersion == other.patternConfigVersion &&
          listEquals(providerPatternSettings, other.providerPatternSettings) &&
          listEquals(customPatternSettings, other.customPatternSettings); } 
@override int get hashCode { return Object.hash(patternConfigVersion, Object.hashAll(providerPatternSettings ?? const []), Object.hashAll(customPatternSettings ?? const [])); } 
@override String toString() { return 'SecretScanningUpdateOrgPatternConfigsRequest(patternConfigVersion: $patternConfigVersion, providerPatternSettings: $providerPatternSettings, customPatternSettings: $customPatternSettings)'; } 
 }
