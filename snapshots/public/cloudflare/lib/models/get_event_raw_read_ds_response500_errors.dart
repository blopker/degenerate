// GENERATED CODE - DO NOT MODIFY BY HAND

final class GetEventRawReadDsResponse500Errors {const GetEventRawReadDsResponse500Errors({required this.message});

factory GetEventRawReadDsResponse500Errors.fromJson(Map<String, dynamic> json) { return GetEventRawReadDsResponse500Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
GetEventRawReadDsResponse500Errors copyWith({String? message}) { return GetEventRawReadDsResponse500Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetEventRawReadDsResponse500Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'GetEventRawReadDsResponse500Errors(message: $message)'; } 
 }
