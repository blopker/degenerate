// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shield_global_settings.dart';@immutable final class SchemaValidationEditSettingsResponse {const SchemaValidationEditSettingsResponse({required this.result});

factory SchemaValidationEditSettingsResponse.fromJson(Map<String, dynamic> json) { return SchemaValidationEditSettingsResponse(
  result: ShieldGlobalSettings.fromJson(json['result'] as Map<String, dynamic>),
); }

final ShieldGlobalSettings result;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result'); } 
SchemaValidationEditSettingsResponse copyWith({ShieldGlobalSettings? result}) { return SchemaValidationEditSettingsResponse(
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SchemaValidationEditSettingsResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'SchemaValidationEditSettingsResponse(result: $result)'; } 
 }
