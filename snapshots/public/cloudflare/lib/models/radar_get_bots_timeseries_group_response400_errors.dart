// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetBotsTimeseriesGroupResponse400Errors {const RadarGetBotsTimeseriesGroupResponse400Errors({required this.message});

factory RadarGetBotsTimeseriesGroupResponse400Errors.fromJson(Map<String, dynamic> json) { return RadarGetBotsTimeseriesGroupResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
RadarGetBotsTimeseriesGroupResponse400Errors copyWith({String? message}) { return RadarGetBotsTimeseriesGroupResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetBotsTimeseriesGroupResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'RadarGetBotsTimeseriesGroupResponse400Errors(message: $message)'; } 
 }
