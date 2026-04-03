// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The CISA defined Traffic Light Protocol (TLP).
@immutable final class CloudforceOneRequestsTlp {const CloudforceOneRequestsTlp._(this.value);

factory CloudforceOneRequestsTlp.fromJson(String json) { return switch (json) {
  'clear' => clear,
  'amber' => amber,
  'amber-strict' => amberStrict,
  'green' => green,
  'red' => red,
  _ => CloudforceOneRequestsTlp._(json),
}; }

static const CloudforceOneRequestsTlp clear = CloudforceOneRequestsTlp._('clear');

static const CloudforceOneRequestsTlp amber = CloudforceOneRequestsTlp._('amber');

static const CloudforceOneRequestsTlp amberStrict = CloudforceOneRequestsTlp._('amber-strict');

static const CloudforceOneRequestsTlp green = CloudforceOneRequestsTlp._('green');

static const CloudforceOneRequestsTlp red = CloudforceOneRequestsTlp._('red');

static const List<CloudforceOneRequestsTlp> values = [clear, amber, amberStrict, green, red];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CloudforceOneRequestsTlp && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CloudforceOneRequestsTlp($value)'; } 
 }
