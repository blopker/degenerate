// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'd1_export_database_response_result_result.dart';@immutable final class D1ExportDatabaseResponseResultStatus {const D1ExportDatabaseResponseResultStatus._(this.value);

factory D1ExportDatabaseResponseResultStatus.fromJson(String json) { return switch (json) {
  'complete' => complete,
  'error' => error,
  _ => D1ExportDatabaseResponseResultStatus._(json),
}; }

static const D1ExportDatabaseResponseResultStatus complete = D1ExportDatabaseResponseResultStatus._('complete');

static const D1ExportDatabaseResponseResultStatus error = D1ExportDatabaseResponseResultStatus._('error');

static const List<D1ExportDatabaseResponseResultStatus> values = [complete, error];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is D1ExportDatabaseResponseResultStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'D1ExportDatabaseResponseResultStatus($value)'; } 
 }
@immutable final class D1ExportDatabaseResponseResultType {const D1ExportDatabaseResponseResultType._(this.value);

factory D1ExportDatabaseResponseResultType.fromJson(String json) { return switch (json) {
  'export' => $export,
  _ => D1ExportDatabaseResponseResultType._(json),
}; }

static const D1ExportDatabaseResponseResultType $export = D1ExportDatabaseResponseResultType._('export');

static const List<D1ExportDatabaseResponseResultType> values = [$export];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is D1ExportDatabaseResponseResultType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'D1ExportDatabaseResponseResultType($value)'; } 
 }
@immutable final class D1ExportDatabaseResponseResult {const D1ExportDatabaseResponseResult({this.atBookmark, this.error, this.messages, this.result, this.status, this.success, this.type, });

factory D1ExportDatabaseResponseResult.fromJson(Map<String, dynamic> json) { return D1ExportDatabaseResponseResult(
  atBookmark: json['at_bookmark'] as String?,
  error: json['error'] as String?,
  messages: (json['messages'] as List<dynamic>?)?.map((e) => e as String).toList(),
  result: json['result'] != null ? D1ExportDatabaseResponseResultResult.fromJson(json['result'] as Map<String, dynamic>) : null,
  status: json['status'] != null ? D1ExportDatabaseResponseResultStatus.fromJson(json['status'] as String) : null,
  success: json['success'] as bool?,
  type: json['type'] != null ? D1ExportDatabaseResponseResultType.fromJson(json['type'] as String) : null,
); }

/// The current time-travel bookmark for your D1, used to poll for updates. Will not change for the duration of the export task.
final String? atBookmark;

/// Only present when status = 'error'. Contains the error message.
final String? error;

/// Logs since the last time you polled
final List<String>? messages;

/// Only present when status = 'complete'
final D1ExportDatabaseResponseResultResult? result;

final D1ExportDatabaseResponseResultStatus? status;

final bool? success;

final D1ExportDatabaseResponseResultType? type;

Map<String, dynamic> toJson() { return {
  'at_bookmark': ?atBookmark,
  'error': ?error,
  'messages': ?messages,
  if (result != null) 'result': result?.toJson(),
  if (status != null) 'status': status?.toJson(),
  'success': ?success,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'at_bookmark', 'error', 'messages', 'result', 'status', 'success', 'type'}.contains(key)); } 
D1ExportDatabaseResponseResult copyWith({String Function()? atBookmark, String Function()? error, List<String> Function()? messages, D1ExportDatabaseResponseResultResult Function()? result, D1ExportDatabaseResponseResultStatus Function()? status, bool Function()? success, D1ExportDatabaseResponseResultType Function()? type, }) { return D1ExportDatabaseResponseResult(
  atBookmark: atBookmark != null ? atBookmark() : this.atBookmark,
  error: error != null ? error() : this.error,
  messages: messages != null ? messages() : this.messages,
  result: result != null ? result() : this.result,
  status: status != null ? status() : this.status,
  success: success != null ? success() : this.success,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is D1ExportDatabaseResponseResult &&
          atBookmark == other.atBookmark &&
          error == other.error &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          status == other.status &&
          success == other.success &&
          type == other.type; } 
@override int get hashCode { return Object.hash(atBookmark, error, Object.hashAll(messages ?? const []), result, status, success, type); } 
@override String toString() { return 'D1ExportDatabaseResponseResult(atBookmark: $atBookmark, error: $error, messages: $messages, result: $result, status: $status, success: $success, type: $type)'; } 
 }
