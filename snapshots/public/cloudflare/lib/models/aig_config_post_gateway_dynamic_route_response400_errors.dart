// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AigConfigPostGatewayDynamicRouteResponse400Errors {const AigConfigPostGatewayDynamicRouteResponse400Errors({required this.message});

factory AigConfigPostGatewayDynamicRouteResponse400Errors.fromJson(Map<String, dynamic> json) { return AigConfigPostGatewayDynamicRouteResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
AigConfigPostGatewayDynamicRouteResponse400Errors copyWith({String? message}) { return AigConfigPostGatewayDynamicRouteResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigPostGatewayDynamicRouteResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteResponse400Errors(message: $message)'; } 
 }
