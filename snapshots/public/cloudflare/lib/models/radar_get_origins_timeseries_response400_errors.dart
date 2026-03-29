// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetOriginsTimeseriesResponse400Errors {const RadarGetOriginsTimeseriesResponse400Errors({required this.message});

factory RadarGetOriginsTimeseriesResponse400Errors.fromJson(Map<String, dynamic> json) { return RadarGetOriginsTimeseriesResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
RadarGetOriginsTimeseriesResponse400Errors copyWith({String? message}) { return RadarGetOriginsTimeseriesResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetOriginsTimeseriesResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'RadarGetOriginsTimeseriesResponse400Errors(message: $message)'; } 
 }
