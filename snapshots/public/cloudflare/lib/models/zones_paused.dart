// GENERATED CODE - DO NOT MODIFY BY HAND

/// Indicates whether the zone is only using Cloudflare DNS services. A
/// true value means the zone will not receive security or performance
/// benefits.
/// 
extension type const ZonesPaused(bool value) {
factory ZonesPaused.fromJson(bool json) => ZonesPaused(json);

bool toJson() => value;

}
