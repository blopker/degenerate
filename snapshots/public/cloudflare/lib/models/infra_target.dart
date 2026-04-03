// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'infra_ip_info.dart';import 'infra_target_id.dart';@immutable final class InfraTarget {const InfraTarget({required this.createdAt, required this.hostname, required this.id, required this.ip, required this.modifiedAt, });

factory InfraTarget.fromJson(Map<String, dynamic> json) { return InfraTarget(
  createdAt: DateTime.parse(json['created_at'] as String),
  hostname: json['hostname'] as String,
  id: InfraTargetId.fromJson(json['id'] as String),
  ip: InfraIpInfo.fromJson(json['ip'] as Map<String, dynamic>),
  modifiedAt: DateTime.parse(json['modified_at'] as String),
); }

/// Date and time at which the target was created
final DateTime createdAt;

/// A non-unique field that refers to a target
final String hostname;

final InfraTargetId id;

final InfraIpInfo ip;

/// Date and time at which the target was modified
final DateTime modifiedAt;

Map<String, dynamic> toJson() { return {
  'created_at': createdAt.toIso8601String(),
  'hostname': hostname,
  'id': id.toJson(),
  'ip': ip.toJson(),
  'modified_at': modifiedAt.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('hostname') && json['hostname'] is String &&
      json.containsKey('id') &&
      json.containsKey('ip') &&
      json.containsKey('modified_at') && json['modified_at'] is String; } 
InfraTarget copyWith({DateTime? createdAt, String? hostname, InfraTargetId? id, InfraIpInfo? ip, DateTime? modifiedAt, }) { return InfraTarget(
  createdAt: createdAt ?? this.createdAt,
  hostname: hostname ?? this.hostname,
  id: id ?? this.id,
  ip: ip ?? this.ip,
  modifiedAt: modifiedAt ?? this.modifiedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InfraTarget &&
          createdAt == other.createdAt &&
          hostname == other.hostname &&
          id == other.id &&
          ip == other.ip &&
          modifiedAt == other.modifiedAt; } 
@override int get hashCode { return Object.hash(createdAt, hostname, id, ip, modifiedAt); } 
@override String toString() { return 'InfraTarget(createdAt: $createdAt, hostname: $hostname, id: $id, ip: $ip, modifiedAt: $modifiedAt)'; } 
 }
