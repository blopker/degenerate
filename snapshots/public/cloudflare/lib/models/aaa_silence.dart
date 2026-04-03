// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aaa_policy_id.dart';import 'aaa_silence_id.dart';@immutable final class AaaSilence {const AaaSilence({this.createdAt, this.endTime, this.id, this.policyId, this.startTime, this.updatedAt, });

factory AaaSilence.fromJson(Map<String, dynamic> json) { return AaaSilence(
  createdAt: json['created_at'] as String?,
  endTime: json['end_time'] as String?,
  id: json['id'] != null ? AaaSilenceId.fromJson(json['id'] as String) : null,
  policyId: json['policy_id'] != null ? AaaPolicyId.fromJson(json['policy_id'] as String) : null,
  startTime: json['start_time'] as String?,
  updatedAt: json['updated_at'] as String?,
); }

/// When the silence was created.
final String? createdAt;

/// When the silence ends.
final String? endTime;

final AaaSilenceId? id;

/// The unique identifier of a notification policy
final AaaPolicyId? policyId;

/// When the silence starts.
final String? startTime;

/// When the silence was modified.
final String? updatedAt;

Map<String, dynamic> toJson() { return {
  'created_at': ?createdAt,
  'end_time': ?endTime,
  if (id != null) 'id': id?.toJson(),
  if (policyId != null) 'policy_id': policyId?.toJson(),
  'start_time': ?startTime,
  'updated_at': ?updatedAt,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'created_at', 'end_time', 'id', 'policy_id', 'start_time', 'updated_at'}.contains(key)); } 
AaaSilence copyWith({String Function()? createdAt, String Function()? endTime, AaaSilenceId Function()? id, AaaPolicyId Function()? policyId, String Function()? startTime, String Function()? updatedAt, }) { return AaaSilence(
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  endTime: endTime != null ? endTime() : this.endTime,
  id: id != null ? id() : this.id,
  policyId: policyId != null ? policyId() : this.policyId,
  startTime: startTime != null ? startTime() : this.startTime,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AaaSilence &&
          createdAt == other.createdAt &&
          endTime == other.endTime &&
          id == other.id &&
          policyId == other.policyId &&
          startTime == other.startTime &&
          updatedAt == other.updatedAt; } 
@override int get hashCode { return Object.hash(createdAt, endTime, id, policyId, startTime, updatedAt); } 
@override String toString() { return 'AaaSilence(createdAt: $createdAt, endTime: $endTime, id: $id, policyId: $policyId, startTime: $startTime, updatedAt: $updatedAt)'; } 
 }
