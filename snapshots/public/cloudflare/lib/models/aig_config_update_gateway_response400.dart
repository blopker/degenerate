// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_update_gateway_response400_errors.dart';@immutable final class AigConfigUpdateGatewayResponse400 {const AigConfigUpdateGatewayResponse400({required this.errors, required this.success, });

factory AigConfigUpdateGatewayResponse400.fromJson(Map<String, dynamic> json) { return AigConfigUpdateGatewayResponse400(
  errors: (json['errors'] as List<dynamic>).map((e) => AigConfigUpdateGatewayResponse400Errors.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final List<AigConfigUpdateGatewayResponse400Errors> errors;

final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('success') && json['success'] is bool; } 
AigConfigUpdateGatewayResponse400 copyWith({List<AigConfigUpdateGatewayResponse400Errors>? errors, bool? success, }) { return AigConfigUpdateGatewayResponse400(
  errors: errors ?? this.errors,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigUpdateGatewayResponse400 &&
          listEquals(errors, other.errors) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), success); } 
@override String toString() { return 'AigConfigUpdateGatewayResponse400(errors: $errors, success: $success)'; } 
 }
