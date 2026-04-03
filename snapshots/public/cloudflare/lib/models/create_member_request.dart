// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'create_single_member.dart';@immutable final class CreateMemberRequest {const CreateMemberRequest({required this.member});

factory CreateMemberRequest.fromJson(Map<String, dynamic> json) { return CreateMemberRequest(
  member: CreateSingleMember.fromJson(json['member'] as Map<String, dynamic>),
); }

final CreateSingleMember member;

Map<String, dynamic> toJson() { return {
  'member': member.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('member'); } 
CreateMemberRequest copyWith({CreateSingleMember? member}) { return CreateMemberRequest(
  member: member ?? this.member,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateMemberRequest &&
          member == other.member; } 
@override int get hashCode { return member.hashCode; } 
@override String toString() { return 'CreateMemberRequest(member: $member)'; } 
 }
