// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mconn_coded_message.dart';import 'mconn_support_macros_provision_licensed_connector_result.dart';@immutable final class MconnSupportMacrosProvisionLicensedConnectorResponse {const MconnSupportMacrosProvisionLicensedConnectorResponse({required this.messages, required this.success, required this.errors, required this.result, });

factory MconnSupportMacrosProvisionLicensedConnectorResponse.fromJson(Map<String, dynamic> json) { return MconnSupportMacrosProvisionLicensedConnectorResponse(
  messages: (json['messages'] as List<dynamic>).map((e) => MconnCodedMessage.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  errors: (json['errors'] as List<dynamic>).map((e) => MconnCodedMessage.fromJson(e as Map<String, dynamic>)).toList(),
  result: MconnSupportMacrosProvisionLicensedConnectorResult.fromJson(json['result'] as Map<String, dynamic>),
); }

final List<MconnCodedMessage> messages;

final bool success;

final List<MconnCodedMessage> errors;

final MconnSupportMacrosProvisionLicensedConnectorResult result;

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
MconnSupportMacrosProvisionLicensedConnectorResponse copyWith({List<MconnCodedMessage>? messages, bool? success, List<MconnCodedMessage>? errors, MconnSupportMacrosProvisionLicensedConnectorResult? result, }) { return MconnSupportMacrosProvisionLicensedConnectorResponse(
  messages: messages ?? this.messages,
  success: success ?? this.success,
  errors: errors ?? this.errors,
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnSupportMacrosProvisionLicensedConnectorResponse &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          listEquals(errors, other.errors) &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(messages), success, Object.hashAll(errors), result); } 
@override String toString() { return 'MconnSupportMacrosProvisionLicensedConnectorResponse(messages: $messages, success: $success, errors: $errors, result: $result)'; } 
 }
