// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_get_gateway_log_request_response404_errors.dart';@immutable final class AigConfigGetGatewayLogRequestResponse404 {const AigConfigGetGatewayLogRequestResponse404({required this.errors, required this.success, });

factory AigConfigGetGatewayLogRequestResponse404.fromJson(Map<String, dynamic> json) { return AigConfigGetGatewayLogRequestResponse404(
  errors: (json['errors'] as List<dynamic>).map((e) => AigConfigGetGatewayLogRequestResponse404Errors.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final List<AigConfigGetGatewayLogRequestResponse404Errors> errors;

final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('success') && json['success'] is bool; } 
AigConfigGetGatewayLogRequestResponse404 copyWith({List<AigConfigGetGatewayLogRequestResponse404Errors>? errors, bool? success, }) { return AigConfigGetGatewayLogRequestResponse404(
  errors: errors ?? this.errors,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigGetGatewayLogRequestResponse404 &&
          listEquals(errors, other.errors) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), success); } 
@override String toString() { return 'AigConfigGetGatewayLogRequestResponse404(errors: $errors, success: $success)'; } 
 }
