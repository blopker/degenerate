// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Sets the direction by which results are ordered.
@immutable final class SpectrumApplicationsListSpectrumApplicationsDirection {const SpectrumApplicationsListSpectrumApplicationsDirection._(this.value);

factory SpectrumApplicationsListSpectrumApplicationsDirection.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => SpectrumApplicationsListSpectrumApplicationsDirection._(json),
}; }

static const SpectrumApplicationsListSpectrumApplicationsDirection asc = SpectrumApplicationsListSpectrumApplicationsDirection._('asc');

static const SpectrumApplicationsListSpectrumApplicationsDirection desc = SpectrumApplicationsListSpectrumApplicationsDirection._('desc');

static const List<SpectrumApplicationsListSpectrumApplicationsDirection> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SpectrumApplicationsListSpectrumApplicationsDirection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SpectrumApplicationsListSpectrumApplicationsDirection($value)'; } 
 }
