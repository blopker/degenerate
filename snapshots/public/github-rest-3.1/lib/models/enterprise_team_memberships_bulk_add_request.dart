// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class EnterpriseTeamMembershipsBulkAddRequest {const EnterpriseTeamMembershipsBulkAddRequest({required this.usernames});

factory EnterpriseTeamMembershipsBulkAddRequest.fromJson(Map<String, dynamic> json) { return EnterpriseTeamMembershipsBulkAddRequest(
  usernames: (json['usernames'] as List<dynamic>).map((e) => e as String).toList(),
); }

/// The GitHub user handles to add to the team.
final List<String> usernames;

Map<String, dynamic> toJson() { return {
  'usernames': usernames,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('usernames'); } 
EnterpriseTeamMembershipsBulkAddRequest copyWith({List<String>? usernames}) { return EnterpriseTeamMembershipsBulkAddRequest(
  usernames: usernames ?? this.usernames,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EnterpriseTeamMembershipsBulkAddRequest &&
          listEquals(usernames, other.usernames); } 
@override int get hashCode { return Object.hashAll(usernames).hashCode; } 
@override String toString() { return 'EnterpriseTeamMembershipsBulkAddRequest(usernames: $usernames)'; } 
 }
