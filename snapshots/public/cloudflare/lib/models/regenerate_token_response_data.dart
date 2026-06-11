// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RegenerateTokenResponseData {const RegenerateTokenResponseData({required this.token});

factory RegenerateTokenResponseData.fromJson(Map<String, dynamic> json) { return RegenerateTokenResponseData(
  token: json['token'] as String,
); }

/// Regenerated participant's authentication token.
final String token;

Map<String, dynamic> toJson() { return {
  'token': token,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('token') && json['token'] is String; } 
RegenerateTokenResponseData copyWith({String? token}) { return RegenerateTokenResponseData(
  token: token ?? this.token,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RegenerateTokenResponseData &&
          token == other.token; } 
@override int get hashCode { return token.hashCode; } 
@override String toString() { return 'RegenerateTokenResponseData(token: $token)'; } 
 }
