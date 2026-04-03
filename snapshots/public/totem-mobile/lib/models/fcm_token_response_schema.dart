// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';

@immutable
final class FcmTokenResponseSchema {
  const FcmTokenResponseSchema({
    required this.token,
    required this.active,
    required this.createdAt,
  });

  factory FcmTokenResponseSchema.fromJson(Map<String, dynamic> json) {
    return FcmTokenResponseSchema(
      token: json['token'] as String,
      active: json['active'] as bool,
      createdAt: DateTime.parse(json['created_at'] as String),
    );
  }

  final String token;

  final bool active;

  final DateTime createdAt;

  Map<String, dynamic> toJson() {
    return {
      'token': token,
      'active': active,
      'created_at': createdAt.toIso8601String(),
    };
  }

  static bool canParse(Map<String, dynamic> json) {
    return json.containsKey('token') &&
        json['token'] is String &&
        json.containsKey('active') &&
        json['active'] is bool &&
        json.containsKey('created_at') &&
        json['created_at'] is String;
  }

  FcmTokenResponseSchema copyWith({
    String? token,
    bool? active,
    DateTime? createdAt,
  }) {
    return FcmTokenResponseSchema(
      token: token ?? this.token,
      active: active ?? this.active,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is FcmTokenResponseSchema &&
            token == other.token &&
            active == other.active &&
            createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    return Object.hash(token, active, createdAt);
  }

  @override
  String toString() {
    return 'FcmTokenResponseSchema(token: $token, active: $active, createdAt: $createdAt)';
  }
}
