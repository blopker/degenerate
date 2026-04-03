// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class KickAllParticipantsResponseData {const KickAllParticipantsResponseData({this.action, this.kickedParticipantsCount, });

factory KickAllParticipantsResponseData.fromJson(Map<String, dynamic> json) { return KickAllParticipantsResponseData(
  action: json['action'] as String?,
  kickedParticipantsCount: json['kicked_participants_count'] != null ? (json['kicked_participants_count'] as num).toDouble() : null,
); }

final String? action;

final double? kickedParticipantsCount;

Map<String, dynamic> toJson() { return {
  'action': ?action,
  'kicked_participants_count': ?kickedParticipantsCount,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'action', 'kicked_participants_count'}.contains(key)); } 
KickAllParticipantsResponseData copyWith({String Function()? action, double Function()? kickedParticipantsCount, }) { return KickAllParticipantsResponseData(
  action: action != null ? action() : this.action,
  kickedParticipantsCount: kickedParticipantsCount != null ? kickedParticipantsCount() : this.kickedParticipantsCount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is KickAllParticipantsResponseData &&
          action == other.action &&
          kickedParticipantsCount == other.kickedParticipantsCount; } 
@override int get hashCode { return Object.hash(action, kickedParticipantsCount); } 
@override String toString() { return 'KickAllParticipantsResponseData(action: $action, kickedParticipantsCount: $kickedParticipantsCount)'; } 
 }
