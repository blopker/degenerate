// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Provide credentials for HTTP authentication.
@immutable final class BrapiPostScrapeRequestVariant2Authenticate {const BrapiPostScrapeRequestVariant2Authenticate({required this.password, required this.username, });

factory BrapiPostScrapeRequestVariant2Authenticate.fromJson(Map<String, dynamic> json) { return BrapiPostScrapeRequestVariant2Authenticate(
  password: json['password'] as String,
  username: json['username'] as String,
); }

final String password;

final String username;

Map<String, dynamic> toJson() { return {
  'password': password,
  'username': username,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('password') && json['password'] is String &&
      json.containsKey('username') && json['username'] is String; } 
BrapiPostScrapeRequestVariant2Authenticate copyWith({String? password, String? username, }) { return BrapiPostScrapeRequestVariant2Authenticate(
  password: password ?? this.password,
  username: username ?? this.username,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BrapiPostScrapeRequestVariant2Authenticate &&
          password == other.password &&
          username == other.username; } 
@override int get hashCode { return Object.hash(password, username); } 
@override String toString() { return 'BrapiPostScrapeRequestVariant2Authenticate(password: $password, username: $username)'; } 
 }
