// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'infra_messages2.dart';import 'infra_service_config.dart';@immutable final class ConnectivityServicesGetResponse {const ConnectivityServicesGetResponse({required this.errors, required this.messages, required this.success, this.result, });

factory ConnectivityServicesGetResponse.fromJson(Map<String, dynamic> json) { return ConnectivityServicesGetResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => InfraMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => InfraMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? InfraServiceConfig.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<InfraMessages2> errors;

final List<InfraMessages2> messages;

/// Whether the API call was successful.
final bool success;

final InfraServiceConfig? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
ConnectivityServicesGetResponse copyWith({List<InfraMessages2>? errors, List<InfraMessages2>? messages, bool? success, InfraServiceConfig Function()? result, }) { return ConnectivityServicesGetResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ConnectivityServicesGetResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'ConnectivityServicesGetResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
