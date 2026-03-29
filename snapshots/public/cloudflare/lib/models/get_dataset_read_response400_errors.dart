// GENERATED CODE - DO NOT MODIFY BY HAND

final class GetDatasetReadResponse400Errors {const GetDatasetReadResponse400Errors({required this.message});

factory GetDatasetReadResponse400Errors.fromJson(Map<String, dynamic> json) { return GetDatasetReadResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
GetDatasetReadResponse400Errors copyWith({String? message}) { return GetDatasetReadResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetDatasetReadResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'GetDatasetReadResponse400Errors(message: $message)'; } 
 }
