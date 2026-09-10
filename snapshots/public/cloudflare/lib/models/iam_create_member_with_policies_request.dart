// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'iam_create_member_policy_request.dart';import 'iam_email.dart';import 'iam_member_invitation_status.dart';@immutable final class IamCreateMemberWithPoliciesRequest {const IamCreateMemberWithPoliciesRequest({required this.email, required this.policies, this.status, });

factory IamCreateMemberWithPoliciesRequest.fromJson(Map<String, dynamic> json) { return IamCreateMemberWithPoliciesRequest(
  email: IamEmail.fromJson(json['email'] as String),
  policies: (json['policies'] as List<dynamic>).map((e) => IamCreateMemberPolicyRequest.fromJson(e as Map<String, dynamic>)).toList(),
  status: json['status'] != null ? IamMemberInvitationStatus.fromJson(json['status'] as String) : null,
); }

/// The contact email address of the user.
final IamEmail email;

/// Array of policies associated with this member.
final List<IamCreateMemberPolicyRequest> policies;

/// Status of the member invitation. If not provided during creation, defaults to 'pending'.
/// Changing from 'accepted' back to 'pending' will trigger a replacement of the member resource in Terraform.
/// 
final IamMemberInvitationStatus? status;

Map<String, dynamic> toJson() { return {
  'email': email.toJson(),
  'policies': policies.map((e) => e.toJson()).toList(),
  if (status != null) 'status': status?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('email') &&
      json.containsKey('policies'); } 
IamCreateMemberWithPoliciesRequest copyWith({IamEmail? email, List<IamCreateMemberPolicyRequest>? policies, IamMemberInvitationStatus? Function()? status, }) { return IamCreateMemberWithPoliciesRequest(
  email: email ?? this.email,
  policies: policies ?? this.policies,
  status: status != null ? status() : this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamCreateMemberWithPoliciesRequest &&
          email == other.email &&
          listEquals(policies, other.policies) &&
          status == other.status; } 
@override int get hashCode { return Object.hash(email, Object.hashAll(policies), status); } 
@override String toString() { return 'IamCreateMemberWithPoliciesRequest(email: $email, policies: $policies, status: $status)'; } 
 }
