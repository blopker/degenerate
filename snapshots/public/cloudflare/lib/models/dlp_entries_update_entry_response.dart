// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'custom_entry.dart';import 'dlp_entry.dart';import 'document_fingerprint_entry.dart';import 'exact_data_entry.dart';import 'integration_entry.dart';import 'predefined_entry.dart';import 'word_list_entry.dart';@immutable final class DlpEntriesUpdateEntryResponse {const DlpEntriesUpdateEntryResponse({this.result});

factory DlpEntriesUpdateEntryResponse.fromJson(Map<String, dynamic> json) { return DlpEntriesUpdateEntryResponse(
  result: json['result'] != null ? OneOf6.parse(json['result'], fromA: (v) => CustomEntry.fromJson(v as Map<String, dynamic>), fromB: (v) => PredefinedEntry.fromJson(v as Map<String, dynamic>), fromC: (v) => IntegrationEntry.fromJson(v as Map<String, dynamic>), fromD: (v) => ExactDataEntry.fromJson(v as Map<String, dynamic>), fromE: (v) => DocumentFingerprintEntry.fromJson(v as Map<String, dynamic>), fromF: (v) => WordListEntry.fromJson(v as Map<String, dynamic>),) : null,
); }

final DlpEntry? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DlpEntriesUpdateEntryResponse copyWith({DlpEntry Function()? result}) { return DlpEntriesUpdateEntryResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpEntriesUpdateEntryResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DlpEntriesUpdateEntryResponse(result: $result)'; } 
 }
