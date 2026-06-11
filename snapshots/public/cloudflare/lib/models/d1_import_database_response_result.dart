// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'd1_import_database_response_result_result.dart';@immutable final class D1ImportDatabaseResponseResultStatus {const D1ImportDatabaseResponseResultStatus._(this.value);

factory D1ImportDatabaseResponseResultStatus.fromJson(String json) { return switch (json) {
  'complete' => complete,
  'error' => error,
  _ => D1ImportDatabaseResponseResultStatus._(json),
}; }

static const D1ImportDatabaseResponseResultStatus complete = D1ImportDatabaseResponseResultStatus._('complete');

static const D1ImportDatabaseResponseResultStatus error = D1ImportDatabaseResponseResultStatus._('error');

static const List<D1ImportDatabaseResponseResultStatus> values = [complete, error];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is D1ImportDatabaseResponseResultStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'D1ImportDatabaseResponseResultStatus($value)'; } 
 }
@immutable final class D1ImportDatabaseResponseResultType {const D1ImportDatabaseResponseResultType._(this.value);

factory D1ImportDatabaseResponseResultType.fromJson(String json) { return switch (json) {
  'import' => $import,
  _ => D1ImportDatabaseResponseResultType._(json),
}; }

static const D1ImportDatabaseResponseResultType $import = D1ImportDatabaseResponseResultType._('import');

static const List<D1ImportDatabaseResponseResultType> values = [$import];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is D1ImportDatabaseResponseResultType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'D1ImportDatabaseResponseResultType($value)'; } 
 }
@immutable final class D1ImportDatabaseResponseResult {const D1ImportDatabaseResponseResult({this.atBookmark, this.error, this.filename, this.messages, this.result, this.status, this.success, this.type, this.uploadUrl, });

factory D1ImportDatabaseResponseResult.fromJson(Map<String, dynamic> json) { return D1ImportDatabaseResponseResult(
  atBookmark: json['at_bookmark'] as String?,
  error: json['error'] as String?,
  filename: json['filename'] as String?,
  messages: (json['messages'] as List<dynamic>?)?.map((e) => e as String).toList(),
  result: json['result'] != null ? D1ImportDatabaseResponseResultResult.fromJson(json['result'] as Map<String, dynamic>) : null,
  status: json['status'] != null ? D1ImportDatabaseResponseResultStatus.fromJson(json['status'] as String) : null,
  success: json['success'] as bool?,
  type: json['type'] != null ? D1ImportDatabaseResponseResultType.fromJson(json['type'] as String) : null,
  uploadUrl: json['upload_url'] as String?,
); }

/// The current time-travel bookmark for your D1, used to poll for updates. Will not change for the duration of the import. Only returned if an import process is currently running or recently finished.
final String? atBookmark;

/// Only present when status = 'error'. Contains the error message that prevented the import from succeeding.
final String? error;

/// Derived from the database ID and etag, to use in avoiding repeated uploads. Only returned when for the 'init' action.
final String? filename;

/// Logs since the last time you polled
final List<String>? messages;

/// Only present when status = 'complete'
final D1ImportDatabaseResponseResultResult? result;

final D1ImportDatabaseResponseResultStatus? status;

final bool? success;

final D1ImportDatabaseResponseResultType? type;

/// The R2 presigned URL to use for uploading. Only returned when for the 'init' action.
final String? uploadUrl;

Map<String, dynamic> toJson() { return {
  'at_bookmark': ?atBookmark,
  'error': ?error,
  'filename': ?filename,
  'messages': ?messages,
  if (result != null) 'result': result?.toJson(),
  if (status != null) 'status': status?.toJson(),
  'success': ?success,
  if (type != null) 'type': type?.toJson(),
  'upload_url': ?uploadUrl,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'at_bookmark', 'error', 'filename', 'messages', 'result', 'status', 'success', 'type', 'upload_url'}.contains(key)); } 
D1ImportDatabaseResponseResult copyWith({String Function()? atBookmark, String Function()? error, String Function()? filename, List<String> Function()? messages, D1ImportDatabaseResponseResultResult Function()? result, D1ImportDatabaseResponseResultStatus Function()? status, bool Function()? success, D1ImportDatabaseResponseResultType Function()? type, String Function()? uploadUrl, }) { return D1ImportDatabaseResponseResult(
  atBookmark: atBookmark != null ? atBookmark() : this.atBookmark,
  error: error != null ? error() : this.error,
  filename: filename != null ? filename() : this.filename,
  messages: messages != null ? messages() : this.messages,
  result: result != null ? result() : this.result,
  status: status != null ? status() : this.status,
  success: success != null ? success() : this.success,
  type: type != null ? type() : this.type,
  uploadUrl: uploadUrl != null ? uploadUrl() : this.uploadUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is D1ImportDatabaseResponseResult &&
          atBookmark == other.atBookmark &&
          error == other.error &&
          filename == other.filename &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          status == other.status &&
          success == other.success &&
          type == other.type &&
          uploadUrl == other.uploadUrl; } 
@override int get hashCode { return Object.hash(atBookmark, error, filename, Object.hashAll(messages ?? const []), result, status, success, type, uploadUrl); } 
@override String toString() { return 'D1ImportDatabaseResponseResult(atBookmark: $atBookmark, error: $error, filename: $filename, messages: $messages, result: $result, status: $status, success: $success, type: $type, uploadUrl: $uploadUrl)'; } 
 }
