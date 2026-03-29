// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookProjectCardEditedChangesNote {const WebhookProjectCardEditedChangesNote({required this.from});

factory WebhookProjectCardEditedChangesNote.fromJson(Map<String, dynamic> json) { return WebhookProjectCardEditedChangesNote(
  from: json['from'] as String?,
); }

final String? from;

Map<String, dynamic> toJson() { return {
  'from': ?from,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('from') && json['from'] is String; } 
WebhookProjectCardEditedChangesNote copyWith({String? Function()? from}) { return WebhookProjectCardEditedChangesNote(
  from: from != null ? from() : this.from,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookProjectCardEditedChangesNote &&
          from == other.from; } 
@override int get hashCode { return from.hashCode; } 
@override String toString() { return 'WebhookProjectCardEditedChangesNote(from: $from)'; } 
 }
