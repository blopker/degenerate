// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookRepositoryEditedChangesHomepage {const WebhookRepositoryEditedChangesHomepage({required this.from});

factory WebhookRepositoryEditedChangesHomepage.fromJson(Map<String, dynamic> json) { return WebhookRepositoryEditedChangesHomepage(
  from: json['from'] as String?,
); }

final String? from;

Map<String, dynamic> toJson() { return {
  'from': ?from,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('from') && json['from'] is String; } 
WebhookRepositoryEditedChangesHomepage copyWith({String? Function()? from}) { return WebhookRepositoryEditedChangesHomepage(
  from: from != null ? from() : this.from,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookRepositoryEditedChangesHomepage &&
          from == other.from; } 
@override int get hashCode { return from.hashCode; } 
@override String toString() { return 'WebhookRepositoryEditedChangesHomepage(from: $from)'; } 
 }
