// GENERATED CODE - DO NOT MODIFY BY HAND

final class TokenParams {const TokenParams({required this.token});

factory TokenParams.fromJson(Map<String, dynamic> json) { return TokenParams(
  token: json['token'] as String,
); }

final String token;

Map<String, dynamic> toJson() { return {
  'token': token,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('token') && json['token'] is String; } 
TokenParams copyWith({String? token}) { return TokenParams(
  token: token ?? this.token,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TokenParams &&
          token == other.token; } 
@override int get hashCode { return token.hashCode; } 
@override String toString() { return 'TokenParams(token: $token)'; } 
 }
