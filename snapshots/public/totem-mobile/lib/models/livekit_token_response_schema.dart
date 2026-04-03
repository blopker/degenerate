// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';

@immutable
final class LivekitTokenResponseSchema {
  const LivekitTokenResponseSchema({required this.token});

  factory LivekitTokenResponseSchema.fromJson(Map<String, dynamic> json) {
    return LivekitTokenResponseSchema(token: json['token'] as String);
  }

  final String token;

  Map<String, dynamic> toJson() {
    return {'token': token};
  }

  static bool canParse(Map<String, dynamic> json) {
    return json.containsKey('token') && json['token'] is String;
  }

  LivekitTokenResponseSchema copyWith({String? token}) {
    return LivekitTokenResponseSchema(token: token ?? this.token);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is LivekitTokenResponseSchema && token == other.token;
  }

  @override
  int get hashCode {
    return token.hashCode;
  }

  @override
  String toString() {
    return 'LivekitTokenResponseSchema(token: $token)';
  }
}
