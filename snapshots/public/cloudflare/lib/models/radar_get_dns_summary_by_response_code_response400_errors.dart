// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetDnsSummaryByResponseCodeResponse400Errors {const RadarGetDnsSummaryByResponseCodeResponse400Errors({required this.message});

factory RadarGetDnsSummaryByResponseCodeResponse400Errors.fromJson(Map<String, dynamic> json) { return RadarGetDnsSummaryByResponseCodeResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
RadarGetDnsSummaryByResponseCodeResponse400Errors copyWith({String? message}) { return RadarGetDnsSummaryByResponseCodeResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsSummaryByResponseCodeResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'RadarGetDnsSummaryByResponseCodeResponse400Errors(message: $message)'; } 
 }
