// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetDnsSummaryByIpVersionResponse400Errors {const RadarGetDnsSummaryByIpVersionResponse400Errors({required this.message});

factory RadarGetDnsSummaryByIpVersionResponse400Errors.fromJson(Map<String, dynamic> json) { return RadarGetDnsSummaryByIpVersionResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
RadarGetDnsSummaryByIpVersionResponse400Errors copyWith({String? message}) { return RadarGetDnsSummaryByIpVersionResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsSummaryByIpVersionResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'RadarGetDnsSummaryByIpVersionResponse400Errors(message: $message)'; } 
 }
