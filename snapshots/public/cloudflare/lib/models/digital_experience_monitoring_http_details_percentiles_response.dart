// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'digital_experience_monitoring_percentiles.dart';@immutable final class DigitalExperienceMonitoringHttpDetailsPercentilesResponse {const DigitalExperienceMonitoringHttpDetailsPercentilesResponse({this.dnsResponseTimeMs, this.resourceFetchTimeMs, this.serverResponseTimeMs, });

factory DigitalExperienceMonitoringHttpDetailsPercentilesResponse.fromJson(Map<String, dynamic> json) { return DigitalExperienceMonitoringHttpDetailsPercentilesResponse(
  dnsResponseTimeMs: json['dnsResponseTimeMs'] != null ? DigitalExperienceMonitoringPercentiles.fromJson(json['dnsResponseTimeMs'] as Map<String, dynamic>) : null,
  resourceFetchTimeMs: json['resourceFetchTimeMs'] != null ? DigitalExperienceMonitoringPercentiles.fromJson(json['resourceFetchTimeMs'] as Map<String, dynamic>) : null,
  serverResponseTimeMs: json['serverResponseTimeMs'] != null ? DigitalExperienceMonitoringPercentiles.fromJson(json['serverResponseTimeMs'] as Map<String, dynamic>) : null,
); }

final DigitalExperienceMonitoringPercentiles? dnsResponseTimeMs;

final DigitalExperienceMonitoringPercentiles? resourceFetchTimeMs;

final DigitalExperienceMonitoringPercentiles? serverResponseTimeMs;

Map<String, dynamic> toJson() { return {
  if (dnsResponseTimeMs != null) 'dnsResponseTimeMs': dnsResponseTimeMs?.toJson(),
  if (resourceFetchTimeMs != null) 'resourceFetchTimeMs': resourceFetchTimeMs?.toJson(),
  if (serverResponseTimeMs != null) 'serverResponseTimeMs': serverResponseTimeMs?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'dnsResponseTimeMs', 'resourceFetchTimeMs', 'serverResponseTimeMs'}.contains(key)); } 
DigitalExperienceMonitoringHttpDetailsPercentilesResponse copyWith({DigitalExperienceMonitoringPercentiles Function()? dnsResponseTimeMs, DigitalExperienceMonitoringPercentiles Function()? resourceFetchTimeMs, DigitalExperienceMonitoringPercentiles Function()? serverResponseTimeMs, }) { return DigitalExperienceMonitoringHttpDetailsPercentilesResponse(
  dnsResponseTimeMs: dnsResponseTimeMs != null ? dnsResponseTimeMs() : this.dnsResponseTimeMs,
  resourceFetchTimeMs: resourceFetchTimeMs != null ? resourceFetchTimeMs() : this.resourceFetchTimeMs,
  serverResponseTimeMs: serverResponseTimeMs != null ? serverResponseTimeMs() : this.serverResponseTimeMs,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DigitalExperienceMonitoringHttpDetailsPercentilesResponse &&
          dnsResponseTimeMs == other.dnsResponseTimeMs &&
          resourceFetchTimeMs == other.resourceFetchTimeMs &&
          serverResponseTimeMs == other.serverResponseTimeMs; } 
@override int get hashCode { return Object.hash(dnsResponseTimeMs, resourceFetchTimeMs, serverResponseTimeMs); } 
@override String toString() { return 'DigitalExperienceMonitoringHttpDetailsPercentilesResponse(dnsResponseTimeMs: $dnsResponseTimeMs, resourceFetchTimeMs: $resourceFetchTimeMs, serverResponseTimeMs: $serverResponseTimeMs)'; } 
 }
