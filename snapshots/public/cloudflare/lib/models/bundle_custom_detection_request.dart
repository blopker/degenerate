// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Defines a custom set of username/password expressions to match Leaked Credential Checks on.
@immutable final class BundleCustomDetectionRequest {const BundleCustomDetectionRequest({this.password, this.username, });

factory BundleCustomDetectionRequest.fromJson(Map<String, dynamic> json) { return BundleCustomDetectionRequest(
  password: json['password'] as String?,
  username: json['username'] as String?,
); }

/// Defines ehe ruleset expression to use in matching the password in a request.
final String? password;

/// Defines the ruleset expression to use in matching the username in a request.
final String? username;

Map<String, dynamic> toJson() { return {
  'password': ?password,
  'username': ?username,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'password', 'username'}.contains(key)); } 
BundleCustomDetectionRequest copyWith({String? Function()? password, String? Function()? username, }) { return BundleCustomDetectionRequest(
  password: password != null ? password() : this.password,
  username: username != null ? username() : this.username,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BundleCustomDetectionRequest &&
          password == other.password &&
          username == other.username; } 
@override int get hashCode { return Object.hash(password, username); } 
@override String toString() { return 'BundleCustomDetectionRequest(password: $password, username: $username)'; } 
 }
