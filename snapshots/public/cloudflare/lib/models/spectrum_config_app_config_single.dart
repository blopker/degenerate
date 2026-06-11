// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'spectrum_config_app_config.dart';import 'spectrum_config_app_config_single_result.dart';import 'spectrum_config_messages2.dart';import 'spectrum_config_paygo_app_config.dart';@immutable final class SpectrumConfigAppConfigSingle {const SpectrumConfigAppConfigSingle({required this.errors, required this.messages, required this.success, this.result, });

factory SpectrumConfigAppConfigSingle.fromJson(Map<String, dynamic> json) { return SpectrumConfigAppConfigSingle(
  errors: (json['errors'] as List<dynamic>).map((e) => SpectrumConfigMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => SpectrumConfigMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? OneOf2.parse(json['result'], fromA: (v) => SpectrumConfigAppConfig.fromJson(v as Map<String, dynamic>), fromB: (v) => SpectrumConfigPaygoAppConfig.fromJson(v as Map<String, dynamic>),) : null,
); }

final List<SpectrumConfigMessages2> errors;

final List<SpectrumConfigMessages2> messages;

/// Whether the API call was successful.
final bool success;

final SpectrumConfigAppConfigSingleResult? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
SpectrumConfigAppConfigSingle copyWith({List<SpectrumConfigMessages2>? errors, List<SpectrumConfigMessages2>? messages, bool? success, SpectrumConfigAppConfigSingleResult Function()? result, }) { return SpectrumConfigAppConfigSingle(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SpectrumConfigAppConfigSingle &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'SpectrumConfigAppConfigSingle(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
