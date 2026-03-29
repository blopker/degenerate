// GENERATED CODE - DO NOT MODIFY BY HAND

import 'audit_log_invite_sent_data.dart';/// The details for events with this `type`.
final class AuditLogInviteSent {const AuditLogInviteSent({this.id, this.data, });

factory AuditLogInviteSent.fromJson(Map<String, dynamic> json) { return AuditLogInviteSent(
  id: json['id'] as String?,
  data: json['data'] != null ? AuditLogInviteSentData.fromJson(json['data'] as Map<String, dynamic>) : null,
); }

/// The ID of the invite.
final String? id;

/// The payload used to create the invite.
final AuditLogInviteSentData? data;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  if (data != null) 'data': data?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
AuditLogInviteSent copyWith({String Function()? id, AuditLogInviteSentData Function()? data, }) { return AuditLogInviteSent(
  id: id != null ? id() : this.id,
  data: data != null ? data() : this.data,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AuditLogInviteSent &&
          id == other.id &&
          data == other.data; } 
@override int get hashCode { return Object.hash(id, data); } 
@override String toString() { return 'AuditLogInviteSent(id: $id, data: $data)'; } 
 }
