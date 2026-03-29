// GENERATED CODE - DO NOT MODIFY BY HAND

final class AbuseReportsErrorMessage {const AbuseReportsErrorMessage({this.code, required this.message, });

factory AbuseReportsErrorMessage.fromJson(Map<String, dynamic> json) { return AbuseReportsErrorMessage(
  code: json['code'],
  message: json['message'] as String,
); }

/// One of: String, double
final dynamic code;

final String message;

Map<String, dynamic> toJson() { return {
  'code': ?code,
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
AbuseReportsErrorMessage copyWith({dynamic Function()? code, String? message, }) { return AbuseReportsErrorMessage(
  code: code != null ? code() : this.code,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AbuseReportsErrorMessage &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'AbuseReportsErrorMessage(code: $code, message: $message)'; } 
 }
