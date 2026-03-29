// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetEmailSecurityTimeseriesGroupByArcResponse400Errors {const RadarGetEmailSecurityTimeseriesGroupByArcResponse400Errors({required this.message});

factory RadarGetEmailSecurityTimeseriesGroupByArcResponse400Errors.fromJson(Map<String, dynamic> json) { return RadarGetEmailSecurityTimeseriesGroupByArcResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
RadarGetEmailSecurityTimeseriesGroupByArcResponse400Errors copyWith({String? message}) { return RadarGetEmailSecurityTimeseriesGroupByArcResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailSecurityTimeseriesGroupByArcResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'RadarGetEmailSecurityTimeseriesGroupByArcResponse400Errors(message: $message)'; } 
 }
