// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetOriginPostQuantumTimeseriesGroupsResponse400Errors {const RadarGetOriginPostQuantumTimeseriesGroupsResponse400Errors({required this.message});

factory RadarGetOriginPostQuantumTimeseriesGroupsResponse400Errors.fromJson(Map<String, dynamic> json) { return RadarGetOriginPostQuantumTimeseriesGroupsResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
RadarGetOriginPostQuantumTimeseriesGroupsResponse400Errors copyWith({String? message}) { return RadarGetOriginPostQuantumTimeseriesGroupsResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetOriginPostQuantumTimeseriesGroupsResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'RadarGetOriginPostQuantumTimeseriesGroupsResponse400Errors(message: $message)'; } 
 }
