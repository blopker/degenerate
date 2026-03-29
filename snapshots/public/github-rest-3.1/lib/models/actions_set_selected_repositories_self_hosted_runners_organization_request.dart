// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class ActionsSetSelectedRepositoriesSelfHostedRunnersOrganizationRequest {const ActionsSetSelectedRepositoriesSelfHostedRunnersOrganizationRequest({required this.selectedRepositoryIds});

factory ActionsSetSelectedRepositoriesSelfHostedRunnersOrganizationRequest.fromJson(Map<String, dynamic> json) { return ActionsSetSelectedRepositoriesSelfHostedRunnersOrganizationRequest(
  selectedRepositoryIds: (json['selected_repository_ids'] as List<dynamic>).map((e) => (e as num).toInt()).toList(),
); }

/// IDs of repositories that can use repository-level self-hosted runners
final List<int> selectedRepositoryIds;

Map<String, dynamic> toJson() { return {
  'selected_repository_ids': selectedRepositoryIds,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('selected_repository_ids'); } 
ActionsSetSelectedRepositoriesSelfHostedRunnersOrganizationRequest copyWith({List<int>? selectedRepositoryIds}) { return ActionsSetSelectedRepositoriesSelfHostedRunnersOrganizationRequest(
  selectedRepositoryIds: selectedRepositoryIds ?? this.selectedRepositoryIds,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActionsSetSelectedRepositoriesSelfHostedRunnersOrganizationRequest &&
          listEquals(selectedRepositoryIds, other.selectedRepositoryIds); } 
@override int get hashCode { return Object.hashAll(selectedRepositoryIds).hashCode; } 
@override String toString() { return 'ActionsSetSelectedRepositoriesSelfHostedRunnersOrganizationRequest(selectedRepositoryIds: $selectedRepositoryIds)'; } 
 }
