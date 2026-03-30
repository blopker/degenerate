// GENERATED CODE - DO NOT MODIFY BY HAND

final class DnsRecordsCnameRecordSettings {const DnsRecordsCnameRecordSettings({this.flattenCname = false});

factory DnsRecordsCnameRecordSettings.fromJson(Map<String, dynamic> json) { return DnsRecordsCnameRecordSettings(
  flattenCname: json.containsKey('flatten_cname') ? json['flatten_cname'] as bool : false,
); }

/// If enabled, causes the CNAME record to be resolved externally and the resulting address records (e.g., A and AAAA) to be returned instead of the CNAME record itself. This setting is unavailable for proxied records, since they are always flattened.
final bool flattenCname;

Map<String, dynamic> toJson() { return {
  'flatten_cname': flattenCname,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'flatten_cname'}.contains(key)); } 
DnsRecordsCnameRecordSettings copyWith({bool Function()? flattenCname}) { return DnsRecordsCnameRecordSettings(
  flattenCname: flattenCname != null ? flattenCname() : this.flattenCname,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsRecordsCnameRecordSettings &&
          flattenCname == other.flattenCname; } 
@override int get hashCode { return flattenCname.hashCode; } 
@override String toString() { return 'DnsRecordsCnameRecordSettings(flattenCname: $flattenCname)'; } 
 }
