// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'account_enum_status.dart';@immutable final class UpdateAccountRequest {const UpdateAccountRequest({this.friendlyName, this.status, });

factory UpdateAccountRequest.fromJson(Map<String, dynamic> json) { return UpdateAccountRequest(
  friendlyName: json['FriendlyName'] as String?,
  status: json['Status'] != null ? AccountEnumStatus.fromJson(json['Status'] as String) : null,
); }

/// Update the human-readable description of this Account
final String? friendlyName;

/// The status of this account. Usually `active`, but can be `suspended` or `closed`.
final AccountEnumStatus? status;

Map<String, dynamic> toJson() { return {
  'FriendlyName': ?friendlyName,
  if (status != null) 'Status': status?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'FriendlyName', 'Status'}.contains(key)); } 
UpdateAccountRequest copyWith({String Function()? friendlyName, AccountEnumStatus Function()? status, }) { return UpdateAccountRequest(
  friendlyName: friendlyName != null ? friendlyName() : this.friendlyName,
  status: status != null ? status() : this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UpdateAccountRequest &&
          friendlyName == other.friendlyName &&
          status == other.status; } 
@override int get hashCode { return Object.hash(friendlyName, status); } 
@override String toString() { return 'UpdateAccountRequest(friendlyName: $friendlyName, status: $status)'; } 
 }
