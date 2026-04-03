// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ArtifactWorkflowRun {const ArtifactWorkflowRun({this.id, this.repositoryId, this.headRepositoryId, this.headBranch, this.headSha, });

factory ArtifactWorkflowRun.fromJson(Map<String, dynamic> json) { return ArtifactWorkflowRun(
  id: json['id'] != null ? (json['id'] as num).toInt() : null,
  repositoryId: json['repository_id'] != null ? (json['repository_id'] as num).toInt() : null,
  headRepositoryId: json['head_repository_id'] != null ? (json['head_repository_id'] as num).toInt() : null,
  headBranch: json['head_branch'] as String?,
  headSha: json['head_sha'] as String?,
); }

final int? id;

final int? repositoryId;

final int? headRepositoryId;

final String? headBranch;

final String? headSha;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  'repository_id': ?repositoryId,
  'head_repository_id': ?headRepositoryId,
  'head_branch': ?headBranch,
  'head_sha': ?headSha,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'repository_id', 'head_repository_id', 'head_branch', 'head_sha'}.contains(key)); } 
ArtifactWorkflowRun copyWith({int Function()? id, int Function()? repositoryId, int Function()? headRepositoryId, String Function()? headBranch, String Function()? headSha, }) { return ArtifactWorkflowRun(
  id: id != null ? id() : this.id,
  repositoryId: repositoryId != null ? repositoryId() : this.repositoryId,
  headRepositoryId: headRepositoryId != null ? headRepositoryId() : this.headRepositoryId,
  headBranch: headBranch != null ? headBranch() : this.headBranch,
  headSha: headSha != null ? headSha() : this.headSha,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ArtifactWorkflowRun &&
          id == other.id &&
          repositoryId == other.repositoryId &&
          headRepositoryId == other.headRepositoryId &&
          headBranch == other.headBranch &&
          headSha == other.headSha; } 
@override int get hashCode { return Object.hash(id, repositoryId, headRepositoryId, headBranch, headSha); } 
@override String toString() { return 'ArtifactWorkflowRun(id: $id, repositoryId: $repositoryId, headRepositoryId: $headRepositoryId, headBranch: $headBranch, headSha: $headSha)'; } 
 }
