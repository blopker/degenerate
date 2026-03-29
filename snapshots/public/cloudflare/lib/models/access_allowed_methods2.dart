// GENERATED CODE - DO NOT MODIFY BY HAND

final class AccessAllowedMethods2 {const AccessAllowedMethods2._(this.value);

factory AccessAllowedMethods2.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  'HEAD' => head,
  'PUT' => put,
  'DELETE' => delete,
  'CONNECT' => connect,
  'OPTIONS' => options,
  'TRACE' => trace,
  'PATCH' => patch,
  _ => AccessAllowedMethods2._(json),
}; }

static const AccessAllowedMethods2 $get = AccessAllowedMethods2._('GET');

static const AccessAllowedMethods2 post = AccessAllowedMethods2._('POST');

static const AccessAllowedMethods2 head = AccessAllowedMethods2._('HEAD');

static const AccessAllowedMethods2 put = AccessAllowedMethods2._('PUT');

static const AccessAllowedMethods2 delete = AccessAllowedMethods2._('DELETE');

static const AccessAllowedMethods2 connect = AccessAllowedMethods2._('CONNECT');

static const AccessAllowedMethods2 options = AccessAllowedMethods2._('OPTIONS');

static const AccessAllowedMethods2 trace = AccessAllowedMethods2._('TRACE');

static const AccessAllowedMethods2 patch = AccessAllowedMethods2._('PATCH');

static const List<AccessAllowedMethods2> values = [$get, post, head, put, delete, connect, options, trace, patch];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessAllowedMethods2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessAllowedMethods2($value)'; } 
 }
