// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shield_global_settings.dart';@immutable final class SchemaValidationGetSettingsResponse {const SchemaValidationGetSettingsResponse({required this.result});

factory SchemaValidationGetSettingsResponse.fromJson(Map<String, dynamic> json) { return SchemaValidationGetSettingsResponse(
  result: ShieldGlobalSettings.fromJson(json['result'] as Map<String, dynamic>),
); }

final ShieldGlobalSettings result;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result'); } 
SchemaValidationGetSettingsResponse copyWith({ShieldGlobalSettings? result}) { return SchemaValidationGetSettingsResponse(
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SchemaValidationGetSettingsResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'SchemaValidationGetSettingsResponse(result: $result)'; } 
 }
