// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AigConfigGetGatewayDynamicRouteVersionResponse400Errors {const AigConfigGetGatewayDynamicRouteVersionResponse400Errors({required this.message});

factory AigConfigGetGatewayDynamicRouteVersionResponse400Errors.fromJson(Map<String, dynamic> json) { return AigConfigGetGatewayDynamicRouteVersionResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
AigConfigGetGatewayDynamicRouteVersionResponse400Errors copyWith({String? message}) { return AigConfigGetGatewayDynamicRouteVersionResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigGetGatewayDynamicRouteVersionResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'AigConfigGetGatewayDynamicRouteVersionResponse400Errors(message: $message)'; } 
 }
