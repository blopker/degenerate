// GENERATED CODE - DO NOT MODIFY BY HAND

final class MilestonedIssueEventMilestone {const MilestonedIssueEventMilestone({required this.title});

factory MilestonedIssueEventMilestone.fromJson(Map<String, dynamic> json) { return MilestonedIssueEventMilestone(
  title: json['title'] as String,
); }

final String title;

Map<String, dynamic> toJson() { return {
  'title': title,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('title') && json['title'] is String; } 
MilestonedIssueEventMilestone copyWith({String? title}) { return MilestonedIssueEventMilestone(
  title: title ?? this.title,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MilestonedIssueEventMilestone &&
          title == other.title; } 
@override int get hashCode { return title.hashCode; } 
@override String toString() { return 'MilestonedIssueEventMilestone(title: $title)'; } 
 }
