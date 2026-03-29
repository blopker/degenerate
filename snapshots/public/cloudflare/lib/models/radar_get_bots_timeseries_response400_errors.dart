// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetBotsTimeseriesResponse400Errors {const RadarGetBotsTimeseriesResponse400Errors({required this.message});

factory RadarGetBotsTimeseriesResponse400Errors.fromJson(Map<String, dynamic> json) { return RadarGetBotsTimeseriesResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
RadarGetBotsTimeseriesResponse400Errors copyWith({String? message}) { return RadarGetBotsTimeseriesResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetBotsTimeseriesResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'RadarGetBotsTimeseriesResponse400Errors(message: $message)'; } 
 }
