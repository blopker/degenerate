// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mconn_admin_macros_provision_licensed_connector_result.dart';import 'mconn_coded_message.dart';@immutable final class MconnAdminMacrosProvisionLicensedConnectorResponse {const MconnAdminMacrosProvisionLicensedConnectorResponse({required this.messages, required this.success, required this.errors, required this.result, });

factory MconnAdminMacrosProvisionLicensedConnectorResponse.fromJson(Map<String, dynamic> json) { return MconnAdminMacrosProvisionLicensedConnectorResponse(
  messages: (json['messages'] as List<dynamic>).map((e) => MconnCodedMessage.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  errors: (json['errors'] as List<dynamic>).map((e) => MconnCodedMessage.fromJson(e as Map<String, dynamic>)).toList(),
  result: MconnAdminMacrosProvisionLicensedConnectorResult.fromJson(json['result'] as Map<String, dynamic>),
); }

final List<MconnCodedMessage> messages;

final bool success;

final List<MconnCodedMessage> errors;

final MconnAdminMacrosProvisionLicensedConnectorResult result;

Map<String, dynamic> toJson() { return {
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  'errors': errors.map((e) => e.toJson()).toList(),
  'result': result.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool &&
      json.containsKey('errors') &&
      json.containsKey('result'); } 
MconnAdminMacrosProvisionLicensedConnectorResponse copyWith({List<MconnCodedMessage>? messages, bool? success, List<MconnCodedMessage>? errors, MconnAdminMacrosProvisionLicensedConnectorResult? result, }) { return MconnAdminMacrosProvisionLicensedConnectorResponse(
  messages: messages ?? this.messages,
  success: success ?? this.success,
  errors: errors ?? this.errors,
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnAdminMacrosProvisionLicensedConnectorResponse &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          listEquals(errors, other.errors) &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(messages), success, Object.hashAll(errors), result); } 
@override String toString() { return 'MconnAdminMacrosProvisionLicensedConnectorResponse(messages: $messages, success: $success, errors: $errors, result: $result)'; } 
 }
