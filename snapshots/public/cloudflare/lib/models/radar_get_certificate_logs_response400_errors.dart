// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetCertificateLogsResponse400Errors {const RadarGetCertificateLogsResponse400Errors({required this.message});

factory RadarGetCertificateLogsResponse400Errors.fromJson(Map<String, dynamic> json) { return RadarGetCertificateLogsResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
RadarGetCertificateLogsResponse400Errors copyWith({String? message}) { return RadarGetCertificateLogsResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetCertificateLogsResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'RadarGetCertificateLogsResponse400Errors(message: $message)'; } 
 }
