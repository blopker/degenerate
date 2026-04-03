// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AppsDeleteTokenRequest {const AppsDeleteTokenRequest({required this.accessToken});

factory AppsDeleteTokenRequest.fromJson(Map<String, dynamic> json) { return AppsDeleteTokenRequest(
  accessToken: json['access_token'] as String,
); }

/// The OAuth access token used to authenticate to the GitHub API.
final String accessToken;

Map<String, dynamic> toJson() { return {
  'access_token': accessToken,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('access_token') && json['access_token'] is String; } 
AppsDeleteTokenRequest copyWith({String? accessToken}) { return AppsDeleteTokenRequest(
  accessToken: accessToken ?? this.accessToken,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AppsDeleteTokenRequest &&
          accessToken == other.accessToken; } 
@override int get hashCode { return accessToken.hashCode; } 
@override String toString() { return 'AppsDeleteTokenRequest(accessToken: $accessToken)'; } 
 }
