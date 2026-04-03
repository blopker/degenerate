// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'create_single_member_user.dart';@immutable final class CreateSingleMemberStatus {const CreateSingleMemberStatus._(this.value);

factory CreateSingleMemberStatus.fromJson(String json) { return switch (json) {
  'active' => active,
  'canceled' => canceled,
  _ => CreateSingleMemberStatus._(json),
}; }

static const CreateSingleMemberStatus active = CreateSingleMemberStatus._('active');

static const CreateSingleMemberStatus canceled = CreateSingleMemberStatus._('canceled');

static const List<CreateSingleMemberStatus> values = [active, canceled];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateSingleMemberStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CreateSingleMemberStatus($value)'; } 
 }
@immutable final class CreateSingleMember {const CreateSingleMember({required this.user, this.status, });

factory CreateSingleMember.fromJson(Map<String, dynamic> json) { return CreateSingleMember(
  status: json['status'] != null ? CreateSingleMemberStatus.fromJson(json['status'] as String) : null,
  user: CreateSingleMemberUser.fromJson(json['user'] as Map<String, dynamic>),
); }

final CreateSingleMemberStatus? status;

final CreateSingleMemberUser user;

Map<String, dynamic> toJson() { return {
  if (status != null) 'status': status?.toJson(),
  'user': user.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('user'); } 
CreateSingleMember copyWith({CreateSingleMemberStatus Function()? status, CreateSingleMemberUser? user, }) { return CreateSingleMember(
  status: status != null ? status() : this.status,
  user: user ?? this.user,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateSingleMember &&
          status == other.status &&
          user == other.user; } 
@override int get hashCode { return Object.hash(status, user); } 
@override String toString() { return 'CreateSingleMember(status: $status, user: $user)'; } 
 }
