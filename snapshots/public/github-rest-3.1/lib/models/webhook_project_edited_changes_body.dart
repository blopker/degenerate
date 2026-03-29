// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookProjectEditedChangesBody {const WebhookProjectEditedChangesBody({required this.from});

factory WebhookProjectEditedChangesBody.fromJson(Map<String, dynamic> json) { return WebhookProjectEditedChangesBody(
  from: json['from'] as String,
); }

/// The previous version of the body if the action was `edited`.
final String from;

Map<String, dynamic> toJson() { return {
  'from': from,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('from') && json['from'] is String; } 
WebhookProjectEditedChangesBody copyWith({String? from}) { return WebhookProjectEditedChangesBody(
  from: from ?? this.from,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookProjectEditedChangesBody &&
          from == other.from; } 
@override int get hashCode { return from.hashCode; } 
@override String toString() { return 'WebhookProjectEditedChangesBody(from: $from)'; } 
 }
