// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_participant_data_from_peer_id_response_data_participant_peer_report.dart';import 'get_participant_data_from_peer_id_response_data_participant_peer_stats.dart';import 'get_participant_data_from_peer_id_response_data_participant_quality_stats.dart';@immutable final class GetParticipantDataFromPeerIdResponseDataParticipant {const GetParticipantDataFromPeerIdResponseDataParticipant({this.createdAt, this.customParticipantId, this.displayName, this.duration, this.id, this.joinedAt, this.leftAt, this.peerReport, this.peerStats, this.qualityStats, this.role, this.updatedAt, this.userId, });

factory GetParticipantDataFromPeerIdResponseDataParticipant.fromJson(Map<String, dynamic> json) { return GetParticipantDataFromPeerIdResponseDataParticipant(
  createdAt: json['created_at'] as String?,
  customParticipantId: json['custom_participant_id'] as String?,
  displayName: json['display_name'] as String?,
  duration: json['duration'] != null ? (json['duration'] as num).toDouble() : null,
  id: json['id'] as String?,
  joinedAt: json['joined_at'] as String?,
  leftAt: json['left_at'] as String?,
  peerReport: json['peer_report'] != null ? GetParticipantDataFromPeerIdResponseDataParticipantPeerReport.fromJson(json['peer_report'] as Map<String, dynamic>) : null,
  peerStats: json['peer_stats'] != null ? GetParticipantDataFromPeerIdResponseDataParticipantPeerStats.fromJson(json['peer_stats'] as Map<String, dynamic>) : null,
  qualityStats: json['quality_stats'] != null ? GetParticipantDataFromPeerIdResponseDataParticipantQualityStats.fromJson(json['quality_stats'] as Map<String, dynamic>) : null,
  role: json['role'] as String?,
  updatedAt: json['updated_at'] as String?,
  userId: json['user_id'] as String?,
); }

final String? createdAt;

final String? customParticipantId;

final String? displayName;

final double? duration;

final String? id;

final String? joinedAt;

final String? leftAt;

final GetParticipantDataFromPeerIdResponseDataParticipantPeerReport? peerReport;

final GetParticipantDataFromPeerIdResponseDataParticipantPeerStats? peerStats;

final GetParticipantDataFromPeerIdResponseDataParticipantQualityStats? qualityStats;

final String? role;

final String? updatedAt;

final String? userId;

Map<String, dynamic> toJson() { return {
  'created_at': ?createdAt,
  'custom_participant_id': ?customParticipantId,
  'display_name': ?displayName,
  'duration': ?duration,
  'id': ?id,
  'joined_at': ?joinedAt,
  'left_at': ?leftAt,
  if (peerReport != null) 'peer_report': peerReport?.toJson(),
  if (peerStats != null) 'peer_stats': peerStats?.toJson(),
  if (qualityStats != null) 'quality_stats': qualityStats?.toJson(),
  'role': ?role,
  'updated_at': ?updatedAt,
  'user_id': ?userId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'created_at', 'custom_participant_id', 'display_name', 'duration', 'id', 'joined_at', 'left_at', 'peer_report', 'peer_stats', 'quality_stats', 'role', 'updated_at', 'user_id'}.contains(key)); } 
GetParticipantDataFromPeerIdResponseDataParticipant copyWith({String Function()? createdAt, String Function()? customParticipantId, String Function()? displayName, double Function()? duration, String Function()? id, String Function()? joinedAt, String Function()? leftAt, GetParticipantDataFromPeerIdResponseDataParticipantPeerReport Function()? peerReport, GetParticipantDataFromPeerIdResponseDataParticipantPeerStats Function()? peerStats, GetParticipantDataFromPeerIdResponseDataParticipantQualityStats Function()? qualityStats, String Function()? role, String Function()? updatedAt, String Function()? userId, }) { return GetParticipantDataFromPeerIdResponseDataParticipant(
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  customParticipantId: customParticipantId != null ? customParticipantId() : this.customParticipantId,
  displayName: displayName != null ? displayName() : this.displayName,
  duration: duration != null ? duration() : this.duration,
  id: id != null ? id() : this.id,
  joinedAt: joinedAt != null ? joinedAt() : this.joinedAt,
  leftAt: leftAt != null ? leftAt() : this.leftAt,
  peerReport: peerReport != null ? peerReport() : this.peerReport,
  peerStats: peerStats != null ? peerStats() : this.peerStats,
  qualityStats: qualityStats != null ? qualityStats() : this.qualityStats,
  role: role != null ? role() : this.role,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
  userId: userId != null ? userId() : this.userId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetParticipantDataFromPeerIdResponseDataParticipant &&
          createdAt == other.createdAt &&
          customParticipantId == other.customParticipantId &&
          displayName == other.displayName &&
          duration == other.duration &&
          id == other.id &&
          joinedAt == other.joinedAt &&
          leftAt == other.leftAt &&
          peerReport == other.peerReport &&
          peerStats == other.peerStats &&
          qualityStats == other.qualityStats &&
          role == other.role &&
          updatedAt == other.updatedAt &&
          userId == other.userId; } 
@override int get hashCode { return Object.hash(createdAt, customParticipantId, displayName, duration, id, joinedAt, leftAt, peerReport, peerStats, qualityStats, role, updatedAt, userId); } 
@override String toString() { return 'GetParticipantDataFromPeerIdResponseDataParticipant(createdAt: $createdAt, customParticipantId: $customParticipantId, displayName: $displayName, duration: $duration, id: $id, joinedAt: $joinedAt, leftAt: $leftAt, peerReport: $peerReport, peerStats: $peerStats, qualityStats: $qualityStats, role: $role, updatedAt: $updatedAt, userId: $userId)'; } 
 }
