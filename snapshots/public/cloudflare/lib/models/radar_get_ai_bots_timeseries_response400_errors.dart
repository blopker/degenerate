// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetAiBotsTimeseriesResponse400Errors {const RadarGetAiBotsTimeseriesResponse400Errors({required this.message});

factory RadarGetAiBotsTimeseriesResponse400Errors.fromJson(Map<String, dynamic> json) { return RadarGetAiBotsTimeseriesResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
RadarGetAiBotsTimeseriesResponse400Errors copyWith({String? message}) { return RadarGetAiBotsTimeseriesResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAiBotsTimeseriesResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'RadarGetAiBotsTimeseriesResponse400Errors(message: $message)'; } 
 }
