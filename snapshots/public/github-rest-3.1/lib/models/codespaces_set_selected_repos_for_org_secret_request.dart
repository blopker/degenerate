// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class CodespacesSetSelectedReposForOrgSecretRequest {const CodespacesSetSelectedReposForOrgSecretRequest({required this.selectedRepositoryIds});

factory CodespacesSetSelectedReposForOrgSecretRequest.fromJson(Map<String, dynamic> json) { return CodespacesSetSelectedReposForOrgSecretRequest(
  selectedRepositoryIds: (json['selected_repository_ids'] as List<dynamic>).map((e) => (e as num).toInt()).toList(),
); }

/// An array of repository ids that can access the organization secret. You can only provide a list of repository ids when the `visibility` is set to `selected`. You can add and remove individual repositories using the [Set selected repositories for an organization secret](https://docs.github.com/rest/codespaces/organization-secrets#set-selected-repositories-for-an-organization-secret) and [Remove selected repository from an organization secret](https://docs.github.com/rest/codespaces/organization-secrets#remove-selected-repository-from-an-organization-secret) endpoints.
final List<int> selectedRepositoryIds;

Map<String, dynamic> toJson() { return {
  'selected_repository_ids': selectedRepositoryIds,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('selected_repository_ids'); } 
CodespacesSetSelectedReposForOrgSecretRequest copyWith({List<int>? selectedRepositoryIds}) { return CodespacesSetSelectedReposForOrgSecretRequest(
  selectedRepositoryIds: selectedRepositoryIds ?? this.selectedRepositoryIds,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CodespacesSetSelectedReposForOrgSecretRequest &&
          listEquals(selectedRepositoryIds, other.selectedRepositoryIds); } 
@override int get hashCode { return Object.hashAll(selectedRepositoryIds).hashCode; } 
@override String toString() { return 'CodespacesSetSelectedReposForOrgSecretRequest(selectedRepositoryIds: $selectedRepositoryIds)'; } 
 }
