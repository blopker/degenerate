// GENERATED CODE - DO NOT MODIFY BY HAND

final class ErrorResponse {
  const ErrorResponse({required this.error});

  factory ErrorResponse.fromJson(Map<String, dynamic> json) {
    return ErrorResponse(error: json['error'] as String);
  }

  final String error;

  Map<String, dynamic> toJson() {
    return {'error': error};
  }

  static bool canParse(Map<String, dynamic> json) {
    return json.containsKey('error') && json['error'] is String;
  }

  ErrorResponse copyWith({String? error}) {
    return ErrorResponse(error: error ?? this.error);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is ErrorResponse && error == other.error;
  }

  @override
  int get hashCode {
    return error.hashCode;
  }

  @override
  String toString() {
    return 'ErrorResponse(error: $error)';
  }
}
