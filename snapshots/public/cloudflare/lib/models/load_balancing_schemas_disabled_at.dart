// GENERATED CODE - DO NOT MODIFY BY HAND

/// This field shows up only if the pool is disabled. This field is set with the time the pool was disabled at.
extension type LoadBalancingSchemasDisabledAt(DateTime value) {
factory LoadBalancingSchemasDisabledAt.fromJson(String json) => LoadBalancingSchemasDisabledAt(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
