// GENERATED CODE - DO NOT MODIFY BY HAND

/// Whether to flatten all CNAME records in the zone. Note that, due to DNS limitations, a CNAME record at the zone apex will always be flattened.
extension type const DnsSettingsFlattenAllCnames(bool value) {
factory DnsSettingsFlattenAllCnames.fromJson(bool json) => DnsSettingsFlattenAllCnames(json);

bool toJson() => value;

}
