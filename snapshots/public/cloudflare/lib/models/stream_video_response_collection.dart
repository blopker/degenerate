// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'stream_messages2.dart';import 'stream_videos.dart';final class StreamVideoResponseCollection {const StreamVideoResponseCollection({required this.errors, required this.messages, required this.success, this.result, this.range, this.total, });

factory StreamVideoResponseCollection.fromJson(Map<String, dynamic> json) { return StreamVideoResponseCollection(
  errors: (json['errors'] as List<dynamic>).map((e) => StreamMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => StreamMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: (json['result'] as List<dynamic>?)?.map((e) => StreamVideos.fromJson(e as Map<String, dynamic>)).toList(),
  range: json['range'] != null ? (json['range'] as num).toInt() : null,
  total: json['total'] != null ? (json['total'] as num).toInt() : null,
); }

final List<StreamMessages2> errors;

final List<StreamMessages2> messages;

/// Whether the API call was successful.
final bool success;

final List<StreamVideos>? result;

/// The total number of remaining videos based on cursor position.
final int? range;

/// The total number of videos that match the provided filters.
final int? total;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
  'range': ?range,
  'total': ?total,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
StreamVideoResponseCollection copyWith({List<StreamMessages2>? errors, List<StreamMessages2>? messages, bool? success, List<StreamVideos> Function()? result, int Function()? range, int Function()? total, }) { return StreamVideoResponseCollection(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
  range: range != null ? range() : this.range,
  total: total != null ? total() : this.total,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StreamVideoResponseCollection &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          listEquals(result, other.result) &&
          range == other.range &&
          total == other.total; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, Object.hashAll(result ?? const []), range, total); } 
@override String toString() { return 'StreamVideoResponseCollection(errors: $errors, messages: $messages, success: $success, result: $result, range: $range, total: $total)'; } 
 }
