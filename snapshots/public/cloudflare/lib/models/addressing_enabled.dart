// GENERATED CODE - DO NOT MODIFY BY HAND

/// Whether the Address Map is enabled or not. Cloudflare's DNS will not respond with IP addresses on an Address Map until the map is enabled.
extension type const AddressingEnabled(bool value) {
factory AddressingEnabled.fromJson(bool json) => AddressingEnabled(json);

bool toJson() => value;

}
