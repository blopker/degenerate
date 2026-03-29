// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostGroupMemberCreateRequest {const PostGroupMemberCreateRequest({required this.accountId});

factory PostGroupMemberCreateRequest.fromJson(Map<String, dynamic> json) { return PostGroupMemberCreateRequest(
  accountId: json['accountId'] as String,
); }

final String accountId;

Map<String, dynamic> toJson() { return {
  'accountId': accountId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('accountId') && json['accountId'] is String; } 
PostGroupMemberCreateRequest copyWith({String? accountId}) { return PostGroupMemberCreateRequest(
  accountId: accountId ?? this.accountId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostGroupMemberCreateRequest &&
          accountId == other.accountId; } 
@override int get hashCode { return accountId.hashCode; } 
@override String toString() { return 'PostGroupMemberCreateRequest(accountId: $accountId)'; } 
 }
