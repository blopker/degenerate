// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dns_custom_nameservers_ns_name.dart';import 'dns_custom_nameservers_ns_set.dart';final class DnsCustomNameserversCustomNsInput {const DnsCustomNameserversCustomNsInput({required this.nsName, this.nsSet, });

factory DnsCustomNameserversCustomNsInput.fromJson(Map<String, dynamic> json) { return DnsCustomNameserversCustomNsInput(
  nsName: DnsCustomNameserversNsName.fromJson(json['ns_name'] as String),
  nsSet: json['ns_set'] != null ? DnsCustomNameserversNsSet.fromJson(json['ns_set'] as num) : null,
); }

final DnsCustomNameserversNsName nsName;

final DnsCustomNameserversNsSet? nsSet;

Map<String, dynamic> toJson() { return {
  'ns_name': nsName.toJson(),
  if (nsSet != null) 'ns_set': nsSet?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('ns_name'); } 
DnsCustomNameserversCustomNsInput copyWith({DnsCustomNameserversNsName? nsName, DnsCustomNameserversNsSet Function()? nsSet, }) { return DnsCustomNameserversCustomNsInput(
  nsName: nsName ?? this.nsName,
  nsSet: nsSet != null ? nsSet() : this.nsSet,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsCustomNameserversCustomNsInput &&
          nsName == other.nsName &&
          nsSet == other.nsSet; } 
@override int get hashCode { return Object.hash(nsName, nsSet); } 
@override String toString() { return 'DnsCustomNameserversCustomNsInput(nsName: $nsName, nsSet: $nsSet)'; } 
 }
