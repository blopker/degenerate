// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shield_old_validation_enabled.dart';@immutable final class ShieldSchemaValidationEnableValidationForASchemaRequest {const ShieldSchemaValidationEnableValidationForASchemaRequest({this.validationEnabled});

factory ShieldSchemaValidationEnableValidationForASchemaRequest.fromJson(Map<String, dynamic> json) { return ShieldSchemaValidationEnableValidationForASchemaRequest(
  validationEnabled: json['validation_enabled'] != null ? ShieldOldValidationEnabled.fromJson(json['validation_enabled'] as bool) : null,
); }

/// Flag whether schema is enabled for validation.
final ShieldOldValidationEnabled? validationEnabled;

Map<String, dynamic> toJson() { return {
  if (validationEnabled != null) 'validation_enabled': validationEnabled?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'validation_enabled'}.contains(key)); } 
ShieldSchemaValidationEnableValidationForASchemaRequest copyWith({ShieldOldValidationEnabled Function()? validationEnabled}) { return ShieldSchemaValidationEnableValidationForASchemaRequest(
  validationEnabled: validationEnabled != null ? validationEnabled() : this.validationEnabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldSchemaValidationEnableValidationForASchemaRequest &&
          validationEnabled == other.validationEnabled; } 
@override int get hashCode { return validationEnabled.hashCode; } 
@override String toString() { return 'ShieldSchemaValidationEnableValidationForASchemaRequest(validationEnabled: $validationEnabled)'; } 
 }
