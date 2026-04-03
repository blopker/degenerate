// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Summarization2 {const Summarization2({this.summary});

factory Summarization2.fromJson(Map<String, dynamic> json) { return Summarization2(
  summary: json['summary'] as String?,
); }

/// The summarized version of the input text
final String? summary;

Map<String, dynamic> toJson() { return {
  'summary': ?summary,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'summary'}.contains(key)); } 
Summarization2 copyWith({String Function()? summary}) { return Summarization2(
  summary: summary != null ? summary() : this.summary,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Summarization2 &&
          summary == other.summary; } 
@override int get hashCode { return summary.hashCode; } 
@override String toString() { return 'Summarization2(summary: $summary)'; } 
 }
