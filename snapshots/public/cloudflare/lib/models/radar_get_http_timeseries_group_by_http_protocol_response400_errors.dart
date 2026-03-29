// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpTimeseriesGroupByHttpProtocolResponse400Errors {const RadarGetHttpTimeseriesGroupByHttpProtocolResponse400Errors({required this.message});

factory RadarGetHttpTimeseriesGroupByHttpProtocolResponse400Errors.fromJson(Map<String, dynamic> json) { return RadarGetHttpTimeseriesGroupByHttpProtocolResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
RadarGetHttpTimeseriesGroupByHttpProtocolResponse400Errors copyWith({String? message}) { return RadarGetHttpTimeseriesGroupByHttpProtocolResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpTimeseriesGroupByHttpProtocolResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'RadarGetHttpTimeseriesGroupByHttpProtocolResponse400Errors(message: $message)'; } 
 }
