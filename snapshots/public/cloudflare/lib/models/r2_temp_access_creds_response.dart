// GENERATED CODE - DO NOT MODIFY BY HAND

final class R2TempAccessCredsResponse {const R2TempAccessCredsResponse({this.accessKeyId, this.secretAccessKey, this.sessionToken, });

factory R2TempAccessCredsResponse.fromJson(Map<String, dynamic> json) { return R2TempAccessCredsResponse(
  accessKeyId: json['accessKeyId'] as String?,
  secretAccessKey: json['secretAccessKey'] as String?,
  sessionToken: json['sessionToken'] as String?,
); }

/// ID for new access key.
final String? accessKeyId;

/// Secret access key.
final String? secretAccessKey;

/// Security token.
final String? sessionToken;

Map<String, dynamic> toJson() { return {
  'accessKeyId': ?accessKeyId,
  'secretAccessKey': ?secretAccessKey,
  'sessionToken': ?sessionToken,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'accessKeyId', 'secretAccessKey', 'sessionToken'}.contains(key)); } 
R2TempAccessCredsResponse copyWith({String Function()? accessKeyId, String Function()? secretAccessKey, String Function()? sessionToken, }) { return R2TempAccessCredsResponse(
  accessKeyId: accessKeyId != null ? accessKeyId() : this.accessKeyId,
  secretAccessKey: secretAccessKey != null ? secretAccessKey() : this.secretAccessKey,
  sessionToken: sessionToken != null ? sessionToken() : this.sessionToken,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is R2TempAccessCredsResponse &&
          accessKeyId == other.accessKeyId &&
          secretAccessKey == other.secretAccessKey &&
          sessionToken == other.sessionToken; } 
@override int get hashCode { return Object.hash(accessKeyId, secretAccessKey, sessionToken); } 
@override String toString() { return 'R2TempAccessCredsResponse(accessKeyId: $accessKeyId, secretAccessKey: $secretAccessKey, sessionToken: $sessionToken)'; } 
 }
