// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class BrapiPostSnapshotResponseResult {const BrapiPostSnapshotResponseResult({required this.content, required this.screenshot, });

factory BrapiPostSnapshotResponseResult.fromJson(Map<String, dynamic> json) { return BrapiPostSnapshotResponseResult(
  content: json['content'] as String,
  screenshot: json['screenshot'] as String,
); }

/// HTML content
final String content;

/// Base64 encoded image
final String screenshot;

Map<String, dynamic> toJson() { return {
  'content': content,
  'screenshot': screenshot,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('content') && json['content'] is String &&
      json.containsKey('screenshot') && json['screenshot'] is String; } 
BrapiPostSnapshotResponseResult copyWith({String? content, String? screenshot, }) { return BrapiPostSnapshotResponseResult(
  content: content ?? this.content,
  screenshot: screenshot ?? this.screenshot,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BrapiPostSnapshotResponseResult &&
          content == other.content &&
          screenshot == other.screenshot; } 
@override int get hashCode { return Object.hash(content, screenshot); } 
@override String toString() { return 'BrapiPostSnapshotResponseResult(content: $content, screenshot: $screenshot)'; } 
 }
