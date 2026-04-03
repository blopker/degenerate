// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Indicates you have a new SQL file to upload.
@immutable final class InitAction {const InitAction._(this.value);

factory InitAction.fromJson(String json) { return switch (json) {
  'init' => init,
  _ => InitAction._(json),
}; }

static const InitAction init = InitAction._('init');

static const List<InitAction> values = [init];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InitAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InitAction($value)'; } 
 }
@immutable final class Init {const Init({required this.action, required this.etag, });

factory Init.fromJson(Map<String, dynamic> json) { return Init(
  action: InitAction.fromJson(json['action'] as String),
  etag: json['etag'] as String,
); }

/// Indicates you have a new SQL file to upload.
final InitAction action;

/// Required when action is 'init' or 'ingest'. An md5 hash of the file you're uploading. Used to check if it already exists, and validate its contents before ingesting.
final String etag;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
  'etag': etag,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') &&
      json.containsKey('etag') && json['etag'] is String; } 
Init copyWith({InitAction? action, String? etag, }) { return Init(
  action: action ?? this.action,
  etag: etag ?? this.etag,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Init &&
          action == other.action &&
          etag == other.etag; } 
@override int get hashCode { return Object.hash(action, etag); } 
@override String toString() { return 'Init(action: $action, etag: $etag)'; } 
 }
