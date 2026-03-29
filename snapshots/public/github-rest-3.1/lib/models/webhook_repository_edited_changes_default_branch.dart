// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookRepositoryEditedChangesDefaultBranch {const WebhookRepositoryEditedChangesDefaultBranch({required this.from});

factory WebhookRepositoryEditedChangesDefaultBranch.fromJson(Map<String, dynamic> json) { return WebhookRepositoryEditedChangesDefaultBranch(
  from: json['from'] as String,
); }

final String from;

Map<String, dynamic> toJson() { return {
  'from': from,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('from') && json['from'] is String; } 
WebhookRepositoryEditedChangesDefaultBranch copyWith({String? from}) { return WebhookRepositoryEditedChangesDefaultBranch(
  from: from ?? this.from,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookRepositoryEditedChangesDefaultBranch &&
          from == other.from; } 
@override int get hashCode { return from.hashCode; } 
@override String toString() { return 'WebhookRepositoryEditedChangesDefaultBranch(from: $from)'; } 
 }
