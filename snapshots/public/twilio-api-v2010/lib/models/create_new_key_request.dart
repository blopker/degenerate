// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CreateNewKeyRequest {const CreateNewKeyRequest({this.friendlyName});

factory CreateNewKeyRequest.fromJson(Map<String, dynamic> json) { return CreateNewKeyRequest(
  friendlyName: json['FriendlyName'] as String?,
); }

/// A descriptive string that you create to describe the resource. It can be up to 64 characters long.
final String? friendlyName;

Map<String, dynamic> toJson() { return {
  'FriendlyName': ?friendlyName,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'FriendlyName'}.contains(key)); } 
CreateNewKeyRequest copyWith({String Function()? friendlyName}) { return CreateNewKeyRequest(
  friendlyName: friendlyName != null ? friendlyName() : this.friendlyName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateNewKeyRequest &&
          friendlyName == other.friendlyName; } 
@override int get hashCode { return friendlyName.hashCode; } 
@override String toString() { return 'CreateNewKeyRequest(friendlyName: $friendlyName)'; } 
 }
