// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ActionsSetSelectedRepositoriesEnabledGithubActionsOrganizationRequest {const ActionsSetSelectedRepositoriesEnabledGithubActionsOrganizationRequest({required this.selectedRepositoryIds});

factory ActionsSetSelectedRepositoriesEnabledGithubActionsOrganizationRequest.fromJson(Map<String, dynamic> json) { return ActionsSetSelectedRepositoriesEnabledGithubActionsOrganizationRequest(
  selectedRepositoryIds: (json['selected_repository_ids'] as List<dynamic>).map((e) => (e as num).toInt()).toList(),
); }

/// List of repository IDs to enable for GitHub Actions.
final List<int> selectedRepositoryIds;

Map<String, dynamic> toJson() { return {
  'selected_repository_ids': selectedRepositoryIds,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('selected_repository_ids'); } 
ActionsSetSelectedRepositoriesEnabledGithubActionsOrganizationRequest copyWith({List<int>? selectedRepositoryIds}) { return ActionsSetSelectedRepositoriesEnabledGithubActionsOrganizationRequest(
  selectedRepositoryIds: selectedRepositoryIds ?? this.selectedRepositoryIds,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActionsSetSelectedRepositoriesEnabledGithubActionsOrganizationRequest &&
          listEquals(selectedRepositoryIds, other.selectedRepositoryIds); } 
@override int get hashCode { return Object.hashAll(selectedRepositoryIds).hashCode; } 
@override String toString() { return 'ActionsSetSelectedRepositoriesEnabledGithubActionsOrganizationRequest(selectedRepositoryIds: $selectedRepositoryIds)'; } 
 }
