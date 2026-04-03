// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// ClientIPConfig represents the configurations of Client IP based session affinity.
@immutable final class ClientIpConfig {const ClientIpConfig({this.timeoutSeconds});

factory ClientIpConfig.fromJson(Map<String, dynamic> json) { return ClientIpConfig(
  timeoutSeconds: json['timeoutSeconds'] != null ? (json['timeoutSeconds'] as num).toInt() : null,
); }

/// timeoutSeconds specifies the seconds of ClientIP type session sticky time. The value must be >0 && <=86400(for 1 day) if ServiceAffinity == "ClientIP". Default value is 10800(for 3 hours).
final int? timeoutSeconds;

Map<String, dynamic> toJson() { return {
  'timeoutSeconds': ?timeoutSeconds,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'timeoutSeconds'}.contains(key)); } 
ClientIpConfig copyWith({int Function()? timeoutSeconds}) { return ClientIpConfig(
  timeoutSeconds: timeoutSeconds != null ? timeoutSeconds() : this.timeoutSeconds,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ClientIpConfig &&
          timeoutSeconds == other.timeoutSeconds; } 
@override int get hashCode { return timeoutSeconds.hashCode; } 
@override String toString() { return 'ClientIpConfig(timeoutSeconds: $timeoutSeconds)'; } 
 }
