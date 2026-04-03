// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The HTTP method used to access the endpoint.
@immutable final class ShieldMethod {const ShieldMethod._(this.value);

factory ShieldMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  'HEAD' => head,
  'OPTIONS' => options,
  'PUT' => put,
  'DELETE' => delete,
  'CONNECT' => connect,
  'PATCH' => patch,
  'TRACE' => trace,
  _ => ShieldMethod._(json),
}; }

static const ShieldMethod $get = ShieldMethod._('GET');

static const ShieldMethod post = ShieldMethod._('POST');

static const ShieldMethod head = ShieldMethod._('HEAD');

static const ShieldMethod options = ShieldMethod._('OPTIONS');

static const ShieldMethod put = ShieldMethod._('PUT');

static const ShieldMethod delete = ShieldMethod._('DELETE');

static const ShieldMethod connect = ShieldMethod._('CONNECT');

static const ShieldMethod patch = ShieldMethod._('PATCH');

static const ShieldMethod trace = ShieldMethod._('TRACE');

static const List<ShieldMethod> values = [$get, post, head, options, put, delete, connect, patch, trace];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ShieldMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ShieldMethod($value)'; } 
 }
