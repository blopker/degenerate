// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpTimeseriesGroupByIpVersionResponse400Errors {const RadarGetHttpTimeseriesGroupByIpVersionResponse400Errors({required this.message});

factory RadarGetHttpTimeseriesGroupByIpVersionResponse400Errors.fromJson(Map<String, dynamic> json) { return RadarGetHttpTimeseriesGroupByIpVersionResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
RadarGetHttpTimeseriesGroupByIpVersionResponse400Errors copyWith({String? message}) { return RadarGetHttpTimeseriesGroupByIpVersionResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpTimeseriesGroupByIpVersionResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'RadarGetHttpTimeseriesGroupByIpVersionResponse400Errors(message: $message)'; } 
 }
