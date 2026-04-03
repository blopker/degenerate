// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';

@immutable
final class ErrorResponseSchema {
  const ErrorResponseSchema({required this.error});

  factory ErrorResponseSchema.fromJson(Map<String, dynamic> json) {
    return ErrorResponseSchema(error: json['error'] as String);
  }

  final String error;

  Map<String, dynamic> toJson() {
    return {'error': error};
  }

  static bool canParse(Map<String, dynamic> json) {
    return json.containsKey('error') && json['error'] is String;
  }

  ErrorResponseSchema copyWith({String? error}) {
    return ErrorResponseSchema(error: error ?? this.error);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is ErrorResponseSchema && error == other.error;
  }

  @override
  int get hashCode {
    return error.hashCode;
  }

  @override
  String toString() {
    return 'ErrorResponseSchema(error: $error)';
  }
}
