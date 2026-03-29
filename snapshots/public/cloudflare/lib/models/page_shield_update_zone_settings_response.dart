// GENERATED CODE - DO NOT MODIFY BY HAND

import 'page_shield_enabled.dart';import 'page_shield_updated_at.dart';import 'page_shield_use_cloudflare_reporting_endpoint.dart';import 'page_shield_use_connection_url_path.dart';final class PageShieldUpdateZoneSettingsResponse {const PageShieldUpdateZoneSettingsResponse({required this.enabled, required this.updatedAt, required this.useCloudflareReportingEndpoint, required this.useConnectionUrlPath, });

factory PageShieldUpdateZoneSettingsResponse.fromJson(Map<String, dynamic> json) { return PageShieldUpdateZoneSettingsResponse(
  enabled: PageShieldEnabled.fromJson(json['enabled'] as bool),
  updatedAt: PageShieldUpdatedAt.fromJson(json['updated_at'] as String),
  useCloudflareReportingEndpoint: PageShieldUseCloudflareReportingEndpoint.fromJson(json['use_cloudflare_reporting_endpoint'] as bool),
  useConnectionUrlPath: PageShieldUseConnectionUrlPath.fromJson(json['use_connection_url_path'] as bool),
); }

/// When true, indicates that Page Shield is enabled.
final PageShieldEnabled enabled;

final PageShieldUpdatedAt updatedAt;

final PageShieldUseCloudflareReportingEndpoint useCloudflareReportingEndpoint;

final PageShieldUseConnectionUrlPath useConnectionUrlPath;

Map<String, dynamic> toJson() { return {
  'enabled': enabled.toJson(),
  'updated_at': updatedAt.toJson(),
  'use_cloudflare_reporting_endpoint': useCloudflareReportingEndpoint.toJson(),
  'use_connection_url_path': useConnectionUrlPath.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') &&
      json.containsKey('updated_at') &&
      json.containsKey('use_cloudflare_reporting_endpoint') &&
      json.containsKey('use_connection_url_path'); } 
PageShieldUpdateZoneSettingsResponse copyWith({PageShieldEnabled? enabled, PageShieldUpdatedAt? updatedAt, PageShieldUseCloudflareReportingEndpoint? useCloudflareReportingEndpoint, PageShieldUseConnectionUrlPath? useConnectionUrlPath, }) { return PageShieldUpdateZoneSettingsResponse(
  enabled: enabled ?? this.enabled,
  updatedAt: updatedAt ?? this.updatedAt,
  useCloudflareReportingEndpoint: useCloudflareReportingEndpoint ?? this.useCloudflareReportingEndpoint,
  useConnectionUrlPath: useConnectionUrlPath ?? this.useConnectionUrlPath,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PageShieldUpdateZoneSettingsResponse &&
          enabled == other.enabled &&
          updatedAt == other.updatedAt &&
          useCloudflareReportingEndpoint == other.useCloudflareReportingEndpoint &&
          useConnectionUrlPath == other.useConnectionUrlPath; } 
@override int get hashCode { return Object.hash(enabled, updatedAt, useCloudflareReportingEndpoint, useConnectionUrlPath); } 
@override String toString() { return 'PageShieldUpdateZoneSettingsResponse(enabled: $enabled, updatedAt: $updatedAt, useCloudflareReportingEndpoint: $useCloudflareReportingEndpoint, useConnectionUrlPath: $useConnectionUrlPath)'; } 
 }
