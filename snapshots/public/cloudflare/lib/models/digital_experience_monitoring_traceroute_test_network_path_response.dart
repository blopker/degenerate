// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'digital_experience_monitoring_traceroute_test_network_path_response_network_path.dart';import 'digital_experience_monitoring_uuid.dart';@immutable final class DigitalExperienceMonitoringTracerouteTestNetworkPathResponse {const DigitalExperienceMonitoringTracerouteTestNetworkPathResponse({required this.id, this.deviceName, this.interval, this.kind, this.name, this.networkPath, this.url, });

factory DigitalExperienceMonitoringTracerouteTestNetworkPathResponse.fromJson(Map<String, dynamic> json) { return DigitalExperienceMonitoringTracerouteTestNetworkPathResponse(
  deviceName: json['deviceName'] as String?,
  id: DigitalExperienceMonitoringUuid.fromJson(json['id'] as String),
  interval: json['interval'] as String?,
  kind: json['kind'],
  name: json['name'] as String?,
  networkPath: json['networkPath'] != null ? DigitalExperienceMonitoringTracerouteTestNetworkPathResponseNetworkPath.fromJson(json['networkPath'] as Map<String, dynamic>) : null,
  url: json['url'] as String?,
); }

final String? deviceName;

final DigitalExperienceMonitoringUuid id;

/// The interval at which the Traceroute synthetic application test is set to run.
final String? interval;

final dynamic kind;

final String? name;

final DigitalExperienceMonitoringTracerouteTestNetworkPathResponseNetworkPath? networkPath;

/// The host of the Traceroute synthetic application test
final String? url;

Map<String, dynamic> toJson() { return {
  'deviceName': ?deviceName,
  'id': id.toJson(),
  'interval': ?interval,
  'kind': ?kind,
  'name': ?name,
  if (networkPath != null) 'networkPath': networkPath?.toJson(),
  'url': ?url,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id'); } 
DigitalExperienceMonitoringTracerouteTestNetworkPathResponse copyWith({String Function()? deviceName, DigitalExperienceMonitoringUuid? id, String Function()? interval, dynamic Function()? kind, String Function()? name, DigitalExperienceMonitoringTracerouteTestNetworkPathResponseNetworkPath? Function()? networkPath, String Function()? url, }) { return DigitalExperienceMonitoringTracerouteTestNetworkPathResponse(
  deviceName: deviceName != null ? deviceName() : this.deviceName,
  id: id ?? this.id,
  interval: interval != null ? interval() : this.interval,
  kind: kind != null ? kind() : this.kind,
  name: name != null ? name() : this.name,
  networkPath: networkPath != null ? networkPath() : this.networkPath,
  url: url != null ? url() : this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DigitalExperienceMonitoringTracerouteTestNetworkPathResponse &&
          deviceName == other.deviceName &&
          id == other.id &&
          interval == other.interval &&
          kind == other.kind &&
          name == other.name &&
          networkPath == other.networkPath &&
          url == other.url; } 
@override int get hashCode { return Object.hash(deviceName, id, interval, kind, name, networkPath, url); } 
@override String toString() { return 'DigitalExperienceMonitoringTracerouteTestNetworkPathResponse(deviceName: $deviceName, id: $id, interval: $interval, kind: $kind, name: $name, networkPath: $networkPath, url: $url)'; } 
 }
