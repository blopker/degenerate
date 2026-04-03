// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dlp_integration_entry.dart';@immutable final class DlpEntriesCreateIntegrationEntryResponse {const DlpEntriesCreateIntegrationEntryResponse({this.result});

factory DlpEntriesCreateIntegrationEntryResponse.fromJson(Map<String, dynamic> json) { return DlpEntriesCreateIntegrationEntryResponse(
  result: json['result'] != null ? DlpIntegrationEntry.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DlpIntegrationEntry? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DlpEntriesCreateIntegrationEntryResponse copyWith({DlpIntegrationEntry Function()? result}) { return DlpEntriesCreateIntegrationEntryResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpEntriesCreateIntegrationEntryResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DlpEntriesCreateIntegrationEntryResponse(result: $result)'; } 
 }
