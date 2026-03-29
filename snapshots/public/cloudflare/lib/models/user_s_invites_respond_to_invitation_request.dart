// GENERATED CODE - DO NOT MODIFY BY HAND

final class UserSInvitesRespondToInvitationRequest {const UserSInvitesRespondToInvitationRequest({required this.status});

factory UserSInvitesRespondToInvitationRequest.fromJson(Map<String, dynamic> json) { return UserSInvitesRespondToInvitationRequest(
  status: json['status'],
); }

/// Status of your response to the invitation (rejected or accepted).
final dynamic status;

Map<String, dynamic> toJson() { return {
  'status': ?status,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('status'); } 
UserSInvitesRespondToInvitationRequest copyWith({dynamic Function()? status}) { return UserSInvitesRespondToInvitationRequest(
  status: status != null ? status() : this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UserSInvitesRespondToInvitationRequest &&
          status == other.status; } 
@override int get hashCode { return status.hashCode; } 
@override String toString() { return 'UserSInvitesRespondToInvitationRequest(status: $status)'; } 
 }
