// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpSummaryResponse400Errors {const RadarGetHttpSummaryResponse400Errors({required this.message});

factory RadarGetHttpSummaryResponse400Errors.fromJson(Map<String, dynamic> json) { return RadarGetHttpSummaryResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
RadarGetHttpSummaryResponse400Errors copyWith({String? message}) { return RadarGetHttpSummaryResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpSummaryResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'RadarGetHttpSummaryResponse400Errors(message: $message)'; } 
 }
