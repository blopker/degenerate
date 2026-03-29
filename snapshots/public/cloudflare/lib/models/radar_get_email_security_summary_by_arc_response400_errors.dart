// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetEmailSecuritySummaryByArcResponse400Errors {const RadarGetEmailSecuritySummaryByArcResponse400Errors({required this.message});

factory RadarGetEmailSecuritySummaryByArcResponse400Errors.fromJson(Map<String, dynamic> json) { return RadarGetEmailSecuritySummaryByArcResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
RadarGetEmailSecuritySummaryByArcResponse400Errors copyWith({String? message}) { return RadarGetEmailSecuritySummaryByArcResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailSecuritySummaryByArcResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'RadarGetEmailSecuritySummaryByArcResponse400Errors(message: $message)'; } 
 }
