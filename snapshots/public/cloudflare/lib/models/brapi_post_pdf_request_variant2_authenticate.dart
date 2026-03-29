// GENERATED CODE - DO NOT MODIFY BY HAND

/// Provide credentials for HTTP authentication.
final class BrapiPostPdfRequestVariant2Authenticate {const BrapiPostPdfRequestVariant2Authenticate({required this.password, required this.username, });

factory BrapiPostPdfRequestVariant2Authenticate.fromJson(Map<String, dynamic> json) { return BrapiPostPdfRequestVariant2Authenticate(
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
BrapiPostPdfRequestVariant2Authenticate copyWith({String? password, String? username, }) { return BrapiPostPdfRequestVariant2Authenticate(
  password: password ?? this.password,
  username: username ?? this.username,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BrapiPostPdfRequestVariant2Authenticate &&
          password == other.password &&
          username == other.username; } 
@override int get hashCode { return Object.hash(password, username); } 
@override String toString() { return 'BrapiPostPdfRequestVariant2Authenticate(password: $password, username: $username)'; } 
 }
