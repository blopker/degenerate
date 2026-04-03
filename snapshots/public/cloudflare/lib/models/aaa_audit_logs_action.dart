// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AaaAuditLogsAction {const AaaAuditLogsAction({this.result, this.type, });

factory AaaAuditLogsAction.fromJson(Map<String, dynamic> json) { return AaaAuditLogsAction(
  result: json['result'] as bool?,
  type: json['type'] as String?,
); }

/// A boolean that indicates if the action attempted was successful.
final bool? result;

/// A short string that describes the action that was performed.
final String? type;

Map<String, dynamic> toJson() { return {
  'result': ?result,
  'type': ?type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result', 'type'}.contains(key)); } 
AaaAuditLogsAction copyWith({bool Function()? result, String Function()? type, }) { return AaaAuditLogsAction(
  result: result != null ? result() : this.result,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AaaAuditLogsAction &&
          result == other.result &&
          type == other.type; } 
@override int get hashCode { return Object.hash(result, type); } 
@override String toString() { return 'AaaAuditLogsAction(result: $result, type: $type)'; } 
 }
