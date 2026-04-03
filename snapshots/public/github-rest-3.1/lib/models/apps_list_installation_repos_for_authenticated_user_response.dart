// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'repository.dart';@immutable final class AppsListInstallationReposForAuthenticatedUserResponse {const AppsListInstallationReposForAuthenticatedUserResponse({required this.totalCount, required this.repositories, this.repositorySelection, });

factory AppsListInstallationReposForAuthenticatedUserResponse.fromJson(Map<String, dynamic> json) { return AppsListInstallationReposForAuthenticatedUserResponse(
  totalCount: (json['total_count'] as num).toInt(),
  repositorySelection: json['repository_selection'] as String?,
  repositories: (json['repositories'] as List<dynamic>).map((e) => Repository.fromJson(e as Map<String, dynamic>)).toList(),
); }

final int totalCount;

final String? repositorySelection;

final List<Repository> repositories;

Map<String, dynamic> toJson() { return {
  'total_count': totalCount,
  'repository_selection': ?repositorySelection,
  'repositories': repositories.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('total_count') && json['total_count'] is num &&
      json.containsKey('repositories'); } 
AppsListInstallationReposForAuthenticatedUserResponse copyWith({int? totalCount, String Function()? repositorySelection, List<Repository>? repositories, }) { return AppsListInstallationReposForAuthenticatedUserResponse(
  totalCount: totalCount ?? this.totalCount,
  repositorySelection: repositorySelection != null ? repositorySelection() : this.repositorySelection,
  repositories: repositories ?? this.repositories,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AppsListInstallationReposForAuthenticatedUserResponse &&
          totalCount == other.totalCount &&
          repositorySelection == other.repositorySelection &&
          listEquals(repositories, other.repositories); } 
@override int get hashCode { return Object.hash(totalCount, repositorySelection, Object.hashAll(repositories)); } 
@override String toString() { return 'AppsListInstallationReposForAuthenticatedUserResponse(totalCount: $totalCount, repositorySelection: $repositorySelection, repositories: $repositories)'; } 
 }
