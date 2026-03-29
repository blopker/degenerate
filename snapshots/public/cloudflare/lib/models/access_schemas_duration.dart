// GENERATED CODE - DO NOT MODIFY BY HAND

/// The duration for how long the service token will be valid. Must be in the format `300ms` or `2h45m`. Valid time units are: ns, us (or µs), ms, s, m, h. The default is 1 year in hours (8760h).
extension type const AccessSchemasDuration(String value) {
factory AccessSchemasDuration.fromJson(String json) => AccessSchemasDuration(json);

String toJson() => value;

}
