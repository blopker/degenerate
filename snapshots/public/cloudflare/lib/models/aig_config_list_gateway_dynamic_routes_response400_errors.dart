// GENERATED CODE - DO NOT MODIFY BY HAND

final class AigConfigListGatewayDynamicRoutesResponse400Errors {const AigConfigListGatewayDynamicRoutesResponse400Errors({required this.message});

factory AigConfigListGatewayDynamicRoutesResponse400Errors.fromJson(Map<String, dynamic> json) { return AigConfigListGatewayDynamicRoutesResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
AigConfigListGatewayDynamicRoutesResponse400Errors copyWith({String? message}) { return AigConfigListGatewayDynamicRoutesResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigListGatewayDynamicRoutesResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'AigConfigListGatewayDynamicRoutesResponse400Errors(message: $message)'; } 
 }
