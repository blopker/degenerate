// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CreateSipIpAccessControlListRequest {const CreateSipIpAccessControlListRequest({required this.friendlyName});

factory CreateSipIpAccessControlListRequest.fromJson(Map<String, dynamic> json) { return CreateSipIpAccessControlListRequest(
  friendlyName: json['FriendlyName'] as String,
); }

/// A human readable descriptive text that describes the IpAccessControlList, up to 255 characters long.
final String friendlyName;

Map<String, dynamic> toJson() { return {
  'FriendlyName': friendlyName,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('FriendlyName') && json['FriendlyName'] is String; } 
CreateSipIpAccessControlListRequest copyWith({String? friendlyName}) { return CreateSipIpAccessControlListRequest(
  friendlyName: friendlyName ?? this.friendlyName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateSipIpAccessControlListRequest &&
          friendlyName == other.friendlyName; } 
@override int get hashCode { return friendlyName.hashCode; } 
@override String toString() { return 'CreateSipIpAccessControlListRequest(friendlyName: $friendlyName)'; } 
 }
