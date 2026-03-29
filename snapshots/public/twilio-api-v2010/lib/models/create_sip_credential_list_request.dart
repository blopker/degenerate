// GENERATED CODE - DO NOT MODIFY BY HAND

final class CreateSipCredentialListRequest {const CreateSipCredentialListRequest({required this.friendlyName});

factory CreateSipCredentialListRequest.fromJson(Map<String, dynamic> json) { return CreateSipCredentialListRequest(
  friendlyName: json['FriendlyName'] as String,
); }

/// A human readable descriptive text that describes the CredentialList, up to 64 characters long.
final String friendlyName;

Map<String, dynamic> toJson() { return {
  'FriendlyName': friendlyName,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('FriendlyName') && json['FriendlyName'] is String; } 
CreateSipCredentialListRequest copyWith({String? friendlyName}) { return CreateSipCredentialListRequest(
  friendlyName: friendlyName ?? this.friendlyName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateSipCredentialListRequest &&
          friendlyName == other.friendlyName; } 
@override int get hashCode { return friendlyName.hashCode; } 
@override String toString() { return 'CreateSipCredentialListRequest(friendlyName: $friendlyName)'; } 
 }
