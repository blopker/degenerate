// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dns_records_identifier.dart';@immutable final class DnsRecordsDnsRecordBatchPutRequest {const DnsRecordsDnsRecordBatchPutRequest({required this.id});

factory DnsRecordsDnsRecordBatchPutRequest.fromJson(Map<String, dynamic> json) {return DnsRecordsDnsRecordBatchPutRequest(
  id: DnsRecordsIdentifier.fromJson(json['id'] as String),
);}

/// Identifier.
final DnsRecordsIdentifier id;

Map<String, dynamic> toJson() {return {
  'id': id.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('id');}
DnsRecordsDnsRecordBatchPutRequest copyWith({DnsRecordsIdentifier? id}) {return DnsRecordsDnsRecordBatchPutRequest(
  id: id ?? this.id,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is DnsRecordsDnsRecordBatchPutRequest &&
          id == other.id;}
@override int get hashCode {return id.hashCode;}
@override String toString() {return 'DnsRecordsDnsRecordBatchPutRequest(id: $id)';}
}
