// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class UpdateSipIpAccessControlListRequest {const UpdateSipIpAccessControlListRequest({required this.friendlyName});

factory UpdateSipIpAccessControlListRequest.fromJson(Map<String, dynamic> json) { return UpdateSipIpAccessControlListRequest(
  friendlyName: json['FriendlyName'] as String,
); }

/// A human readable descriptive text, up to 255 characters long.
final String friendlyName;

Map<String, dynamic> toJson() { return {
  'FriendlyName': friendlyName,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('FriendlyName') && json['FriendlyName'] is String; } 
UpdateSipIpAccessControlListRequest copyWith({String? friendlyName}) { return UpdateSipIpAccessControlListRequest(
  friendlyName: friendlyName ?? this.friendlyName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UpdateSipIpAccessControlListRequest &&
          friendlyName == other.friendlyName; } 
@override int get hashCode { return friendlyName.hashCode; } 
@override String toString() { return 'UpdateSipIpAccessControlListRequest(friendlyName: $friendlyName)'; } 
 }
