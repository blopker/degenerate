// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class ReposTransferRequest {const ReposTransferRequest({required this.newOwner, this.newName, this.teamIds, });

factory ReposTransferRequest.fromJson(Map<String, dynamic> json) { return ReposTransferRequest(
  newOwner: json['new_owner'] as String,
  newName: json['new_name'] as String?,
  teamIds: (json['team_ids'] as List<dynamic>?)?.map((e) => (e as num).toInt()).toList(),
); }

/// The username or organization name the repository will be transferred to.
final String newOwner;

/// The new name to be given to the repository.
final String? newName;

/// ID of the team or teams to add to the repository. Teams can only be added to organization-owned repositories.
final List<int>? teamIds;

Map<String, dynamic> toJson() { return {
  'new_owner': newOwner,
  'new_name': ?newName,
  'team_ids': ?teamIds,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('new_owner') && json['new_owner'] is String; } 
ReposTransferRequest copyWith({String? newOwner, String Function()? newName, List<int> Function()? teamIds, }) { return ReposTransferRequest(
  newOwner: newOwner ?? this.newOwner,
  newName: newName != null ? newName() : this.newName,
  teamIds: teamIds != null ? teamIds() : this.teamIds,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ReposTransferRequest &&
          newOwner == other.newOwner &&
          newName == other.newName &&
          listEquals(teamIds, other.teamIds); } 
@override int get hashCode { return Object.hash(newOwner, newName, Object.hashAll(teamIds ?? const [])); } 
@override String toString() { return 'ReposTransferRequest(newOwner: $newOwner, newName: $newName, teamIds: $teamIds)'; } 
 }
