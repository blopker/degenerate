// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpSummaryByDeviceTypeResponse400Errors {const RadarGetHttpSummaryByDeviceTypeResponse400Errors({required this.message});

factory RadarGetHttpSummaryByDeviceTypeResponse400Errors.fromJson(Map<String, dynamic> json) { return RadarGetHttpSummaryByDeviceTypeResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
RadarGetHttpSummaryByDeviceTypeResponse400Errors copyWith({String? message}) { return RadarGetHttpSummaryByDeviceTypeResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpSummaryByDeviceTypeResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'RadarGetHttpSummaryByDeviceTypeResponse400Errors(message: $message)'; } 
 }
