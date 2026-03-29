// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_update_providers_response404_errors.dart';final class AigConfigUpdateProvidersResponse404 {const AigConfigUpdateProvidersResponse404({required this.errors, required this.success, });

factory AigConfigUpdateProvidersResponse404.fromJson(Map<String, dynamic> json) { return AigConfigUpdateProvidersResponse404(
  errors: (json['errors'] as List<dynamic>).map((e) => AigConfigUpdateProvidersResponse404Errors.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final List<AigConfigUpdateProvidersResponse404Errors> errors;

final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('success') && json['success'] is bool; } 
AigConfigUpdateProvidersResponse404 copyWith({List<AigConfigUpdateProvidersResponse404Errors>? errors, bool? success, }) { return AigConfigUpdateProvidersResponse404(
  errors: errors ?? this.errors,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigUpdateProvidersResponse404 &&
          listEquals(errors, other.errors) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), success); } 
@override String toString() { return 'AigConfigUpdateProvidersResponse404(errors: $errors, success: $success)'; } 
 }
