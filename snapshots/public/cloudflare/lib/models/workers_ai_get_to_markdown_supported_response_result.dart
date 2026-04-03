// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WorkersAiGetToMarkdownSupportedResponseResult {const WorkersAiGetToMarkdownSupportedResponseResult({required this.$extension, required this.mimeType, });

factory WorkersAiGetToMarkdownSupportedResponseResult.fromJson(Map<String, dynamic> json) { return WorkersAiGetToMarkdownSupportedResponseResult(
  $extension: json['extension'] as String,
  mimeType: json['mimeType'] as String,
); }

final String $extension;

final String mimeType;

Map<String, dynamic> toJson() { return {
  'extension': $extension,
  'mimeType': mimeType,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('extension') && json['extension'] is String &&
      json.containsKey('mimeType') && json['mimeType'] is String; } 
WorkersAiGetToMarkdownSupportedResponseResult copyWith({String? $extension, String? mimeType, }) { return WorkersAiGetToMarkdownSupportedResponseResult(
  $extension: $extension ?? this.$extension,
  mimeType: mimeType ?? this.mimeType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersAiGetToMarkdownSupportedResponseResult &&
          $extension == other.$extension &&
          mimeType == other.mimeType; } 
@override int get hashCode { return Object.hash($extension, mimeType); } 
@override String toString() { return 'WorkersAiGetToMarkdownSupportedResponseResult(\$extension: ${$extension}, mimeType: $mimeType)'; } 
 }
