// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shield_global_settings.dart';@immutable final class SchemaValidationUpdateSettingsResponse {const SchemaValidationUpdateSettingsResponse({required this.result});

factory SchemaValidationUpdateSettingsResponse.fromJson(Map<String, dynamic> json) { return SchemaValidationUpdateSettingsResponse(
  result: ShieldGlobalSettings.fromJson(json['result'] as Map<String, dynamic>),
); }

final ShieldGlobalSettings result;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result'); } 
SchemaValidationUpdateSettingsResponse copyWith({ShieldGlobalSettings? result}) { return SchemaValidationUpdateSettingsResponse(
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SchemaValidationUpdateSettingsResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'SchemaValidationUpdateSettingsResponse(result: $result)'; } 
 }
