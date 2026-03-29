// GENERATED CODE - DO NOT MODIFY BY HAND

/// Limit the returned results to history records older than the specified date. This must be a timestamp that conforms to RFC3339.
extension type AaaBefore(DateTime value) {
factory AaaBefore.fromJson(String json) => AaaBefore(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
