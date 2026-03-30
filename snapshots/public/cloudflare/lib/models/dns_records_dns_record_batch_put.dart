// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dns_records_identifier.dart';final class DnsRecordsDnsRecordBatchPut {const DnsRecordsDnsRecordBatchPut({required this.id});

factory DnsRecordsDnsRecordBatchPut.fromJson(Map<String, dynamic> json) { return DnsRecordsDnsRecordBatchPut(
  id: DnsRecordsIdentifier.fromJson(json['id'] as String),
); }

final DnsRecordsIdentifier id;

Map<String, dynamic> toJson() { return {
  'id': id.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id'); } 
DnsRecordsDnsRecordBatchPut copyWith({DnsRecordsIdentifier? id}) { return DnsRecordsDnsRecordBatchPut(
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsRecordsDnsRecordBatchPut &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'DnsRecordsDnsRecordBatchPut(id: $id)'; } 
 }
