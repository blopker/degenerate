// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'web3_content_list_entry.dart';@immutable final class Web3ContentListEntryCollectionResponseResult {const Web3ContentListEntryCollectionResponseResult({this.entries});

factory Web3ContentListEntryCollectionResponseResult.fromJson(Map<String, dynamic> json) { return Web3ContentListEntryCollectionResponseResult(
  entries: (json['entries'] as List<dynamic>?)?.map((e) => Web3ContentListEntry.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Provides content list entries.
final List<Web3ContentListEntry>? entries;

Map<String, dynamic> toJson() { return {
  if (entries != null) 'entries': entries?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'entries'}.contains(key)); } 
Web3ContentListEntryCollectionResponseResult copyWith({List<Web3ContentListEntry> Function()? entries}) { return Web3ContentListEntryCollectionResponseResult(
  entries: entries != null ? entries() : this.entries,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Web3ContentListEntryCollectionResponseResult &&
          listEquals(entries, other.entries); } 
@override int get hashCode { return Object.hashAll(entries ?? const []).hashCode; } 
@override String toString() { return 'Web3ContentListEntryCollectionResponseResult(entries: $entries)'; } 
 }
