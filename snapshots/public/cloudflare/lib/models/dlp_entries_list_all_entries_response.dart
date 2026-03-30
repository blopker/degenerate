// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dlp_entry_with_upload_status.dart';final class DlpEntriesListAllEntriesResponse {const DlpEntriesListAllEntriesResponse({this.result});

factory DlpEntriesListAllEntriesResponse.fromJson(Map<String, dynamic> json) { return DlpEntriesListAllEntriesResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => DlpEntryWithUploadStatus.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<DlpEntryWithUploadStatus>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DlpEntriesListAllEntriesResponse copyWith({List<DlpEntryWithUploadStatus> Function()? result}) { return DlpEntriesListAllEntriesResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpEntriesListAllEntriesResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'DlpEntriesListAllEntriesResponse(result: $result)'; } 
 }
