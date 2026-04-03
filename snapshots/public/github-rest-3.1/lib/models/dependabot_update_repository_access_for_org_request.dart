// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DependabotUpdateRepositoryAccessForOrgRequest {const DependabotUpdateRepositoryAccessForOrgRequest({this.repositoryIdsToAdd, this.repositoryIdsToRemove, });

factory DependabotUpdateRepositoryAccessForOrgRequest.fromJson(Map<String, dynamic> json) { return DependabotUpdateRepositoryAccessForOrgRequest(
  repositoryIdsToAdd: (json['repository_ids_to_add'] as List<dynamic>?)?.map((e) => (e as num).toInt()).toList(),
  repositoryIdsToRemove: (json['repository_ids_to_remove'] as List<dynamic>?)?.map((e) => (e as num).toInt()).toList(),
); }

/// List of repository IDs to add.
final List<int>? repositoryIdsToAdd;

/// List of repository IDs to remove.
final List<int>? repositoryIdsToRemove;

Map<String, dynamic> toJson() { return {
  'repository_ids_to_add': ?repositoryIdsToAdd,
  'repository_ids_to_remove': ?repositoryIdsToRemove,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'repository_ids_to_add', 'repository_ids_to_remove'}.contains(key)); } 
DependabotUpdateRepositoryAccessForOrgRequest copyWith({List<int> Function()? repositoryIdsToAdd, List<int> Function()? repositoryIdsToRemove, }) { return DependabotUpdateRepositoryAccessForOrgRequest(
  repositoryIdsToAdd: repositoryIdsToAdd != null ? repositoryIdsToAdd() : this.repositoryIdsToAdd,
  repositoryIdsToRemove: repositoryIdsToRemove != null ? repositoryIdsToRemove() : this.repositoryIdsToRemove,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DependabotUpdateRepositoryAccessForOrgRequest &&
          listEquals(repositoryIdsToAdd, other.repositoryIdsToAdd) &&
          listEquals(repositoryIdsToRemove, other.repositoryIdsToRemove); } 
@override int get hashCode { return Object.hash(Object.hashAll(repositoryIdsToAdd ?? const []), Object.hashAll(repositoryIdsToRemove ?? const [])); } 
@override String toString() { return 'DependabotUpdateRepositoryAccessForOrgRequest(repositoryIdsToAdd: $repositoryIdsToAdd, repositoryIdsToRemove: $repositoryIdsToRemove)'; } 
 }
