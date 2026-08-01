// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';

@immutable
final class SessionFeedbackOptions {
  const SessionFeedbackOptions._(this.value);

  factory SessionFeedbackOptions.fromJson(String json) {
    return switch (json) {
      'up' => up,
      'down' => down,
      _ => SessionFeedbackOptions._(json),
    };
  }

  static const SessionFeedbackOptions up = SessionFeedbackOptions._('up');

  static const SessionFeedbackOptions down = SessionFeedbackOptions._('down');

  static const List<SessionFeedbackOptions> values = [up, down];

  final String value;

  String toJson() {
    return value;
  }

  /// Whether this value is unknown (not defined in the OpenAPI spec).
  bool get isUnknown {
    return !values.contains(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is SessionFeedbackOptions && other.value == value;
  }

  @override
  int get hashCode {
    return value.hashCode;
  }

  @override
  String toString() {
    return 'SessionFeedbackOptions($value)';
  }
}

@immutable
final class SessionFeedbackSchema {
  const SessionFeedbackSchema({
    required this.feedback,
    this.message = const Omittable.absent(),
  });

  factory SessionFeedbackSchema.fromJson(Map<String, dynamic> json) {
    return SessionFeedbackSchema(
      feedback: SessionFeedbackOptions.fromJson(json['feedback'] as String),
      message: json.containsKey('message')
          ? Omittable(json['message'] as String?)
          : const Omittable.absent(),
    );
  }

  final SessionFeedbackOptions feedback;

  final Omittable<String?> message;

  Map<String, dynamic> toJson() {
    return {
      'feedback': feedback.toJson(),
      if (message.isPresent) 'message': message.value,
    };
  }

  static bool canParse(Map<String, dynamic> json) {
    return json.containsKey('feedback');
  }

  SessionFeedbackSchema copyWith({
    SessionFeedbackOptions? feedback,
    Omittable<String?>? message,
  }) {
    return SessionFeedbackSchema(
      feedback: feedback ?? this.feedback,
      message: message ?? this.message,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is SessionFeedbackSchema &&
            feedback == other.feedback &&
            message == other.message;
  }

  @override
  int get hashCode {
    return Object.hash(feedback, message);
  }

  @override
  String toString() {
    return 'SessionFeedbackSchema(feedback: $feedback, message: $message)';
  }
}
