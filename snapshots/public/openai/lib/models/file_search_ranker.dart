// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The ranker to use for the file search. If not specified will use the `auto` ranker.
@immutable final class FileSearchRanker {const FileSearchRanker._(this.value);

factory FileSearchRanker.fromJson(String json) { return switch (json) {
  'auto' => auto,
  'default_2024_08_21' => default20240821,
  _ => FileSearchRanker._(json),
}; }

static const FileSearchRanker auto = FileSearchRanker._('auto');

static const FileSearchRanker default20240821 = FileSearchRanker._('default_2024_08_21');

static const List<FileSearchRanker> values = [auto, default20240821];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FileSearchRanker && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'FileSearchRanker($value)'; } 
 }
