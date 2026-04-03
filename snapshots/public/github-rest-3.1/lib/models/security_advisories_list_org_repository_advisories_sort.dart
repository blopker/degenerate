// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class SecurityAdvisoriesListOrgRepositoryAdvisoriesSort {const SecurityAdvisoriesListOrgRepositoryAdvisoriesSort._(this.value);

factory SecurityAdvisoriesListOrgRepositoryAdvisoriesSort.fromJson(String json) { return switch (json) {
  'created' => created,
  'updated' => updated,
  'published' => published,
  _ => SecurityAdvisoriesListOrgRepositoryAdvisoriesSort._(json),
}; }

static const SecurityAdvisoriesListOrgRepositoryAdvisoriesSort created = SecurityAdvisoriesListOrgRepositoryAdvisoriesSort._('created');

static const SecurityAdvisoriesListOrgRepositoryAdvisoriesSort updated = SecurityAdvisoriesListOrgRepositoryAdvisoriesSort._('updated');

static const SecurityAdvisoriesListOrgRepositoryAdvisoriesSort published = SecurityAdvisoriesListOrgRepositoryAdvisoriesSort._('published');

static const List<SecurityAdvisoriesListOrgRepositoryAdvisoriesSort> values = [created, updated, published];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecurityAdvisoriesListOrgRepositoryAdvisoriesSort && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SecurityAdvisoriesListOrgRepositoryAdvisoriesSort($value)'; } 
 }
