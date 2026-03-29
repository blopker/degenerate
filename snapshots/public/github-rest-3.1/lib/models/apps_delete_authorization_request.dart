// GENERATED CODE - DO NOT MODIFY BY HAND

final class AppsDeleteAuthorizationRequest {const AppsDeleteAuthorizationRequest({required this.accessToken});

factory AppsDeleteAuthorizationRequest.fromJson(Map<String, dynamic> json) { return AppsDeleteAuthorizationRequest(
  accessToken: json['access_token'] as String,
); }

/// The OAuth access token used to authenticate to the GitHub API.
final String accessToken;

Map<String, dynamic> toJson() { return {
  'access_token': accessToken,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('access_token') && json['access_token'] is String; } 
AppsDeleteAuthorizationRequest copyWith({String? accessToken}) { return AppsDeleteAuthorizationRequest(
  accessToken: accessToken ?? this.accessToken,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AppsDeleteAuthorizationRequest &&
          accessToken == other.accessToken; } 
@override int get hashCode { return accessToken.hashCode; } 
@override String toString() { return 'AppsDeleteAuthorizationRequest(accessToken: $accessToken)'; } 
 }
