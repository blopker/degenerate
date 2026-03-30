// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'addressing_messages2.dart';import 'ip_address_management_service_bindings_list_services_response_result.dart';final class IpAddressManagementServiceBindingsListServicesResponse {const IpAddressManagementServiceBindingsListServicesResponse({required this.errors, required this.messages, required this.success, this.result, });

factory IpAddressManagementServiceBindingsListServicesResponse.fromJson(Map<String, dynamic> json) { return IpAddressManagementServiceBindingsListServicesResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => AddressingMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => AddressingMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: (json['result'] as List<dynamic>?)?.map((e) => IpAddressManagementServiceBindingsListServicesResponseResult.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<AddressingMessages2> errors;

final List<AddressingMessages2> messages;

/// Whether the API call was successful.
final bool success;

final List<IpAddressManagementServiceBindingsListServicesResponseResult>? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
IpAddressManagementServiceBindingsListServicesResponse copyWith({List<AddressingMessages2>? errors, List<AddressingMessages2>? messages, bool? success, List<IpAddressManagementServiceBindingsListServicesResponseResult> Function()? result, }) { return IpAddressManagementServiceBindingsListServicesResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IpAddressManagementServiceBindingsListServicesResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, Object.hashAll(result ?? const [])); } 
@override String toString() { return 'IpAddressManagementServiceBindingsListServicesResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
