// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cloudforce_one_requests_messages2.dart';import 'cloudforce_one_requests_request_asset_item.dart';final class CloudforceOneRequestAssetGetResponse {const CloudforceOneRequestAssetGetResponse({required this.errors, required this.messages, required this.success, this.result, });

factory CloudforceOneRequestAssetGetResponse.fromJson(Map<String, dynamic> json) { return CloudforceOneRequestAssetGetResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => CloudforceOneRequestsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => CloudforceOneRequestsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: (json['result'] as List<dynamic>?)?.map((e) => CloudforceOneRequestsRequestAssetItem.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<CloudforceOneRequestsMessages2> errors;

final List<CloudforceOneRequestsMessages2> messages;

/// Whether the API call was successful.
final bool success;

final List<CloudforceOneRequestsRequestAssetItem>? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
CloudforceOneRequestAssetGetResponse copyWith({List<CloudforceOneRequestsMessages2>? errors, List<CloudforceOneRequestsMessages2>? messages, bool? success, List<CloudforceOneRequestsRequestAssetItem> Function()? result, }) { return CloudforceOneRequestAssetGetResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CloudforceOneRequestAssetGetResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, Object.hashAll(result ?? const [])); } 
@override String toString() { return 'CloudforceOneRequestAssetGetResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
