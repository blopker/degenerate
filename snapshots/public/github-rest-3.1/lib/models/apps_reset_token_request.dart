// GENERATED CODE - DO NOT MODIFY BY HAND

final class AppsResetTokenRequest {const AppsResetTokenRequest({required this.accessToken});

factory AppsResetTokenRequest.fromJson(Map<String, dynamic> json) { return AppsResetTokenRequest(
  accessToken: json['access_token'] as String,
); }

/// The access_token of the OAuth or GitHub application.
final String accessToken;

Map<String, dynamic> toJson() { return {
  'access_token': accessToken,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('access_token') && json['access_token'] is String; } 
AppsResetTokenRequest copyWith({String? accessToken}) { return AppsResetTokenRequest(
  accessToken: accessToken ?? this.accessToken,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AppsResetTokenRequest &&
          accessToken == other.accessToken; } 
@override int get hashCode { return accessToken.hashCode; } 
@override String toString() { return 'AppsResetTokenRequest(accessToken: $accessToken)'; } 
 }
