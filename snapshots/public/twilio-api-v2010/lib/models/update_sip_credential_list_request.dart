// GENERATED CODE - DO NOT MODIFY BY HAND

final class UpdateSipCredentialListRequest {const UpdateSipCredentialListRequest({required this.friendlyName});

factory UpdateSipCredentialListRequest.fromJson(Map<String, dynamic> json) { return UpdateSipCredentialListRequest(
  friendlyName: json['FriendlyName'] as String,
); }

/// A human readable descriptive text for a CredentialList, up to 64 characters long.
final String friendlyName;

Map<String, dynamic> toJson() { return {
  'FriendlyName': friendlyName,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('FriendlyName') && json['FriendlyName'] is String; } 
UpdateSipCredentialListRequest copyWith({String? friendlyName}) { return UpdateSipCredentialListRequest(
  friendlyName: friendlyName ?? this.friendlyName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UpdateSipCredentialListRequest &&
          friendlyName == other.friendlyName; } 
@override int get hashCode { return friendlyName.hashCode; } 
@override String toString() { return 'UpdateSipCredentialListRequest(friendlyName: $friendlyName)'; } 
 }
