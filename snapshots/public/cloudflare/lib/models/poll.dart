// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Indicates you've finished uploading to tell the D1 to start consuming it
@immutable final class PollAction {const PollAction._(this.value);

factory PollAction.fromJson(String json) { return switch (json) {
  'poll' => poll,
  _ => PollAction._(json),
}; }

static const PollAction poll = PollAction._('poll');

static const List<PollAction> values = [poll];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PollAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PollAction($value)'; } 
 }
@immutable final class Poll {const Poll({required this.action, required this.currentBookmark, });

factory Poll.fromJson(Map<String, dynamic> json) { return Poll(
  action: PollAction.fromJson(json['action'] as String),
  currentBookmark: json['current_bookmark'] as String,
); }

/// Indicates you've finished uploading to tell the D1 to start consuming it
final PollAction action;

/// This identifies the currently-running import, checking its status.
final String currentBookmark;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
  'current_bookmark': currentBookmark,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') &&
      json.containsKey('current_bookmark') && json['current_bookmark'] is String; } 
Poll copyWith({PollAction? action, String? currentBookmark, }) { return Poll(
  action: action ?? this.action,
  currentBookmark: currentBookmark ?? this.currentBookmark,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Poll &&
          action == other.action &&
          currentBookmark == other.currentBookmark; } 
@override int get hashCode { return Object.hash(action, currentBookmark); } 
@override String toString() { return 'Poll(action: $action, currentBookmark: $currentBookmark)'; } 
 }
