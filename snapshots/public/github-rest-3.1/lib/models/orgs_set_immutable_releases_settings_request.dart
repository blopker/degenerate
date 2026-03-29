// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The policy that controls how immutable releases are enforced in the organization.
final class OrgsSetImmutableReleasesSettingsRequestEnforcedRepositories {const OrgsSetImmutableReleasesSettingsRequestEnforcedRepositories._(this.value);

factory OrgsSetImmutableReleasesSettingsRequestEnforcedRepositories.fromJson(String json) { return switch (json) {
  'all' => all,
  'none' => none,
  'selected' => selected,
  _ => OrgsSetImmutableReleasesSettingsRequestEnforcedRepositories._(json),
}; }

static const OrgsSetImmutableReleasesSettingsRequestEnforcedRepositories all = OrgsSetImmutableReleasesSettingsRequestEnforcedRepositories._('all');

static const OrgsSetImmutableReleasesSettingsRequestEnforcedRepositories none = OrgsSetImmutableReleasesSettingsRequestEnforcedRepositories._('none');

static const OrgsSetImmutableReleasesSettingsRequestEnforcedRepositories selected = OrgsSetImmutableReleasesSettingsRequestEnforcedRepositories._('selected');

static const List<OrgsSetImmutableReleasesSettingsRequestEnforcedRepositories> values = [all, none, selected];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsSetImmutableReleasesSettingsRequestEnforcedRepositories && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'OrgsSetImmutableReleasesSettingsRequestEnforcedRepositories($value)'; } 
 }
final class OrgsSetImmutableReleasesSettingsRequest {const OrgsSetImmutableReleasesSettingsRequest({required this.enforcedRepositories, this.selectedRepositoryIds, });

factory OrgsSetImmutableReleasesSettingsRequest.fromJson(Map<String, dynamic> json) { return OrgsSetImmutableReleasesSettingsRequest(
  enforcedRepositories: OrgsSetImmutableReleasesSettingsRequestEnforcedRepositories.fromJson(json['enforced_repositories'] as String),
  selectedRepositoryIds: (json['selected_repository_ids'] as List<dynamic>?)?.map((e) => (e as num).toInt()).toList(),
); }

/// The policy that controls how immutable releases are enforced in the organization.
final OrgsSetImmutableReleasesSettingsRequestEnforcedRepositories enforcedRepositories;

/// An array of repository ids for which immutable releases enforcement should be applied. You can only provide a list of repository ids when the `enforced_repositories` is set to `selected`. You can add and remove individual repositories using the [Enable a selected repository for immutable releases in an organization](https://docs.github.com/rest/orgs/orgs#enable-a-selected-repository-for-immutable-releases-in-an-organization) and [Disable a selected repository for immutable releases in an organization](https://docs.github.com/rest/orgs/orgs#disable-a-selected-repository-for-immutable-releases-in-an-organization) endpoints.
final List<int>? selectedRepositoryIds;

Map<String, dynamic> toJson() { return {
  'enforced_repositories': enforcedRepositories.toJson(),
  'selected_repository_ids': ?selectedRepositoryIds,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enforced_repositories'); } 
OrgsSetImmutableReleasesSettingsRequest copyWith({OrgsSetImmutableReleasesSettingsRequestEnforcedRepositories? enforcedRepositories, List<int> Function()? selectedRepositoryIds, }) { return OrgsSetImmutableReleasesSettingsRequest(
  enforcedRepositories: enforcedRepositories ?? this.enforcedRepositories,
  selectedRepositoryIds: selectedRepositoryIds != null ? selectedRepositoryIds() : this.selectedRepositoryIds,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is OrgsSetImmutableReleasesSettingsRequest &&
          enforcedRepositories == other.enforcedRepositories &&
          listEquals(selectedRepositoryIds, other.selectedRepositoryIds); } 
@override int get hashCode { return Object.hash(enforcedRepositories, Object.hashAll(selectedRepositoryIds ?? const [])); } 
@override String toString() { return 'OrgsSetImmutableReleasesSettingsRequest(enforcedRepositories: $enforcedRepositories, selectedRepositoryIds: $selectedRepositoryIds)'; } 
 }
