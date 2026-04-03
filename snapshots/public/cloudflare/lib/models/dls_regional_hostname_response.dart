// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dls_hostname.dart';import 'dls_region_key.dart';import 'dls_routing.dart';extension type DlsTimestamp(DateTime value) {
factory DlsTimestamp.fromJson(String json) => DlsTimestamp(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
@immutable final class DlsRegionalHostnameResponse {const DlsRegionalHostnameResponse({required this.createdOn, required this.hostname, required this.regionKey, this.routing, });

factory DlsRegionalHostnameResponse.fromJson(Map<String, dynamic> json) { return DlsRegionalHostnameResponse(
  createdOn: DlsTimestamp.fromJson(json['created_on'] as String),
  hostname: DlsHostname.fromJson(json['hostname'] as String),
  regionKey: DlsRegionKey.fromJson(json['region_key'] as String),
  routing: json['routing'] != null ? DlsRouting.fromJson(json['routing'] as String) : null,
); }

/// When the regional hostname was created
final DlsTimestamp createdOn;

/// DNS hostname to be regionalized, must be a subdomain of the zone. Wildcards are supported for one level, e.g `*.example.com`
final DlsHostname hostname;

/// Identifying key for the region
final DlsRegionKey regionKey;

final DlsRouting? routing;

Map<String, dynamic> toJson() { return {
  'created_on': createdOn.toJson(),
  'hostname': hostname.toJson(),
  'region_key': regionKey.toJson(),
  if (routing != null) 'routing': routing?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created_on') &&
      json.containsKey('hostname') &&
      json.containsKey('region_key'); } 
DlsRegionalHostnameResponse copyWith({DlsTimestamp? createdOn, DlsHostname? hostname, DlsRegionKey? regionKey, DlsRouting Function()? routing, }) { return DlsRegionalHostnameResponse(
  createdOn: createdOn ?? this.createdOn,
  hostname: hostname ?? this.hostname,
  regionKey: regionKey ?? this.regionKey,
  routing: routing != null ? routing() : this.routing,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlsRegionalHostnameResponse &&
          createdOn == other.createdOn &&
          hostname == other.hostname &&
          regionKey == other.regionKey &&
          routing == other.routing; } 
@override int get hashCode { return Object.hash(createdOn, hostname, regionKey, routing); } 
@override String toString() { return 'DlsRegionalHostnameResponse(createdOn: $createdOn, hostname: $hostname, regionKey: $regionKey, routing: $routing)'; } 
 }
