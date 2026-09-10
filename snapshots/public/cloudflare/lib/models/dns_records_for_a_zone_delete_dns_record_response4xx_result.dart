// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dns_records_identifier.dart';@immutable final class DnsRecordsForAZoneDeleteDnsRecordResponse4xxResult {const DnsRecordsForAZoneDeleteDnsRecordResponse4xxResult({this.id});

factory DnsRecordsForAZoneDeleteDnsRecordResponse4xxResult.fromJson(Map<String, dynamic> json) { return DnsRecordsForAZoneDeleteDnsRecordResponse4xxResult(
  id: json['id'] != null ? DnsRecordsIdentifier.fromJson(json['id'] as String) : null,
); }

/// Identifier.
final DnsRecordsIdentifier? id;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
DnsRecordsForAZoneDeleteDnsRecordResponse4xxResult copyWith({DnsRecordsIdentifier? Function()? id}) { return DnsRecordsForAZoneDeleteDnsRecordResponse4xxResult(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsRecordsForAZoneDeleteDnsRecordResponse4xxResult &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'DnsRecordsForAZoneDeleteDnsRecordResponse4xxResult(id: $id)'; } 
 }
