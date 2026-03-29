// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetEmailRoutingSummaryResponse400Errors {const RadarGetEmailRoutingSummaryResponse400Errors({required this.message});

factory RadarGetEmailRoutingSummaryResponse400Errors.fromJson(Map<String, dynamic> json) { return RadarGetEmailRoutingSummaryResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
RadarGetEmailRoutingSummaryResponse400Errors copyWith({String? message}) { return RadarGetEmailRoutingSummaryResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailRoutingSummaryResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'RadarGetEmailRoutingSummaryResponse400Errors(message: $message)'; } 
 }
