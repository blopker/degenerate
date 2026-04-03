// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class TeamsDevicesServiceMode {const TeamsDevicesServiceMode({this.mode, this.port, });

factory TeamsDevicesServiceMode.fromJson(Map<String, dynamic> json) { return TeamsDevicesServiceMode(
  mode: json['mode'] as String?,
  port: json['port'] != null ? (json['port'] as num).toDouble() : null,
); }

/// The mode to run the WARP client under.
final String? mode;

/// The port number when used with proxy mode.
final double? port;

Map<String, dynamic> toJson() { return {
  'mode': ?mode,
  'port': ?port,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'mode', 'port'}.contains(key)); } 
TeamsDevicesServiceMode copyWith({String Function()? mode, double Function()? port, }) { return TeamsDevicesServiceMode(
  mode: mode != null ? mode() : this.mode,
  port: port != null ? port() : this.port,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsDevicesServiceMode &&
          mode == other.mode &&
          port == other.port; } 
@override int get hashCode { return Object.hash(mode, port); } 
@override String toString() { return 'TeamsDevicesServiceMode(mode: $mode, port: $port)'; } 
 }
