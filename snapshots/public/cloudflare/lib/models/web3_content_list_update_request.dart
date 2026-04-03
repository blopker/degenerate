// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'web3_content_list_action.dart';import 'web3_content_list_entry.dart';@immutable final class Web3ContentListUpdateRequest {const Web3ContentListUpdateRequest({required this.action, required this.entries, });

factory Web3ContentListUpdateRequest.fromJson(Map<String, dynamic> json) { return Web3ContentListUpdateRequest(
  action: Web3ContentListAction.fromJson(json['action'] as String),
  entries: (json['entries'] as List<dynamic>).map((e) => Web3ContentListEntry.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Behavior of the content list.
final Web3ContentListAction action;

/// Provides content list entries.
final List<Web3ContentListEntry> entries;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
  'entries': entries.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') &&
      json.containsKey('entries'); } 
Web3ContentListUpdateRequest copyWith({Web3ContentListAction? action, List<Web3ContentListEntry>? entries, }) { return Web3ContentListUpdateRequest(
  action: action ?? this.action,
  entries: entries ?? this.entries,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Web3ContentListUpdateRequest &&
          action == other.action &&
          listEquals(entries, other.entries); } 
@override int get hashCode { return Object.hash(action, Object.hashAll(entries)); } 
@override String toString() { return 'Web3ContentListUpdateRequest(action: $action, entries: $entries)'; } 
 }
