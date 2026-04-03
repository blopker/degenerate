// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'r2_data_catalog_table_maintenance_config.dart';import 'response_errors3.dart';import 'response_messages2.dart';import 'response_success.dart';@immutable final class UpdateTableMaintenanceConfigResponse {const UpdateTableMaintenanceConfigResponse({required this.errors, required this.messages, required this.success, this.result, });

factory UpdateTableMaintenanceConfigResponse.fromJson(Map<String, dynamic> json) { return UpdateTableMaintenanceConfigResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => ResponseErrors3.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => ResponseMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: ResponseSuccess.fromJson(json['success'] as bool),
  result: json['result'] != null ? R2DataCatalogTableMaintenanceConfig.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

/// Contains errors if the API call was unsuccessful.
final List<ResponseErrors3> errors;

/// Contains informational messages.
final List<ResponseMessages2> messages;

/// Indicates whether the API call was successful.
final ResponseSuccess success;

final R2DataCatalogTableMaintenanceConfig? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success.toJson(),
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success'); } 
UpdateTableMaintenanceConfigResponse copyWith({List<ResponseErrors3>? errors, List<ResponseMessages2>? messages, ResponseSuccess? success, R2DataCatalogTableMaintenanceConfig Function()? result, }) { return UpdateTableMaintenanceConfigResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UpdateTableMaintenanceConfigResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'UpdateTableMaintenanceConfigResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
