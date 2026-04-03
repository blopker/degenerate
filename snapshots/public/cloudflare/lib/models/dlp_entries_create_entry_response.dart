// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dlp_custom_entry.dart';@immutable final class DlpEntriesCreateEntryResponse {const DlpEntriesCreateEntryResponse({this.result});

factory DlpEntriesCreateEntryResponse.fromJson(Map<String, dynamic> json) { return DlpEntriesCreateEntryResponse(
  result: json['result'] != null ? DlpCustomEntry.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DlpCustomEntry? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DlpEntriesCreateEntryResponse copyWith({DlpCustomEntry Function()? result}) { return DlpEntriesCreateEntryResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpEntriesCreateEntryResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DlpEntriesCreateEntryResponse(result: $result)'; } 
 }
