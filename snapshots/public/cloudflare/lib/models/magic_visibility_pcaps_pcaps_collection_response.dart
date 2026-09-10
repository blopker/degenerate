// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_visibility_pcaps_messages2.dart';import 'magic_visibility_pcaps_pcaps_collection_response_result.dart';import 'magic_visibility_pcaps_pcaps_response_full.dart';import 'magic_visibility_pcaps_pcaps_response_simple.dart';import 'magic_visibility_pcaps_result_info.dart';@immutable final class MagicVisibilityPcapsPcapsCollectionResponse {const MagicVisibilityPcapsPcapsCollectionResponse({required this.errors, required this.messages, required this.result, required this.success, this.resultInfo, });

factory MagicVisibilityPcapsPcapsCollectionResponse.fromJson(Map<String, dynamic> json) { return MagicVisibilityPcapsPcapsCollectionResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => MagicVisibilityPcapsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => MagicVisibilityPcapsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: (json['result'] as List<dynamic>).map((e) => OneOf2.parse(e, fromA: (v) => MagicVisibilityPcapsPcapsResponseSimple.fromJson(v as Map<String, dynamic>), fromB: (v) => MagicVisibilityPcapsPcapsResponseFull.fromJson(v as Map<String, dynamic>),)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? MagicVisibilityPcapsResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
); }

final List<MagicVisibilityPcapsMessages2> errors;

final List<MagicVisibilityPcapsMessages2> messages;

final List<MagicVisibilityPcapsPcapsCollectionResponseResult> result;

/// Whether the API call was successful.
final bool success;

final MagicVisibilityPcapsResultInfo? resultInfo;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'result': result.map((e) => e.toJson()).toList(),
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
MagicVisibilityPcapsPcapsCollectionResponse copyWith({List<MagicVisibilityPcapsMessages2>? errors, List<MagicVisibilityPcapsMessages2>? messages, List<MagicVisibilityPcapsPcapsCollectionResponseResult>? result, bool? success, MagicVisibilityPcapsResultInfo? Function()? resultInfo, }) { return MagicVisibilityPcapsPcapsCollectionResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicVisibilityPcapsPcapsCollectionResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          listEquals(result, other.result) &&
          success == other.success &&
          resultInfo == other.resultInfo; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), Object.hashAll(result), success, resultInfo); } 
@override String toString() { return 'MagicVisibilityPcapsPcapsCollectionResponse(errors: $errors, messages: $messages, result: $result, success: $success, resultInfo: $resultInfo)'; } 
 }
