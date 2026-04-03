// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class SecurityAdvisoriesListOrgRepositoryAdvisoriesState {const SecurityAdvisoriesListOrgRepositoryAdvisoriesState._(this.value);

factory SecurityAdvisoriesListOrgRepositoryAdvisoriesState.fromJson(String json) { return switch (json) {
  'triage' => triage,
  'draft' => draft,
  'published' => published,
  'closed' => closed,
  _ => SecurityAdvisoriesListOrgRepositoryAdvisoriesState._(json),
}; }

static const SecurityAdvisoriesListOrgRepositoryAdvisoriesState triage = SecurityAdvisoriesListOrgRepositoryAdvisoriesState._('triage');

static const SecurityAdvisoriesListOrgRepositoryAdvisoriesState draft = SecurityAdvisoriesListOrgRepositoryAdvisoriesState._('draft');

static const SecurityAdvisoriesListOrgRepositoryAdvisoriesState published = SecurityAdvisoriesListOrgRepositoryAdvisoriesState._('published');

static const SecurityAdvisoriesListOrgRepositoryAdvisoriesState closed = SecurityAdvisoriesListOrgRepositoryAdvisoriesState._('closed');

static const List<SecurityAdvisoriesListOrgRepositoryAdvisoriesState> values = [triage, draft, published, closed];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecurityAdvisoriesListOrgRepositoryAdvisoriesState && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SecurityAdvisoriesListOrgRepositoryAdvisoriesState($value)'; } 
 }
