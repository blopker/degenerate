// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class EnterpriseTeamMembershipsBulkRemoveRequest {const EnterpriseTeamMembershipsBulkRemoveRequest({required this.usernames});

factory EnterpriseTeamMembershipsBulkRemoveRequest.fromJson(Map<String, dynamic> json) { return EnterpriseTeamMembershipsBulkRemoveRequest(
  usernames: (json['usernames'] as List<dynamic>).map((e) => e as String).toList(),
); }

/// The GitHub user handles to be removed from the team.
final List<String> usernames;

Map<String, dynamic> toJson() { return {
  'usernames': usernames,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('usernames'); } 
EnterpriseTeamMembershipsBulkRemoveRequest copyWith({List<String>? usernames}) { return EnterpriseTeamMembershipsBulkRemoveRequest(
  usernames: usernames ?? this.usernames,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EnterpriseTeamMembershipsBulkRemoveRequest &&
          listEquals(usernames, other.usernames); } 
@override int get hashCode { return Object.hashAll(usernames).hashCode; } 
@override String toString() { return 'EnterpriseTeamMembershipsBulkRemoveRequest(usernames: $usernames)'; } 
 }
