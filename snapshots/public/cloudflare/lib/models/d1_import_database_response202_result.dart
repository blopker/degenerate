// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class D1ImportDatabaseResponse202ResultStatus {const D1ImportDatabaseResponse202ResultStatus._(this.value);

factory D1ImportDatabaseResponse202ResultStatus.fromJson(String json) { return switch (json) {
  'active' => active,
  _ => D1ImportDatabaseResponse202ResultStatus._(json),
}; }

static const D1ImportDatabaseResponse202ResultStatus active = D1ImportDatabaseResponse202ResultStatus._('active');

static const List<D1ImportDatabaseResponse202ResultStatus> values = [active];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is D1ImportDatabaseResponse202ResultStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'D1ImportDatabaseResponse202ResultStatus($value)'; } 
 }
@immutable final class D1ImportDatabaseResponse202ResultType {const D1ImportDatabaseResponse202ResultType._(this.value);

factory D1ImportDatabaseResponse202ResultType.fromJson(String json) { return switch (json) {
  'import' => $import,
  _ => D1ImportDatabaseResponse202ResultType._(json),
}; }

static const D1ImportDatabaseResponse202ResultType $import = D1ImportDatabaseResponse202ResultType._('import');

static const List<D1ImportDatabaseResponse202ResultType> values = [$import];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is D1ImportDatabaseResponse202ResultType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'D1ImportDatabaseResponse202ResultType($value)'; } 
 }
@immutable final class D1ImportDatabaseResponse202Result {const D1ImportDatabaseResponse202Result({this.atBookmark, this.messages, this.status, this.success, this.type, });

factory D1ImportDatabaseResponse202Result.fromJson(Map<String, dynamic> json) { return D1ImportDatabaseResponse202Result(
  atBookmark: json['at_bookmark'] as String?,
  messages: (json['messages'] as List<dynamic>?)?.map((e) => e as String).toList(),
  status: json['status'] != null ? D1ImportDatabaseResponse202ResultStatus.fromJson(json['status'] as String) : null,
  success: json['success'] as bool?,
  type: json['type'] != null ? D1ImportDatabaseResponse202ResultType.fromJson(json['type'] as String) : null,
); }

/// The current bookmark for your D1, used to poll for updates. Will not change for the duration of the import.
final String? atBookmark;

/// Logs since the last time you polled
final List<String>? messages;

final D1ImportDatabaseResponse202ResultStatus? status;

final bool? success;

final D1ImportDatabaseResponse202ResultType? type;

Map<String, dynamic> toJson() { return {
  'at_bookmark': ?atBookmark,
  'messages': ?messages,
  if (status != null) 'status': status?.toJson(),
  'success': ?success,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'at_bookmark', 'messages', 'status', 'success', 'type'}.contains(key)); } 
D1ImportDatabaseResponse202Result copyWith({String Function()? atBookmark, List<String> Function()? messages, D1ImportDatabaseResponse202ResultStatus Function()? status, bool Function()? success, D1ImportDatabaseResponse202ResultType Function()? type, }) { return D1ImportDatabaseResponse202Result(
  atBookmark: atBookmark != null ? atBookmark() : this.atBookmark,
  messages: messages != null ? messages() : this.messages,
  status: status != null ? status() : this.status,
  success: success != null ? success() : this.success,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is D1ImportDatabaseResponse202Result &&
          atBookmark == other.atBookmark &&
          listEquals(messages, other.messages) &&
          status == other.status &&
          success == other.success &&
          type == other.type; } 
@override int get hashCode { return Object.hash(atBookmark, Object.hashAll(messages ?? const []), status, success, type); } 
@override String toString() { return 'D1ImportDatabaseResponse202Result(atBookmark: $atBookmark, messages: $messages, status: $status, success: $success, type: $type)'; } 
 }
