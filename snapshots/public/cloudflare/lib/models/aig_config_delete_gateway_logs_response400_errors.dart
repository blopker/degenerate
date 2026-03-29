// GENERATED CODE - DO NOT MODIFY BY HAND

final class AigConfigDeleteGatewayLogsResponse400Errors {const AigConfigDeleteGatewayLogsResponse400Errors({required this.message});

factory AigConfigDeleteGatewayLogsResponse400Errors.fromJson(Map<String, dynamic> json) { return AigConfigDeleteGatewayLogsResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
AigConfigDeleteGatewayLogsResponse400Errors copyWith({String? message}) { return AigConfigDeleteGatewayLogsResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigDeleteGatewayLogsResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'AigConfigDeleteGatewayLogsResponse400Errors(message: $message)'; } 
 }
