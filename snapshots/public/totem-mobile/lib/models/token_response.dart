// GENERATED CODE - DO NOT MODIFY BY HAND

final class TokenResponse {
  const TokenResponse({
    required this.accessToken,
    required this.refreshToken,
    required this.expiresIn,
  });

  factory TokenResponse.fromJson(Map<String, dynamic> json) {
    return TokenResponse(
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
      expiresIn: (json['expires_in'] as num).toInt(),
    );
  }

  final String accessToken;

  final String refreshToken;

  final int expiresIn;

  Map<String, dynamic> toJson() {
    return {
      'access_token': accessToken,
      'refresh_token': refreshToken,
      'expires_in': expiresIn,
    };
  }

  static bool canParse(Map<String, dynamic> json) {
    return json.containsKey('access_token') &&
        json['access_token'] is String &&
        json.containsKey('refresh_token') &&
        json['refresh_token'] is String &&
        json.containsKey('expires_in') &&
        json['expires_in'] is num;
  }

  TokenResponse copyWith({
    String? accessToken,
    String? refreshToken,
    int? expiresIn,
  }) {
    return TokenResponse(
      accessToken: accessToken ?? this.accessToken,
      refreshToken: refreshToken ?? this.refreshToken,
      expiresIn: expiresIn ?? this.expiresIn,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is TokenResponse &&
            accessToken == other.accessToken &&
            refreshToken == other.refreshToken &&
            expiresIn == other.expiresIn;
  }

  @override
  int get hashCode {
    return Object.hash(accessToken, refreshToken, expiresIn);
  }

  @override
  String toString() {
    return 'TokenResponse(accessToken: $accessToken, refreshToken: $refreshToken, expiresIn: $expiresIn)';
  }
}
