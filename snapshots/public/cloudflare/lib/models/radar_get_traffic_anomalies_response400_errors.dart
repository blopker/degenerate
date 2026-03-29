// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetTrafficAnomaliesResponse400Errors {const RadarGetTrafficAnomaliesResponse400Errors({required this.message});

factory RadarGetTrafficAnomaliesResponse400Errors.fromJson(Map<String, dynamic> json) { return RadarGetTrafficAnomaliesResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
RadarGetTrafficAnomaliesResponse400Errors copyWith({String? message}) { return RadarGetTrafficAnomaliesResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetTrafficAnomaliesResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'RadarGetTrafficAnomaliesResponse400Errors(message: $message)'; } 
 }
