// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpTimeseriesGroupResponse400Errors {const RadarGetHttpTimeseriesGroupResponse400Errors({required this.message});

factory RadarGetHttpTimeseriesGroupResponse400Errors.fromJson(Map<String, dynamic> json) { return RadarGetHttpTimeseriesGroupResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
RadarGetHttpTimeseriesGroupResponse400Errors copyWith({String? message}) { return RadarGetHttpTimeseriesGroupResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpTimeseriesGroupResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'RadarGetHttpTimeseriesGroupResponse400Errors(message: $message)'; } 
 }
