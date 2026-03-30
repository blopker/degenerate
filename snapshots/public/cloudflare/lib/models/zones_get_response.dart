// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_messages2.dart';import 'zones_result_info.dart';import 'zones_zone.dart';final class ZonesGetResponse {const ZonesGetResponse({required this.errors, required this.messages, required this.success, this.resultInfo, this.result, });

factory ZonesGetResponse.fromJson(Map<String, dynamic> json) { return ZonesGetResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => ZonesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => ZonesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? ZonesResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  result: (json['result'] as List<dynamic>?)?.map((e) => ZonesZone.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<ZonesMessages2> errors;

final List<ZonesMessages2> messages;

/// Whether the API call was successful.
final bool success;

final ZonesResultInfo? resultInfo;

final List<ZonesZone>? result;

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
ZonesGetResponse copyWith({List<ZonesMessages2>? errors, List<ZonesMessages2>? messages, bool? success, ZonesResultInfo Function()? resultInfo, List<ZonesZone> Function()? result, }) { return ZonesGetResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesGetResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo, Object.hashAll(result ?? const [])); } 
@override String toString() { return 'ZonesGetResponse(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo, result: $result)'; } 
 }
