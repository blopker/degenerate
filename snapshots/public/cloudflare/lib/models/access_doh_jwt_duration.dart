// GENERATED CODE - DO NOT MODIFY BY HAND

/// The duration the DoH JWT is valid for. Must be in the format `300ms` or `2h45m`. Valid time units are: ns, us (or µs), ms, s, m, h.  Note that the maximum duration for this setting is the same as the key rotation period on the account. Default expiration is 24h
extension type const AccessDohJwtDuration(String value) {
factory AccessDohJwtDuration.fromJson(String json) => AccessDohJwtDuration(json);

String toJson() => value;

}
