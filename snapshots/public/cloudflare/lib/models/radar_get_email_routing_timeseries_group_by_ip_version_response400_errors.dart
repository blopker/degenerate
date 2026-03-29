// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetEmailRoutingTimeseriesGroupByIpVersionResponse400Errors {const RadarGetEmailRoutingTimeseriesGroupByIpVersionResponse400Errors({required this.message});

factory RadarGetEmailRoutingTimeseriesGroupByIpVersionResponse400Errors.fromJson(Map<String, dynamic> json) { return RadarGetEmailRoutingTimeseriesGroupByIpVersionResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
RadarGetEmailRoutingTimeseriesGroupByIpVersionResponse400Errors copyWith({String? message}) { return RadarGetEmailRoutingTimeseriesGroupByIpVersionResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailRoutingTimeseriesGroupByIpVersionResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'RadarGetEmailRoutingTimeseriesGroupByIpVersionResponse400Errors(message: $message)'; } 
 }
