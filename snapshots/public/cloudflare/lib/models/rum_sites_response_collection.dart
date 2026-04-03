// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rum_messages2.dart';import 'rum_result_info.dart';import 'rum_site.dart';@immutable final class RumSitesResponseCollection {const RumSitesResponseCollection({required this.errors, required this.messages, required this.success, this.result, this.resultInfo, });

factory RumSitesResponseCollection.fromJson(Map<String, dynamic> json) { return RumSitesResponseCollection(
  errors: (json['errors'] as List<dynamic>).map((e) => RumMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => RumMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: (json['result'] as List<dynamic>?)?.map((e) => RumSite.fromJson(e as Map<String, dynamic>)).toList(),
  resultInfo: json['result_info'] != null ? RumResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
); }

final List<RumMessages2> errors;

final List<RumMessages2> messages;

/// Whether the API call was successful.
final bool success;

final List<RumSite>? result;

final RumResultInfo? resultInfo;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
RumSitesResponseCollection copyWith({List<RumMessages2>? errors, List<RumMessages2>? messages, bool? success, List<RumSite> Function()? result, RumResultInfo Function()? resultInfo, }) { return RumSitesResponseCollection(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RumSitesResponseCollection &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          listEquals(result, other.result) &&
          resultInfo == other.resultInfo; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, Object.hashAll(result ?? const []), resultInfo); } 
@override String toString() { return 'RumSitesResponseCollection(errors: $errors, messages: $messages, success: $success, result: $result, resultInfo: $resultInfo)'; } 
 }
