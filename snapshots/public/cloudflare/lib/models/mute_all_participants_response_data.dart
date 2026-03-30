// GENERATED CODE - DO NOT MODIFY BY HAND

final class MuteAllParticipantsResponseData {const MuteAllParticipantsResponseData({this.action, this.mutedParticipantsCount, });

factory MuteAllParticipantsResponseData.fromJson(Map<String, dynamic> json) { return MuteAllParticipantsResponseData(
  action: json['action'] as String?,
  mutedParticipantsCount: json['muted_participants_count'] != null ? (json['muted_participants_count'] as num).toDouble() : null,
); }

final String? action;

final double? mutedParticipantsCount;

Map<String, dynamic> toJson() { return {
  'action': ?action,
  'muted_participants_count': ?mutedParticipantsCount,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'action', 'muted_participants_count'}.contains(key)); } 
MuteAllParticipantsResponseData copyWith({String Function()? action, double Function()? mutedParticipantsCount, }) { return MuteAllParticipantsResponseData(
  action: action != null ? action() : this.action,
  mutedParticipantsCount: mutedParticipantsCount != null ? mutedParticipantsCount() : this.mutedParticipantsCount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MuteAllParticipantsResponseData &&
          action == other.action &&
          mutedParticipantsCount == other.mutedParticipantsCount; } 
@override int get hashCode { return Object.hash(action, mutedParticipantsCount); } 
@override String toString() { return 'MuteAllParticipantsResponseData(action: $action, mutedParticipantsCount: $mutedParticipantsCount)'; } 
 }
