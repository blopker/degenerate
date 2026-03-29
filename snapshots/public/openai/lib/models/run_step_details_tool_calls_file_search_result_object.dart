// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'run_step_details_tool_calls_file_search_result_object_content.dart';/// A result instance of the file search.
final class RunStepDetailsToolCallsFileSearchResultObject {const RunStepDetailsToolCallsFileSearchResultObject({required this.fileId, required this.fileName, required this.score, this.content, });

factory RunStepDetailsToolCallsFileSearchResultObject.fromJson(Map<String, dynamic> json) { return RunStepDetailsToolCallsFileSearchResultObject(
  fileId: json['file_id'] as String,
  fileName: json['file_name'] as String,
  score: (json['score'] as num).toDouble(),
  content: (json['content'] as List<dynamic>?)?.map((e) => RunStepDetailsToolCallsFileSearchResultObjectContent.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The ID of the file that result was found in.
final String fileId;

/// The name of the file that result was found in.
final String fileName;

/// The score of the result. All values must be a floating point number between 0 and 1.
final double score;

/// The content of the result that was found. The content is only included if requested via the include query parameter.
final List<RunStepDetailsToolCallsFileSearchResultObjectContent>? content;

Map<String, dynamic> toJson() { return {
  'file_id': fileId,
  'file_name': fileName,
  'score': score,
  if (content != null) 'content': content?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('file_id') && json['file_id'] is String &&
      json.containsKey('file_name') && json['file_name'] is String &&
      json.containsKey('score') && json['score'] is num; } 
RunStepDetailsToolCallsFileSearchResultObject copyWith({String? fileId, String? fileName, double? score, List<RunStepDetailsToolCallsFileSearchResultObjectContent> Function()? content, }) { return RunStepDetailsToolCallsFileSearchResultObject(
  fileId: fileId ?? this.fileId,
  fileName: fileName ?? this.fileName,
  score: score ?? this.score,
  content: content != null ? content() : this.content,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RunStepDetailsToolCallsFileSearchResultObject &&
          fileId == other.fileId &&
          fileName == other.fileName &&
          score == other.score &&
          listEquals(content, other.content); } 
@override int get hashCode { return Object.hash(fileId, fileName, score, Object.hashAll(content ?? const [])); } 
@override String toString() { return 'RunStepDetailsToolCallsFileSearchResultObject(fileId: $fileId, fileName: $fileName, score: $score, content: $content)'; } 
 }
