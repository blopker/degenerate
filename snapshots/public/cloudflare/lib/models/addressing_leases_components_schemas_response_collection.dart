// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'addressing_lease.dart';import 'addressing_leases_components_schemas_response_collection_result_info.dart';import 'addressing_messages2.dart';@immutable final class AddressingLeasesComponentsSchemasResponseCollection {const AddressingLeasesComponentsSchemasResponseCollection({required this.errors, required this.messages, required this.success, this.resultInfo, this.result, });

factory AddressingLeasesComponentsSchemasResponseCollection.fromJson(Map<String, dynamic> json) { return AddressingLeasesComponentsSchemasResponseCollection(
  errors: (json['errors'] as List<dynamic>).map((e) => AddressingMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => AddressingMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? AddressingLeasesComponentsSchemasResponseCollectionResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  result: (json['result'] as List<dynamic>?)?.map((e) => AddressingLease.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<AddressingMessages2> errors;

final List<AddressingMessages2> messages;

/// Whether the API call was successful.
final bool success;

final AddressingLeasesComponentsSchemasResponseCollectionResultInfo? resultInfo;

final List<AddressingLease>? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
AddressingLeasesComponentsSchemasResponseCollection copyWith({List<AddressingMessages2>? errors, List<AddressingMessages2>? messages, bool? success, AddressingLeasesComponentsSchemasResponseCollectionResultInfo Function()? resultInfo, List<AddressingLease> Function()? result, }) { return AddressingLeasesComponentsSchemasResponseCollection(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AddressingLeasesComponentsSchemasResponseCollection &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo, Object.hashAll(result ?? const [])); } 
@override String toString() { return 'AddressingLeasesComponentsSchemasResponseCollection(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo, result: $result)'; } 
 }
