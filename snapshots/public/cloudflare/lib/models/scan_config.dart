// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'frequency2.dart';final class ScanConfig {const ScanConfig({required this.accountId, required this.frequency, required this.id, required this.ips, required this.ports, });

factory ScanConfig.fromJson(Map<String, dynamic> json) { return ScanConfig(
  accountId: json['account_id'] as String,
  frequency: Frequency2.fromJson(json['frequency'] as num),
  id: json['id'] as String,
  ips: (json['ips'] as List<dynamic>).map((e) => e as String).toList(),
  ports: (json['ports'] as List<dynamic>).map((e) => e as String).toList(),
); }

final String accountId;

/// Defines the number of days between each scan (0 = One-off scan).
final Frequency2 frequency;

/// Defines the Config ID.
final String id;

/// Defines a list of IP addresses or CIDR blocks to scan. The maximum number of total IP addresses allowed is 5000.
final List<String> ips;

/// Defines a list of ports to scan. Valid values are:"default", "all", or a comma-separated list of ports or range of ports (e.g. ["1-80", "443"]). "default" scans the 100 most commonly open ports.
final List<String> ports;

Map<String, dynamic> toJson() { return {
  'account_id': accountId,
  'frequency': frequency.toJson(),
  'id': id,
  'ips': ips,
  'ports': ports,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('account_id') && json['account_id'] is String &&
      json.containsKey('frequency') &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('ips') &&
      json.containsKey('ports'); } 
ScanConfig copyWith({String? accountId, Frequency2? frequency, String? id, List<String>? ips, List<String>? ports, }) { return ScanConfig(
  accountId: accountId ?? this.accountId,
  frequency: frequency ?? this.frequency,
  id: id ?? this.id,
  ips: ips ?? this.ips,
  ports: ports ?? this.ports,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ScanConfig &&
          accountId == other.accountId &&
          frequency == other.frequency &&
          id == other.id &&
          listEquals(ips, other.ips) &&
          listEquals(ports, other.ports); } 
@override int get hashCode { return Object.hash(accountId, frequency, id, Object.hashAll(ips), Object.hashAll(ports)); } 
@override String toString() { return 'ScanConfig(accountId: $accountId, frequency: $frequency, id: $id, ips: $ips, ports: $ports)'; } 
 }
