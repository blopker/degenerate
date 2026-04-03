// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CheckRunWithSimpleCheckSuiteOutput {const CheckRunWithSimpleCheckSuiteOutput({required this.annotationsCount, required this.annotationsUrl, required this.summary, required this.text, required this.title, });

factory CheckRunWithSimpleCheckSuiteOutput.fromJson(Map<String, dynamic> json) { return CheckRunWithSimpleCheckSuiteOutput(
  annotationsCount: (json['annotations_count'] as num).toInt(),
  annotationsUrl: Uri.parse(json['annotations_url'] as String),
  summary: json['summary'] as String?,
  text: json['text'] as String?,
  title: json['title'] as String?,
); }

final int annotationsCount;

final Uri annotationsUrl;

final String? summary;

final String? text;

final String? title;

Map<String, dynamic> toJson() { return {
  'annotations_count': annotationsCount,
  'annotations_url': annotationsUrl.toString(),
  'summary': ?summary,
  'text': ?text,
  'title': ?title,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('annotations_count') && json['annotations_count'] is num &&
      json.containsKey('annotations_url') && json['annotations_url'] is String &&
      json.containsKey('summary') && json['summary'] is String &&
      json.containsKey('text') && json['text'] is String &&
      json.containsKey('title') && json['title'] is String; } 
CheckRunWithSimpleCheckSuiteOutput copyWith({int? annotationsCount, Uri? annotationsUrl, String? Function()? summary, String? Function()? text, String? Function()? title, }) { return CheckRunWithSimpleCheckSuiteOutput(
  annotationsCount: annotationsCount ?? this.annotationsCount,
  annotationsUrl: annotationsUrl ?? this.annotationsUrl,
  summary: summary != null ? summary() : this.summary,
  text: text != null ? text() : this.text,
  title: title != null ? title() : this.title,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CheckRunWithSimpleCheckSuiteOutput &&
          annotationsCount == other.annotationsCount &&
          annotationsUrl == other.annotationsUrl &&
          summary == other.summary &&
          text == other.text &&
          title == other.title; } 
@override int get hashCode { return Object.hash(annotationsCount, annotationsUrl, summary, text, title); } 
@override String toString() { return 'CheckRunWithSimpleCheckSuiteOutput(annotationsCount: $annotationsCount, annotationsUrl: $annotationsUrl, summary: $summary, text: $text, title: $title)'; } 
 }
