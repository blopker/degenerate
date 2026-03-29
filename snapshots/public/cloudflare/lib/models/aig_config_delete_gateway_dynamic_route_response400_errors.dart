// GENERATED CODE - DO NOT MODIFY BY HAND

final class AigConfigDeleteGatewayDynamicRouteResponse400Errors {const AigConfigDeleteGatewayDynamicRouteResponse400Errors({required this.message});

factory AigConfigDeleteGatewayDynamicRouteResponse400Errors.fromJson(Map<String, dynamic> json) { return AigConfigDeleteGatewayDynamicRouteResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
AigConfigDeleteGatewayDynamicRouteResponse400Errors copyWith({String? message}) { return AigConfigDeleteGatewayDynamicRouteResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigDeleteGatewayDynamicRouteResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'AigConfigDeleteGatewayDynamicRouteResponse400Errors(message: $message)'; } 
 }
