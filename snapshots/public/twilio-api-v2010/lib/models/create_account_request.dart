// GENERATED CODE - DO NOT MODIFY BY HAND

final class CreateAccountRequest {const CreateAccountRequest({this.friendlyName});

factory CreateAccountRequest.fromJson(Map<String, dynamic> json) { return CreateAccountRequest(
  friendlyName: json['FriendlyName'] as String?,
); }

/// A human readable description of the account to create, defaults to `SubAccount Created at {YYYY-MM-DD HH:MM meridian}`
final String? friendlyName;

Map<String, dynamic> toJson() { return {
  'FriendlyName': ?friendlyName,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'FriendlyName'}.contains(key)); } 
CreateAccountRequest copyWith({String Function()? friendlyName}) { return CreateAccountRequest(
  friendlyName: friendlyName != null ? friendlyName() : this.friendlyName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateAccountRequest &&
          friendlyName == other.friendlyName; } 
@override int get hashCode { return friendlyName.hashCode; } 
@override String toString() { return 'CreateAccountRequest(friendlyName: $friendlyName)'; } 
 }
