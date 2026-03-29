// GENERATED CODE - DO NOT MODIFY BY HAND

/// Allows options preflight requests to bypass Access authentication and go directly to the origin. Cannot turn on if cors_headers is set.
extension type const AccessOptionsPreflightBypass(bool value) {
factory AccessOptionsPreflightBypass.fromJson(bool json) => AccessOptionsPreflightBypass(json);

bool toJson() => value;

}
