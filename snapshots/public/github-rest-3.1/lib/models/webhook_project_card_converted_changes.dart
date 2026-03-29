// GENERATED CODE - DO NOT MODIFY BY HAND

import 'webhook_project_card_converted_changes_note.dart';final class WebhookProjectCardConvertedChanges {const WebhookProjectCardConvertedChanges({required this.note});

factory WebhookProjectCardConvertedChanges.fromJson(Map<String, dynamic> json) { return WebhookProjectCardConvertedChanges(
  note: WebhookProjectCardConvertedChangesNote.fromJson(json['note'] as Map<String, dynamic>),
); }

final WebhookProjectCardConvertedChangesNote note;

Map<String, dynamic> toJson() { return {
  'note': note.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('note'); } 
WebhookProjectCardConvertedChanges copyWith({WebhookProjectCardConvertedChangesNote? note}) { return WebhookProjectCardConvertedChanges(
  note: note ?? this.note,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookProjectCardConvertedChanges &&
          note == other.note; } 
@override int get hashCode { return note.hashCode; } 
@override String toString() { return 'WebhookProjectCardConvertedChanges(note: $note)'; } 
 }
