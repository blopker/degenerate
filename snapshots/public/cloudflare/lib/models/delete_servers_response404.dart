// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'delete_servers_response404_errors.dart';@immutable final class DeleteServersResponse404 {const DeleteServersResponse404({required this.errors, required this.success, });

factory DeleteServersResponse404.fromJson(Map<String, dynamic> json) { return DeleteServersResponse404(
  errors: (json['errors'] as List<dynamic>).map((e) => DeleteServersResponse404Errors.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final List<DeleteServersResponse404Errors> errors;

final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('success') && json['success'] is bool; } 
DeleteServersResponse404 copyWith({List<DeleteServersResponse404Errors>? errors, bool? success, }) { return DeleteServersResponse404(
  errors: errors ?? this.errors,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeleteServersResponse404 &&
          listEquals(errors, other.errors) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), success); } 
@override String toString() { return 'DeleteServersResponse404(errors: $errors, success: $success)'; } 
 }
