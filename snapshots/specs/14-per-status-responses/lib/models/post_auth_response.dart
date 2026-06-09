// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAuthResponse {const PostAuthResponse({required this.accessToken});

factory PostAuthResponse.fromJson(Map<String, dynamic> json) { return PostAuthResponse(
  accessToken: json['accessToken'] as String,
); }

final String accessToken;

Map<String, dynamic> toJson() { return {
  'accessToken': accessToken,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('accessToken') && json['accessToken'] is String; } 
PostAuthResponse copyWith({String? accessToken}) { return PostAuthResponse(
  accessToken: accessToken ?? this.accessToken,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAuthResponse &&
          accessToken == other.accessToken; } 
@override int get hashCode { return accessToken.hashCode; } 
@override String toString() { return 'PostAuthResponse(accessToken: $accessToken)'; } 
 }
