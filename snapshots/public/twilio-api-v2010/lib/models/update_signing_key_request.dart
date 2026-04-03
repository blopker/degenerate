// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class UpdateSigningKeyRequest {const UpdateSigningKeyRequest({this.friendlyName});

factory UpdateSigningKeyRequest.fromJson(Map<String, dynamic> json) { return UpdateSigningKeyRequest(
  friendlyName: json['FriendlyName'] as String?,
); }

/// 
final String? friendlyName;

Map<String, dynamic> toJson() { return {
  'FriendlyName': ?friendlyName,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'FriendlyName'}.contains(key)); } 
UpdateSigningKeyRequest copyWith({String Function()? friendlyName}) { return UpdateSigningKeyRequest(
  friendlyName: friendlyName != null ? friendlyName() : this.friendlyName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UpdateSigningKeyRequest &&
          friendlyName == other.friendlyName; } 
@override int get hashCode { return friendlyName.hashCode; } 
@override String toString() { return 'UpdateSigningKeyRequest(friendlyName: $friendlyName)'; } 
 }
