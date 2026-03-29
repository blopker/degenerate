// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetCertificateAuthoritiesResponse400Errors {const RadarGetCertificateAuthoritiesResponse400Errors({required this.message});

factory RadarGetCertificateAuthoritiesResponse400Errors.fromJson(Map<String, dynamic> json) { return RadarGetCertificateAuthoritiesResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
RadarGetCertificateAuthoritiesResponse400Errors copyWith({String? message}) { return RadarGetCertificateAuthoritiesResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetCertificateAuthoritiesResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'RadarGetCertificateAuthoritiesResponse400Errors(message: $message)'; } 
 }
