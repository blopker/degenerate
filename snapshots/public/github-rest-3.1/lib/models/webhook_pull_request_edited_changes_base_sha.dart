// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestEditedChangesBaseSha {const WebhookPullRequestEditedChangesBaseSha({required this.from});

factory WebhookPullRequestEditedChangesBaseSha.fromJson(Map<String, dynamic> json) { return WebhookPullRequestEditedChangesBaseSha(
  from: json['from'] as String,
); }

final String from;

Map<String, dynamic> toJson() { return {
  'from': from,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('from') && json['from'] is String; } 
WebhookPullRequestEditedChangesBaseSha copyWith({String? from}) { return WebhookPullRequestEditedChangesBaseSha(
  from: from ?? this.from,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestEditedChangesBaseSha &&
          from == other.from; } 
@override int get hashCode { return from.hashCode; } 
@override String toString() { return 'WebhookPullRequestEditedChangesBaseSha(from: $from)'; } 
 }
