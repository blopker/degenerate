// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';

@immutable
final class ErrorModel {
  const ErrorModel({
    required this.code,
    required this.message,
    this.isYourFault = true,
    this.error,
  });

  factory ErrorModel.fromJson(Map<String, dynamic> json) {
    return ErrorModel(
      code: json['code'] as String,
      message: json['message'] as String,
      isYourFault: json.containsKey('is_your_fault')
          ? json['is_your_fault'] as bool
          : true,
      error: json['error'] != null
          ? ErrorModel.fromJson(json['error'] as Map<String, dynamic>)
          : null,
    );
  }

  final String code;

  final String message;

  final bool isYourFault;

  final ErrorModel? error;

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'message': message,
      'is_your_fault': isYourFault,
      if (error != null) 'error': error?.toJson(),
    };
  }

  static bool canParse(Map<String, dynamic> json) {
    return json.containsKey('code') &&
        json['code'] is String &&
        json.containsKey('message') &&
        json['message'] is String;
  }

  ErrorModel copyWith({
    String? code,
    String? message,
    bool Function()? isYourFault,
    ErrorModel Function()? error,
  }) {
    return ErrorModel(
      code: code ?? this.code,
      message: message ?? this.message,
      isYourFault: isYourFault != null ? isYourFault() : this.isYourFault,
      error: error != null ? error() : this.error,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is ErrorModel &&
            code == other.code &&
            message == other.message &&
            isYourFault == other.isYourFault &&
            error == other.error;
  }

  @override
  int get hashCode {
    return Object.hash(code, message, isYourFault, error);
  }

  @override
  String toString() {
    return 'ErrorModel(code: $code, message: $message, isYourFault: $isYourFault, error: $error)';
  }
}
