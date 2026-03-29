// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookIssuesEditedChangesTitle {const WebhookIssuesEditedChangesTitle({required this.from});

factory WebhookIssuesEditedChangesTitle.fromJson(Map<String, dynamic> json) { return WebhookIssuesEditedChangesTitle(
  from: json['from'] as String,
); }

/// The previous version of the title.
final String from;

Map<String, dynamic> toJson() { return {
  'from': from,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('from') && json['from'] is String; } 
WebhookIssuesEditedChangesTitle copyWith({String? from}) { return WebhookIssuesEditedChangesTitle(
  from: from ?? this.from,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookIssuesEditedChangesTitle &&
          from == other.from; } 
@override int get hashCode { return from.hashCode; } 
@override String toString() { return 'WebhookIssuesEditedChangesTitle(from: $from)'; } 
 }
