// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_delete_providers_response404_errors.dart';final class AigConfigDeleteProvidersResponse404 {const AigConfigDeleteProvidersResponse404({required this.errors, required this.success, });

factory AigConfigDeleteProvidersResponse404.fromJson(Map<String, dynamic> json) { return AigConfigDeleteProvidersResponse404(
  errors: (json['errors'] as List<dynamic>).map((e) => AigConfigDeleteProvidersResponse404Errors.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final List<AigConfigDeleteProvidersResponse404Errors> errors;

final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('success') && json['success'] is bool; } 
AigConfigDeleteProvidersResponse404 copyWith({List<AigConfigDeleteProvidersResponse404Errors>? errors, bool? success, }) { return AigConfigDeleteProvidersResponse404(
  errors: errors ?? this.errors,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigDeleteProvidersResponse404 &&
          listEquals(errors, other.errors) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), success); } 
@override String toString() { return 'AigConfigDeleteProvidersResponse404(errors: $errors, success: $success)'; } 
 }
