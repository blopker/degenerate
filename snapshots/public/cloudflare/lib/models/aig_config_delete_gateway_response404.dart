// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_delete_gateway_response404_errors.dart';final class AigConfigDeleteGatewayResponse404 {const AigConfigDeleteGatewayResponse404({required this.errors, required this.success, });

factory AigConfigDeleteGatewayResponse404.fromJson(Map<String, dynamic> json) { return AigConfigDeleteGatewayResponse404(
  errors: (json['errors'] as List<dynamic>).map((e) => AigConfigDeleteGatewayResponse404Errors.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final List<AigConfigDeleteGatewayResponse404Errors> errors;

final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('success') && json['success'] is bool; } 
AigConfigDeleteGatewayResponse404 copyWith({List<AigConfigDeleteGatewayResponse404Errors>? errors, bool? success, }) { return AigConfigDeleteGatewayResponse404(
  errors: errors ?? this.errors,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigDeleteGatewayResponse404 &&
          listEquals(errors, other.errors) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), success); } 
@override String toString() { return 'AigConfigDeleteGatewayResponse404(errors: $errors, success: $success)'; } 
 }
