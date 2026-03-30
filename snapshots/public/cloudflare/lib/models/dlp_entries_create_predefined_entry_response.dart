// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dlp_predefined_entry.dart';final class DlpEntriesCreatePredefinedEntryResponse {const DlpEntriesCreatePredefinedEntryResponse({this.result});

factory DlpEntriesCreatePredefinedEntryResponse.fromJson(Map<String, dynamic> json) { return DlpEntriesCreatePredefinedEntryResponse(
  result: json['result'] != null ? DlpPredefinedEntry.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DlpPredefinedEntry? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DlpEntriesCreatePredefinedEntryResponse copyWith({DlpPredefinedEntry Function()? result}) { return DlpEntriesCreatePredefinedEntryResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpEntriesCreatePredefinedEntryResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DlpEntriesCreatePredefinedEntryResponse(result: $result)'; } 
 }
