// GENERATED CODE - DO NOT MODIFY BY HAND

/// Determines whether global MFA settings apply to applications by default. The organization must have MFA enabled with at least one authentication method and a session duration configured.
extension type const AccessMfaRequiredForAllApps(bool value) {
factory AccessMfaRequiredForAllApps.fromJson(bool json) => AccessMfaRequiredForAllApps(json);

bool toJson() => value;

}
