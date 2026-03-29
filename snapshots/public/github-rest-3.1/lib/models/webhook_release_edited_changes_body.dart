// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookReleaseEditedChangesBody {const WebhookReleaseEditedChangesBody({required this.from});

factory WebhookReleaseEditedChangesBody.fromJson(Map<String, dynamic> json) { return WebhookReleaseEditedChangesBody(
  from: json['from'] as String,
); }

/// The previous version of the body if the action was `edited`.
final String from;

Map<String, dynamic> toJson() { return {
  'from': from,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('from') && json['from'] is String; } 
WebhookReleaseEditedChangesBody copyWith({String? from}) { return WebhookReleaseEditedChangesBody(
  from: from ?? this.from,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookReleaseEditedChangesBody &&
          from == other.from; } 
@override int get hashCode { return from.hashCode; } 
@override String toString() { return 'WebhookReleaseEditedChangesBody(from: $from)'; } 
 }
