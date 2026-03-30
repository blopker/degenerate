// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dns_records_identifier.dart';final class DnsRecordsDnsRecordBatchPatch {const DnsRecordsDnsRecordBatchPatch({required this.id});

factory DnsRecordsDnsRecordBatchPatch.fromJson(Map<String, dynamic> json) { return DnsRecordsDnsRecordBatchPatch(
  id: DnsRecordsIdentifier.fromJson(json['id'] as String),
); }

final DnsRecordsIdentifier id;

Map<String, dynamic> toJson() { return {
  'id': id.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id'); } 
DnsRecordsDnsRecordBatchPatch copyWith({DnsRecordsIdentifier? id}) { return DnsRecordsDnsRecordBatchPatch(
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsRecordsDnsRecordBatchPatch &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'DnsRecordsDnsRecordBatchPatch(id: $id)'; } 
 }
