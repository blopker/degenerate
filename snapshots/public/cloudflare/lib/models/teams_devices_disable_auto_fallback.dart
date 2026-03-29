// GENERATED CODE - DO NOT MODIFY BY HAND

/// If the `dns_server` field of a fallback domain is not present, the client will fall back to a best guess of the default/system DNS resolvers unless this policy option is set to `true`.
extension type const TeamsDevicesDisableAutoFallback(bool value) {
factory TeamsDevicesDisableAutoFallback.fromJson(bool json) => TeamsDevicesDisableAutoFallback(json);

bool toJson() => value;

}
