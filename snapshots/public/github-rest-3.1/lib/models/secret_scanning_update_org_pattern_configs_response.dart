// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class SecretScanningUpdateOrgPatternConfigsResponse {const SecretScanningUpdateOrgPatternConfigsResponse({this.patternConfigVersion});

factory SecretScanningUpdateOrgPatternConfigsResponse.fromJson(Map<String, dynamic> json) { return SecretScanningUpdateOrgPatternConfigsResponse(
  patternConfigVersion: json['pattern_config_version'] as String?,
); }

/// The updated pattern configuration version.
final String? patternConfigVersion;

Map<String, dynamic> toJson() { return {
  'pattern_config_version': ?patternConfigVersion,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'pattern_config_version'}.contains(key)); } 
SecretScanningUpdateOrgPatternConfigsResponse copyWith({String Function()? patternConfigVersion}) { return SecretScanningUpdateOrgPatternConfigsResponse(
  patternConfigVersion: patternConfigVersion != null ? patternConfigVersion() : this.patternConfigVersion,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecretScanningUpdateOrgPatternConfigsResponse &&
          patternConfigVersion == other.patternConfigVersion; } 
@override int get hashCode { return patternConfigVersion.hashCode; } 
@override String toString() { return 'SecretScanningUpdateOrgPatternConfigsResponse(patternConfigVersion: $patternConfigVersion)'; } 
 }
