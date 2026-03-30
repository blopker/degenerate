// GENERATED CODE - DO NOT MODIFY BY HAND

final class DlpEntriesDeleteIntegrationEntryResponse {const DlpEntriesDeleteIntegrationEntryResponse({this.result});

factory DlpEntriesDeleteIntegrationEntryResponse.fromJson(Map<String, dynamic> json) { return DlpEntriesDeleteIntegrationEntryResponse(
  result: (json['result'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
); }

final Map<String,dynamic>? result;

Map<String, dynamic> toJson() { return {
  'result': ?result,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DlpEntriesDeleteIntegrationEntryResponse copyWith({Map<String, dynamic>? Function()? result}) { return DlpEntriesDeleteIntegrationEntryResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpEntriesDeleteIntegrationEntryResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DlpEntriesDeleteIntegrationEntryResponse(result: $result)'; } 
 }
