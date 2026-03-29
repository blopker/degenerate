// GENERATED CODE - DO NOT MODIFY BY HAND

final class PatchEventQueryUpdateResponse400Errors {const PatchEventQueryUpdateResponse400Errors({required this.message});

factory PatchEventQueryUpdateResponse400Errors.fromJson(Map<String, dynamic> json) { return PatchEventQueryUpdateResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
PatchEventQueryUpdateResponse400Errors copyWith({String? message}) { return PatchEventQueryUpdateResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PatchEventQueryUpdateResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'PatchEventQueryUpdateResponse400Errors(message: $message)'; } 
 }
