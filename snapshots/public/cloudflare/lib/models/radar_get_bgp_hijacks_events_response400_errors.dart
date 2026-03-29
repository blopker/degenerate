// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetBgpHijacksEventsResponse400Errors {const RadarGetBgpHijacksEventsResponse400Errors({required this.message});

factory RadarGetBgpHijacksEventsResponse400Errors.fromJson(Map<String, dynamic> json) { return RadarGetBgpHijacksEventsResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
RadarGetBgpHijacksEventsResponse400Errors copyWith({String? message}) { return RadarGetBgpHijacksEventsResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetBgpHijacksEventsResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'RadarGetBgpHijacksEventsResponse400Errors(message: $message)'; } 
 }
