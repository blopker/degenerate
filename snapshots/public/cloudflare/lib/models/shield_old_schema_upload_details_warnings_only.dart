// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shield_old_schema_upload_log_event.dart';@immutable final class ShieldOldSchemaUploadDetailsWarningsOnly {const ShieldOldSchemaUploadDetailsWarningsOnly({this.warnings});

factory ShieldOldSchemaUploadDetailsWarningsOnly.fromJson(Map<String, dynamic> json) { return ShieldOldSchemaUploadDetailsWarningsOnly(
  warnings: (json['warnings'] as List<dynamic>?)?.map((e) => ShieldOldSchemaUploadLogEvent.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Diagnostic warning events that occurred during processing. These events are non-critical errors found within the schema.
final List<ShieldOldSchemaUploadLogEvent>? warnings;

Map<String, dynamic> toJson() { return {
  if (warnings != null) 'warnings': warnings?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'warnings'}.contains(key)); } 
ShieldOldSchemaUploadDetailsWarningsOnly copyWith({List<ShieldOldSchemaUploadLogEvent> Function()? warnings}) { return ShieldOldSchemaUploadDetailsWarningsOnly(
  warnings: warnings != null ? warnings() : this.warnings,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldOldSchemaUploadDetailsWarningsOnly &&
          listEquals(warnings, other.warnings); } 
@override int get hashCode { return Object.hashAll(warnings ?? const []).hashCode; } 
@override String toString() { return 'ShieldOldSchemaUploadDetailsWarningsOnly(warnings: $warnings)'; } 
 }
