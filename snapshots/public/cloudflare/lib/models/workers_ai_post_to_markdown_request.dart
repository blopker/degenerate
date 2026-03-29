// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'dart:typed_data';import 'package:degenerate_runtime/degenerate_runtime.dart';final class WorkersAiPostToMarkdownRequest {const WorkersAiPostToMarkdownRequest({required this.files});

factory WorkersAiPostToMarkdownRequest.fromJson(Map<String, dynamic> json) { return WorkersAiPostToMarkdownRequest(
  files: (json['files'] as List<dynamic>).map((e) => base64Decode(e as String)).toList(),
); }

final List<Uint8List> files;

Map<String, dynamic> toJson() { return {
  'files': files.map((e) => base64Encode(e)).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('files'); } 
WorkersAiPostToMarkdownRequest copyWith({List<Uint8List>? files}) { return WorkersAiPostToMarkdownRequest(
  files: files ?? this.files,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersAiPostToMarkdownRequest &&
          listEquals(files, other.files); } 
@override int get hashCode { return Object.hashAll(files).hashCode; } 
@override String toString() { return 'WorkersAiPostToMarkdownRequest(files: $files)'; } 
 }
