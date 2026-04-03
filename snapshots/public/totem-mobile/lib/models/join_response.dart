// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';

/// Token for connecting to a LiveKit room.
@immutable
final class JoinResponse {
  const JoinResponse({required this.token, required this.isAlreadyPresent});

  factory JoinResponse.fromJson(Map<String, dynamic> json) {
    return JoinResponse(
      token: json['token'] as String,
      isAlreadyPresent: json['is_already_present'] as bool,
    );
  }

  final String token;

  final bool isAlreadyPresent;

  Map<String, dynamic> toJson() {
    return {'token': token, 'is_already_present': isAlreadyPresent};
  }

  static bool canParse(Map<String, dynamic> json) {
    return json.containsKey('token') &&
        json['token'] is String &&
        json.containsKey('is_already_present') &&
        json['is_already_present'] is bool;
  }

  JoinResponse copyWith({String? token, bool? isAlreadyPresent}) {
    return JoinResponse(
      token: token ?? this.token,
      isAlreadyPresent: isAlreadyPresent ?? this.isAlreadyPresent,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is JoinResponse &&
            token == other.token &&
            isAlreadyPresent == other.isAlreadyPresent;
  }

  @override
  int get hashCode {
    return Object.hash(token, isAlreadyPresent);
  }

  @override
  String toString() {
    return 'JoinResponse(token: $token, isAlreadyPresent: $isAlreadyPresent)';
  }
}
