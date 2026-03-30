// GENERATED CODE - DO NOT MODIFY BY HAND

final class FeedbackSchema {
  const FeedbackSchema({required this.message});

  factory FeedbackSchema.fromJson(Map<String, dynamic> json) {
    return FeedbackSchema(message: json['message'] as String);
  }

  final String message;

  Map<String, dynamic> toJson() {
    return {'message': message};
  }

  static bool canParse(Map<String, dynamic> json) {
    return json.containsKey('message') && json['message'] is String;
  }

  FeedbackSchema copyWith({String? message}) {
    return FeedbackSchema(message: message ?? this.message);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is FeedbackSchema && message == other.message;
  }

  @override
  int get hashCode {
    return message.hashCode;
  }

  @override
  String toString() {
    return 'FeedbackSchema(message: $message)';
  }
}
