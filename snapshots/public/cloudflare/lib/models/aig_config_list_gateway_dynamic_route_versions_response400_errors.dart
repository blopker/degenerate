// GENERATED CODE - DO NOT MODIFY BY HAND

final class AigConfigListGatewayDynamicRouteVersionsResponse400Errors {const AigConfigListGatewayDynamicRouteVersionsResponse400Errors({required this.message});

factory AigConfigListGatewayDynamicRouteVersionsResponse400Errors.fromJson(Map<String, dynamic> json) { return AigConfigListGatewayDynamicRouteVersionsResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
AigConfigListGatewayDynamicRouteVersionsResponse400Errors copyWith({String? message}) { return AigConfigListGatewayDynamicRouteVersionsResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigListGatewayDynamicRouteVersionsResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'AigConfigListGatewayDynamicRouteVersionsResponse400Errors(message: $message)'; } 
 }
