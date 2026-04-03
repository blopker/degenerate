// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'page_shield_enabled.dart';import 'page_shield_use_cloudflare_reporting_endpoint.dart';import 'page_shield_use_connection_url_path.dart';@immutable final class PageShieldUpdateSettingsRequest {const PageShieldUpdateSettingsRequest({this.enabled, this.useCloudflareReportingEndpoint, this.useConnectionUrlPath, });

factory PageShieldUpdateSettingsRequest.fromJson(Map<String, dynamic> json) { return PageShieldUpdateSettingsRequest(
  enabled: json['enabled'] != null ? PageShieldEnabled.fromJson(json['enabled'] as bool) : null,
  useCloudflareReportingEndpoint: json['use_cloudflare_reporting_endpoint'] != null ? PageShieldUseCloudflareReportingEndpoint.fromJson(json['use_cloudflare_reporting_endpoint'] as bool) : null,
  useConnectionUrlPath: json['use_connection_url_path'] != null ? PageShieldUseConnectionUrlPath.fromJson(json['use_connection_url_path'] as bool) : null,
); }

/// When true, indicates that Page Shield is enabled.
final PageShieldEnabled? enabled;

/// When true, CSP reports will be sent to https://csp-reporting.cloudflare.com/cdn-cgi/script_monitor/report
final PageShieldUseCloudflareReportingEndpoint? useCloudflareReportingEndpoint;

/// When true, the paths associated with connections URLs will also be analyzed.
final PageShieldUseConnectionUrlPath? useConnectionUrlPath;

Map<String, dynamic> toJson() { return {
  if (enabled != null) 'enabled': enabled?.toJson(),
  if (useCloudflareReportingEndpoint != null) 'use_cloudflare_reporting_endpoint': useCloudflareReportingEndpoint?.toJson(),
  if (useConnectionUrlPath != null) 'use_connection_url_path': useConnectionUrlPath?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled', 'use_cloudflare_reporting_endpoint', 'use_connection_url_path'}.contains(key)); } 
PageShieldUpdateSettingsRequest copyWith({PageShieldEnabled Function()? enabled, PageShieldUseCloudflareReportingEndpoint Function()? useCloudflareReportingEndpoint, PageShieldUseConnectionUrlPath Function()? useConnectionUrlPath, }) { return PageShieldUpdateSettingsRequest(
  enabled: enabled != null ? enabled() : this.enabled,
  useCloudflareReportingEndpoint: useCloudflareReportingEndpoint != null ? useCloudflareReportingEndpoint() : this.useCloudflareReportingEndpoint,
  useConnectionUrlPath: useConnectionUrlPath != null ? useConnectionUrlPath() : this.useConnectionUrlPath,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PageShieldUpdateSettingsRequest &&
          enabled == other.enabled &&
          useCloudflareReportingEndpoint == other.useCloudflareReportingEndpoint &&
          useConnectionUrlPath == other.useConnectionUrlPath; } 
@override int get hashCode { return Object.hash(enabled, useCloudflareReportingEndpoint, useConnectionUrlPath); } 
@override String toString() { return 'PageShieldUpdateSettingsRequest(enabled: $enabled, useCloudflareReportingEndpoint: $useCloudflareReportingEndpoint, useConnectionUrlPath: $useConnectionUrlPath)'; } 
 }
