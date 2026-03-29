// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shield_old_schema_upload_log_event.dart';final class ShieldOldSchemaUploadDetailsErrorsCritical {const ShieldOldSchemaUploadDetailsErrorsCritical({this.critical, this.errors, });

factory ShieldOldSchemaUploadDetailsErrorsCritical.fromJson(Map<String, dynamic> json) { return ShieldOldSchemaUploadDetailsErrorsCritical(
  critical: (json['critical'] as List<dynamic>?)?.map((e) => ShieldOldSchemaUploadLogEvent.fromJson(e as Map<String, dynamic>)).toList(),
  errors: (json['errors'] as List<dynamic>?)?.map((e) => ShieldOldSchemaUploadLogEvent.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Diagnostic critical error events that occurred during processing.
final List<ShieldOldSchemaUploadLogEvent>? critical;

/// Diagnostic error events that occurred during processing.
final List<ShieldOldSchemaUploadLogEvent>? errors;

Map<String, dynamic> toJson() { return {
  if (critical != null) 'critical': critical?.map((e) => e.toJson()).toList(),
  if (errors != null) 'errors': errors?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'critical', 'errors'}.contains(key)); } 
ShieldOldSchemaUploadDetailsErrorsCritical copyWith({List<ShieldOldSchemaUploadLogEvent> Function()? critical, List<ShieldOldSchemaUploadLogEvent> Function()? errors, }) { return ShieldOldSchemaUploadDetailsErrorsCritical(
  critical: critical != null ? critical() : this.critical,
  errors: errors != null ? errors() : this.errors,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldOldSchemaUploadDetailsErrorsCritical &&
          listEquals(critical, other.critical) &&
          listEquals(errors, other.errors); } 
@override int get hashCode { return Object.hash(Object.hashAll(critical ?? const []), Object.hashAll(errors ?? const [])); } 
@override String toString() { return 'ShieldOldSchemaUploadDetailsErrorsCritical(critical: $critical, errors: $errors)'; } 
 }
