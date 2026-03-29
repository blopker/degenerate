// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'fetch_gateways_response404_errors.dart';final class FetchGatewaysResponse404 {const FetchGatewaysResponse404({required this.errors, required this.success, });

factory FetchGatewaysResponse404.fromJson(Map<String, dynamic> json) { return FetchGatewaysResponse404(
  errors: (json['errors'] as List<dynamic>).map((e) => FetchGatewaysResponse404Errors.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final List<FetchGatewaysResponse404Errors> errors;

final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('success') && json['success'] is bool; } 
FetchGatewaysResponse404 copyWith({List<FetchGatewaysResponse404Errors>? errors, bool? success, }) { return FetchGatewaysResponse404(
  errors: errors ?? this.errors,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FetchGatewaysResponse404 &&
          listEquals(errors, other.errors) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), success); } 
@override String toString() { return 'FetchGatewaysResponse404(errors: $errors, success: $success)'; } 
 }
