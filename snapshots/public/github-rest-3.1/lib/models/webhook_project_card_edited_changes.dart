// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'webhook_project_card_edited_changes_note.dart';@immutable final class WebhookProjectCardEditedChanges {const WebhookProjectCardEditedChanges({required this.note});

factory WebhookProjectCardEditedChanges.fromJson(Map<String, dynamic> json) { return WebhookProjectCardEditedChanges(
  note: WebhookProjectCardEditedChangesNote.fromJson(json['note'] as Map<String, dynamic>),
); }

final WebhookProjectCardEditedChangesNote note;

Map<String, dynamic> toJson() { return {
  'note': note.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('note'); } 
WebhookProjectCardEditedChanges copyWith({WebhookProjectCardEditedChangesNote? note}) { return WebhookProjectCardEditedChanges(
  note: note ?? this.note,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookProjectCardEditedChanges &&
          note == other.note; } 
@override int get hashCode { return note.hashCode; } 
@override String toString() { return 'WebhookProjectCardEditedChanges(note: $note)'; } 
 }
