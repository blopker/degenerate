// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dlp_predefined_entry.dart';@immutable final class DlpEntriesUpdatePredefinedEntryResponse {const DlpEntriesUpdatePredefinedEntryResponse({this.result});

factory DlpEntriesUpdatePredefinedEntryResponse.fromJson(Map<String, dynamic> json) { return DlpEntriesUpdatePredefinedEntryResponse(
  result: json['result'] != null ? DlpPredefinedEntry.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DlpPredefinedEntry? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DlpEntriesUpdatePredefinedEntryResponse copyWith({DlpPredefinedEntry Function()? result}) { return DlpEntriesUpdatePredefinedEntryResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpEntriesUpdatePredefinedEntryResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DlpEntriesUpdatePredefinedEntryResponse(result: $result)'; } 
 }
