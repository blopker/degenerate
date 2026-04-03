// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dlp_entry_with_shared_profiles.dart';@immutable final class DlpEntriesGetDlpEntryResponse {const DlpEntriesGetDlpEntryResponse({this.result});

factory DlpEntriesGetDlpEntryResponse.fromJson(Map<String, dynamic> json) { return DlpEntriesGetDlpEntryResponse(
  result: json['result'] != null ? DlpEntryWithSharedProfiles.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DlpEntryWithSharedProfiles? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DlpEntriesGetDlpEntryResponse copyWith({DlpEntryWithSharedProfiles Function()? result}) { return DlpEntriesGetDlpEntryResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpEntriesGetDlpEntryResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DlpEntriesGetDlpEntryResponse(result: $result)'; } 
 }
