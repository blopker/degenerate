// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tracing_configuration2.dart';/// Default tracing mode for the session.
/// 
@immutable final class RealtimeSessionCreateRequestTracingVariant1 {const RealtimeSessionCreateRequestTracingVariant1._(this.value);

factory RealtimeSessionCreateRequestTracingVariant1.fromJson(String json) { return switch (json) {
  'auto' => auto,
  _ => RealtimeSessionCreateRequestTracingVariant1._(json),
}; }

static const RealtimeSessionCreateRequestTracingVariant1 auto = RealtimeSessionCreateRequestTracingVariant1._('auto');

static const List<RealtimeSessionCreateRequestTracingVariant1> values = [auto];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeSessionCreateRequestTracingVariant1 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimeSessionCreateRequestTracingVariant1($value)'; } 
 }
typedef RealtimeSessionCreateRequestTracing = OneOf2<RealtimeSessionCreateRequestTracingVariant1,TracingConfiguration2>;
