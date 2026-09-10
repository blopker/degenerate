// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_identity_providers_components_schemas_response_collection_response_result.dart';import 'access_identity_providers_components_schemas_response_collection_response_result_info.dart';import 'access_messages2.dart';@immutable final class AccessIdentityProvidersComponentsSchemasResponseCollectionResponse {const AccessIdentityProvidersComponentsSchemasResponseCollectionResponse({required this.errors, required this.messages, required this.success, this.resultInfo, this.result, });

factory AccessIdentityProvidersComponentsSchemasResponseCollectionResponse.fromJson(Map<String, dynamic> json) {return AccessIdentityProvidersComponentsSchemasResponseCollectionResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => AccessMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => AccessMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? AccessIdentityProvidersComponentsSchemasResponseCollectionResponseResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  result: (json['result'] as List<dynamic>?)?.map(AccessIdentityProvidersComponentsSchemasResponseCollectionResponseResult.fromJson).toList(),
);}

final List<AccessMessages2> errors;

final List<AccessMessages2> messages;

/// Whether the API call was successful.
final bool success;

final AccessIdentityProvidersComponentsSchemasResponseCollectionResponseResultInfo? resultInfo;

final List<AccessIdentityProvidersComponentsSchemasResponseCollectionResponseResult>? result;

Map<String, dynamic> toJson() {return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool;}
AccessIdentityProvidersComponentsSchemasResponseCollectionResponse copyWith({List<AccessMessages2>? errors, List<AccessMessages2>? messages, bool? success, AccessIdentityProvidersComponentsSchemasResponseCollectionResponseResultInfo? Function()? resultInfo, List<AccessIdentityProvidersComponentsSchemasResponseCollectionResponseResult>? Function()? result, }) {return AccessIdentityProvidersComponentsSchemasResponseCollectionResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  result: result != null ? result() : this.result,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is AccessIdentityProvidersComponentsSchemasResponseCollectionResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo &&
          listEquals(result, other.result);}
@override int get hashCode {return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo, Object.hashAll(result ?? const []));}
@override String toString() {return 'AccessIdentityProvidersComponentsSchemasResponseCollectionResponse(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo, result: $result)';}
}
