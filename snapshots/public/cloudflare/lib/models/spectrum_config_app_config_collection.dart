// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'spectrum_config_app_config.dart';import 'spectrum_config_app_config_collection_result.dart';import 'spectrum_config_app_config_collection_result_info.dart';import 'spectrum_config_messages2.dart';import 'spectrum_config_paygo_app_config.dart';@immutable final class SpectrumConfigAppConfigCollection {const SpectrumConfigAppConfigCollection({required this.errors, required this.messages, required this.success, this.resultInfo, this.result, });

factory SpectrumConfigAppConfigCollection.fromJson(Map<String, dynamic> json) { return SpectrumConfigAppConfigCollection(
  errors: (json['errors'] as List<dynamic>).map((e) => SpectrumConfigMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => SpectrumConfigMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? SpectrumConfigAppConfigCollectionResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  result: json['result'] != null ? OneOf2.parse(json['result'], fromA: (v) => (v as List<dynamic>).map((e) => SpectrumConfigAppConfig.fromJson(e as Map<String, dynamic>)).toList(), fromB: (v) => (v as List<dynamic>).map((e) => SpectrumConfigPaygoAppConfig.fromJson(e as Map<String, dynamic>)).toList(),) : null,
); }

final List<SpectrumConfigMessages2> errors;

final List<SpectrumConfigMessages2> messages;

/// Whether the API call was successful.
final bool success;

final SpectrumConfigAppConfigCollectionResultInfo? resultInfo;

final SpectrumConfigAppConfigCollectionResult? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
SpectrumConfigAppConfigCollection copyWith({List<SpectrumConfigMessages2>? errors, List<SpectrumConfigMessages2>? messages, bool? success, SpectrumConfigAppConfigCollectionResultInfo Function()? resultInfo, SpectrumConfigAppConfigCollectionResult Function()? result, }) { return SpectrumConfigAppConfigCollection(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SpectrumConfigAppConfigCollection &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo, result); } 
@override String toString() { return 'SpectrumConfigAppConfigCollection(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo, result: $result)'; } 
 }
