// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'update_servers_response404_errors.dart';@immutable final class UpdateServersResponse404 {const UpdateServersResponse404({required this.errors, required this.success, });

factory UpdateServersResponse404.fromJson(Map<String, dynamic> json) { return UpdateServersResponse404(
  errors: (json['errors'] as List<dynamic>).map((e) => UpdateServersResponse404Errors.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final List<UpdateServersResponse404Errors> errors;

final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('success') && json['success'] is bool; } 
UpdateServersResponse404 copyWith({List<UpdateServersResponse404Errors>? errors, bool? success, }) { return UpdateServersResponse404(
  errors: errors ?? this.errors,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UpdateServersResponse404 &&
          listEquals(errors, other.errors) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), success); } 
@override String toString() { return 'UpdateServersResponse404(errors: $errors, success: $success)'; } 
 }
