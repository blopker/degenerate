// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAuthRequest {const PostAuthRequest({required this.username, required this.password, });

factory PostAuthRequest.fromJson(Map<String, dynamic> json) { return PostAuthRequest(
  username: json['username'] as String,
  password: json['password'] as String,
); }

final String username;

final String password;

Map<String, dynamic> toJson() { return {
  'username': username,
  'password': password,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('username') && json['username'] is String &&
      json.containsKey('password') && json['password'] is String; } 
PostAuthRequest copyWith({String? username, String? password, }) { return PostAuthRequest(
  username: username ?? this.username,
  password: password ?? this.password,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAuthRequest &&
          username == other.username &&
          password == other.password; } 
@override int get hashCode { return Object.hash(username, password); } 
@override String toString() { return 'PostAuthRequest(username: $username, password: $password)'; } 
 }
