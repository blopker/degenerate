// GENERATED CODE - DO NOT MODIFY BY HAND

final class CheckRunOutput {const CheckRunOutput({required this.title, required this.summary, required this.text, required this.annotationsCount, required this.annotationsUrl, });

factory CheckRunOutput.fromJson(Map<String, dynamic> json) { return CheckRunOutput(
  title: json['title'] as String?,
  summary: json['summary'] as String?,
  text: json['text'] as String?,
  annotationsCount: (json['annotations_count'] as num).toInt(),
  annotationsUrl: Uri.parse(json['annotations_url'] as String),
); }

final String? title;

final String? summary;

final String? text;

final int annotationsCount;

final Uri annotationsUrl;

Map<String, dynamic> toJson() { return {
  'title': ?title,
  'summary': ?summary,
  'text': ?text,
  'annotations_count': annotationsCount,
  'annotations_url': annotationsUrl.toString(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('title') && json['title'] is String &&
      json.containsKey('summary') && json['summary'] is String &&
      json.containsKey('text') && json['text'] is String &&
      json.containsKey('annotations_count') && json['annotations_count'] is num &&
      json.containsKey('annotations_url') && json['annotations_url'] is String; } 
CheckRunOutput copyWith({String? Function()? title, String? Function()? summary, String? Function()? text, int? annotationsCount, Uri? annotationsUrl, }) { return CheckRunOutput(
  title: title != null ? title() : this.title,
  summary: summary != null ? summary() : this.summary,
  text: text != null ? text() : this.text,
  annotationsCount: annotationsCount ?? this.annotationsCount,
  annotationsUrl: annotationsUrl ?? this.annotationsUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CheckRunOutput &&
          title == other.title &&
          summary == other.summary &&
          text == other.text &&
          annotationsCount == other.annotationsCount &&
          annotationsUrl == other.annotationsUrl; } 
@override int get hashCode { return Object.hash(title, summary, text, annotationsCount, annotationsUrl); } 
@override String toString() { return 'CheckRunOutput(title: $title, summary: $summary, text: $text, annotationsCount: $annotationsCount, annotationsUrl: $annotationsUrl)'; } 
 }
