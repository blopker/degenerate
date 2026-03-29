// GENERATED CODE - DO NOT MODIFY BY HAND

/// Describes an API message.
final class SnippetsMessage {const SnippetsMessage({this.code, required this.message, });

factory SnippetsMessage.fromJson(Map<String, dynamic> json) { return SnippetsMessage(
  code: json['code'] != null ? (json['code'] as num).toInt() : null,
  message: json['message'] as String,
); }

/// Identify the message code.
final int? code;

/// Describes the message text.
final String message;

Map<String, dynamic> toJson() { return {
  'code': ?code,
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
SnippetsMessage copyWith({int Function()? code, String? message, }) { return SnippetsMessage(
  code: code != null ? code() : this.code,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SnippetsMessage &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'SnippetsMessage(code: $code, message: $message)'; } 
 }
