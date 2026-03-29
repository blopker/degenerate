// GENERATED CODE - DO NOT MODIFY BY HAND

final class AigConfigListGatewayDynamicRouteDeploymentsResponse400Errors {const AigConfigListGatewayDynamicRouteDeploymentsResponse400Errors({required this.message});

factory AigConfigListGatewayDynamicRouteDeploymentsResponse400Errors.fromJson(Map<String, dynamic> json) { return AigConfigListGatewayDynamicRouteDeploymentsResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
AigConfigListGatewayDynamicRouteDeploymentsResponse400Errors copyWith({String? message}) { return AigConfigListGatewayDynamicRouteDeploymentsResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigListGatewayDynamicRouteDeploymentsResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'AigConfigListGatewayDynamicRouteDeploymentsResponse400Errors(message: $message)'; } 
 }
