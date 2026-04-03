// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class SecurityAdvisoriesListOrgRepositoryAdvisoriesDirection {const SecurityAdvisoriesListOrgRepositoryAdvisoriesDirection._(this.value);

factory SecurityAdvisoriesListOrgRepositoryAdvisoriesDirection.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => SecurityAdvisoriesListOrgRepositoryAdvisoriesDirection._(json),
}; }

static const SecurityAdvisoriesListOrgRepositoryAdvisoriesDirection asc = SecurityAdvisoriesListOrgRepositoryAdvisoriesDirection._('asc');

static const SecurityAdvisoriesListOrgRepositoryAdvisoriesDirection desc = SecurityAdvisoriesListOrgRepositoryAdvisoriesDirection._('desc');

static const List<SecurityAdvisoriesListOrgRepositoryAdvisoriesDirection> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecurityAdvisoriesListOrgRepositoryAdvisoriesDirection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SecurityAdvisoriesListOrgRepositoryAdvisoriesDirection($value)'; } 
 }
