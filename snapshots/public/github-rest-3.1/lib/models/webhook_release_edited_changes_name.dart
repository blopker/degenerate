// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookReleaseEditedChangesName {const WebhookReleaseEditedChangesName({required this.from});

factory WebhookReleaseEditedChangesName.fromJson(Map<String, dynamic> json) { return WebhookReleaseEditedChangesName(
  from: json['from'] as String,
); }

/// The previous version of the name if the action was `edited`.
final String from;

Map<String, dynamic> toJson() { return {
  'from': from,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('from') && json['from'] is String; } 
WebhookReleaseEditedChangesName copyWith({String? from}) { return WebhookReleaseEditedChangesName(
  from: from ?? this.from,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookReleaseEditedChangesName &&
          from == other.from; } 
@override int get hashCode { return from.hashCode; } 
@override String toString() { return 'WebhookReleaseEditedChangesName(from: $from)'; } 
 }
