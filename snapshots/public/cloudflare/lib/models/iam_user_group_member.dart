// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'iam_email.dart';/// Member attached to a User Group.
@immutable final class IamUserGroupMember {const IamUserGroupMember({required this.id, this.email, this.status = const Omittable.absent(), });

factory IamUserGroupMember.fromJson(Map<String, dynamic> json) { return IamUserGroupMember(
  email: json['email'] != null ? IamEmail.fromJson(json['email'] as String) : null,
  id: json['id'] as String,
  status: json.containsKey('status') ? Omittable(json['status']) : const Omittable.absent(),
); }

/// The contact email address of the user.
final IamEmail? email;

/// Account member identifier.
final String id;

/// The member's status in the account.
final Omittable<dynamic> status;

Map<String, dynamic> toJson() { return {
  if (email != null) 'email': email?.toJson(),
  'id': id,
  if (status.isPresent) 'status': status.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String; } 
IamUserGroupMember copyWith({IamEmail? Function()? email, String? id, Omittable<dynamic>? status, }) { return IamUserGroupMember(
  email: email != null ? email() : this.email,
  id: id ?? this.id,
  status: status ?? this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamUserGroupMember &&
          email == other.email &&
          id == other.id &&
          status == other.status; } 
@override int get hashCode { return Object.hash(email, id, status); } 
@override String toString() { return 'IamUserGroupMember(email: $email, id: $id, status: $status)'; } 
 }
