// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Successful deletion of a code scanning analysis
@immutable final class CodeScanningAnalysisDeletion {const CodeScanningAnalysisDeletion({required this.nextAnalysisUrl, required this.confirmDeleteUrl, });

factory CodeScanningAnalysisDeletion.fromJson(Map<String, dynamic> json) { return CodeScanningAnalysisDeletion(
  nextAnalysisUrl: json['next_analysis_url'] != null ? Uri.parse(json['next_analysis_url'] as String) : null,
  confirmDeleteUrl: json['confirm_delete_url'] != null ? Uri.parse(json['confirm_delete_url'] as String) : null,
); }

/// Next deletable analysis in chain, without last analysis deletion confirmation
final Uri? nextAnalysisUrl;

/// Next deletable analysis in chain, with last analysis deletion confirmation
final Uri? confirmDeleteUrl;

Map<String, dynamic> toJson() { return {
  if (nextAnalysisUrl != null) 'next_analysis_url': nextAnalysisUrl?.toString(),
  if (confirmDeleteUrl != null) 'confirm_delete_url': confirmDeleteUrl?.toString(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('next_analysis_url') && json['next_analysis_url'] is String &&
      json.containsKey('confirm_delete_url') && json['confirm_delete_url'] is String; } 
CodeScanningAnalysisDeletion copyWith({Uri? Function()? nextAnalysisUrl, Uri? Function()? confirmDeleteUrl, }) { return CodeScanningAnalysisDeletion(
  nextAnalysisUrl: nextAnalysisUrl != null ? nextAnalysisUrl() : this.nextAnalysisUrl,
  confirmDeleteUrl: confirmDeleteUrl != null ? confirmDeleteUrl() : this.confirmDeleteUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CodeScanningAnalysisDeletion &&
          nextAnalysisUrl == other.nextAnalysisUrl &&
          confirmDeleteUrl == other.confirmDeleteUrl; } 
@override int get hashCode { return Object.hash(nextAnalysisUrl, confirmDeleteUrl); } 
@override String toString() { return 'CodeScanningAnalysisDeletion(nextAnalysisUrl: $nextAnalysisUrl, confirmDeleteUrl: $confirmDeleteUrl)'; } 
 }
