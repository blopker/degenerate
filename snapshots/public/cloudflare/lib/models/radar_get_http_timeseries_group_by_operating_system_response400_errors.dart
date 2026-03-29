// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpTimeseriesGroupByOperatingSystemResponse400Errors {const RadarGetHttpTimeseriesGroupByOperatingSystemResponse400Errors({required this.message});

factory RadarGetHttpTimeseriesGroupByOperatingSystemResponse400Errors.fromJson(Map<String, dynamic> json) { return RadarGetHttpTimeseriesGroupByOperatingSystemResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
RadarGetHttpTimeseriesGroupByOperatingSystemResponse400Errors copyWith({String? message}) { return RadarGetHttpTimeseriesGroupByOperatingSystemResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpTimeseriesGroupByOperatingSystemResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'RadarGetHttpTimeseriesGroupByOperatingSystemResponse400Errors(message: $message)'; } 
 }
