// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// DaemonEndpoint contains information about a single Daemon endpoint.
@immutable final class DaemonEndpoint {const DaemonEndpoint({this.port = 0});

factory DaemonEndpoint.fromJson(Map<String, dynamic> json) { return DaemonEndpoint(
  port: (json['Port'] as num).toInt(),
); }

/// Port number of the given endpoint.
final int port;

Map<String, dynamic> toJson() { return {
  'Port': port,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('Port') && json['Port'] is num; } 
DaemonEndpoint copyWith({int? port}) { return DaemonEndpoint(
  port: port ?? this.port,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DaemonEndpoint &&
          port == other.port; } 
@override int get hashCode { return port.hashCode; } 
@override String toString() { return 'DaemonEndpoint(port: $port)'; } 
 }
