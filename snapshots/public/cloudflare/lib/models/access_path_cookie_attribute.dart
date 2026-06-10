// GENERATED CODE - DO NOT MODIFY BY HAND

/// Enables cookie paths to scope an application's JWT to the application path. If disabled, the JWT will scope to the hostname by default
extension type const AccessPathCookieAttribute(bool value) {
factory AccessPathCookieAttribute.fromJson(bool json) => AccessPathCookieAttribute(json);

bool toJson() => value;

}
