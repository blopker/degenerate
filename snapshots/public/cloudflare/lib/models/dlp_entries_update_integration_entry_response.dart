// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dlp_integration_entry.dart';@immutable final class DlpEntriesUpdateIntegrationEntryResponse {const DlpEntriesUpdateIntegrationEntryResponse({this.result});

factory DlpEntriesUpdateIntegrationEntryResponse.fromJson(Map<String, dynamic> json) { return DlpEntriesUpdateIntegrationEntryResponse(
  result: json['result'] != null ? DlpIntegrationEntry.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DlpIntegrationEntry? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DlpEntriesUpdateIntegrationEntryResponse copyWith({DlpIntegrationEntry Function()? result}) { return DlpEntriesUpdateIntegrationEntryResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpEntriesUpdateIntegrationEntryResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DlpEntriesUpdateIntegrationEntryResponse(result: $result)'; } 
 }
