// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookCodeScanningAlertReopenedByUserAlertMostRecentInstanceLocation {const WebhookCodeScanningAlertReopenedByUserAlertMostRecentInstanceLocation({this.endColumn, this.endLine, this.path, this.startColumn, this.startLine, });

factory WebhookCodeScanningAlertReopenedByUserAlertMostRecentInstanceLocation.fromJson(Map<String, dynamic> json) { return WebhookCodeScanningAlertReopenedByUserAlertMostRecentInstanceLocation(
  endColumn: json['end_column'] != null ? (json['end_column'] as num).toInt() : null,
  endLine: json['end_line'] != null ? (json['end_line'] as num).toInt() : null,
  path: json['path'] as String?,
  startColumn: json['start_column'] != null ? (json['start_column'] as num).toInt() : null,
  startLine: json['start_line'] != null ? (json['start_line'] as num).toInt() : null,
); }

final int? endColumn;

final int? endLine;

final String? path;

final int? startColumn;

final int? startLine;

Map<String, dynamic> toJson() { return {
  'end_column': ?endColumn,
  'end_line': ?endLine,
  'path': ?path,
  'start_column': ?startColumn,
  'start_line': ?startLine,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'end_column', 'end_line', 'path', 'start_column', 'start_line'}.contains(key)); } 
WebhookCodeScanningAlertReopenedByUserAlertMostRecentInstanceLocation copyWith({int Function()? endColumn, int Function()? endLine, String Function()? path, int Function()? startColumn, int Function()? startLine, }) { return WebhookCodeScanningAlertReopenedByUserAlertMostRecentInstanceLocation(
  endColumn: endColumn != null ? endColumn() : this.endColumn,
  endLine: endLine != null ? endLine() : this.endLine,
  path: path != null ? path() : this.path,
  startColumn: startColumn != null ? startColumn() : this.startColumn,
  startLine: startLine != null ? startLine() : this.startLine,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookCodeScanningAlertReopenedByUserAlertMostRecentInstanceLocation &&
          endColumn == other.endColumn &&
          endLine == other.endLine &&
          path == other.path &&
          startColumn == other.startColumn &&
          startLine == other.startLine; } 
@override int get hashCode { return Object.hash(endColumn, endLine, path, startColumn, startLine); } 
@override String toString() { return 'WebhookCodeScanningAlertReopenedByUserAlertMostRecentInstanceLocation(endColumn: $endColumn, endLine: $endLine, path: $path, startColumn: $startColumn, startLine: $startLine)'; } 
 }
