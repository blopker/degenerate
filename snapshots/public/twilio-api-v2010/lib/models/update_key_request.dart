// GENERATED CODE - DO NOT MODIFY BY HAND

final class UpdateKeyRequest {const UpdateKeyRequest({this.friendlyName});

factory UpdateKeyRequest.fromJson(Map<String, dynamic> json) { return UpdateKeyRequest(
  friendlyName: json['FriendlyName'] as String?,
); }

/// A descriptive string that you create to describe the resource. It can be up to 64 characters long.
final String? friendlyName;

Map<String, dynamic> toJson() { return {
  'FriendlyName': ?friendlyName,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'FriendlyName'}.contains(key)); } 
UpdateKeyRequest copyWith({String Function()? friendlyName}) { return UpdateKeyRequest(
  friendlyName: friendlyName != null ? friendlyName() : this.friendlyName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UpdateKeyRequest &&
          friendlyName == other.friendlyName; } 
@override int get hashCode { return friendlyName.hashCode; } 
@override String toString() { return 'UpdateKeyRequest(friendlyName: $friendlyName)'; } 
 }
