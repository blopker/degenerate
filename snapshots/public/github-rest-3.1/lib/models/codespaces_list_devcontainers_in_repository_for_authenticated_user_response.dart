// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'codespaces_list_devcontainers_in_repository_for_authenticated_user_response_devcontainers.dart';@immutable final class CodespacesListDevcontainersInRepositoryForAuthenticatedUserResponse {const CodespacesListDevcontainersInRepositoryForAuthenticatedUserResponse({required this.totalCount, required this.devcontainers, });

factory CodespacesListDevcontainersInRepositoryForAuthenticatedUserResponse.fromJson(Map<String, dynamic> json) { return CodespacesListDevcontainersInRepositoryForAuthenticatedUserResponse(
  totalCount: (json['total_count'] as num).toInt(),
  devcontainers: (json['devcontainers'] as List<dynamic>).map((e) => CodespacesListDevcontainersInRepositoryForAuthenticatedUserResponseDevcontainers.fromJson(e as Map<String, dynamic>)).toList(),
); }

final int totalCount;

final List<CodespacesListDevcontainersInRepositoryForAuthenticatedUserResponseDevcontainers> devcontainers;

Map<String, dynamic> toJson() { return {
  'total_count': totalCount,
  'devcontainers': devcontainers.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('total_count') && json['total_count'] is num &&
      json.containsKey('devcontainers'); } 
CodespacesListDevcontainersInRepositoryForAuthenticatedUserResponse copyWith({int? totalCount, List<CodespacesListDevcontainersInRepositoryForAuthenticatedUserResponseDevcontainers>? devcontainers, }) { return CodespacesListDevcontainersInRepositoryForAuthenticatedUserResponse(
  totalCount: totalCount ?? this.totalCount,
  devcontainers: devcontainers ?? this.devcontainers,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CodespacesListDevcontainersInRepositoryForAuthenticatedUserResponse &&
          totalCount == other.totalCount &&
          listEquals(devcontainers, other.devcontainers); } 
@override int get hashCode { return Object.hash(totalCount, Object.hashAll(devcontainers)); } 
@override String toString() { return 'CodespacesListDevcontainersInRepositoryForAuthenticatedUserResponse(totalCount: $totalCount, devcontainers: $devcontainers)'; } 
 }
