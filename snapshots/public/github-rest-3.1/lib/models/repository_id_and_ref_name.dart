// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'repository_id_and_ref_name_ref_name.dart';import 'repository_id_and_ref_name_repository_id.dart';/// Parameters for a repository ID condition
@immutable final class RepositoryIdAndRefName {const RepositoryIdAndRefName({required this.repositoryId, this.refName, });

factory RepositoryIdAndRefName.fromJson(Map<String, dynamic> json) { return RepositoryIdAndRefName(
  refName: json['ref_name'] != null ? RepositoryIdAndRefNameRefName.fromJson(json['ref_name'] as Map<String, dynamic>) : null,
  repositoryId: RepositoryIdAndRefNameRepositoryId.fromJson(json['repository_id'] as Map<String, dynamic>),
); }

final RepositoryIdAndRefNameRefName? refName;

final RepositoryIdAndRefNameRepositoryId repositoryId;

Map<String, dynamic> toJson() { return {
  if (refName != null) 'ref_name': refName?.toJson(),
  'repository_id': repositoryId.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('repository_id'); } 
RepositoryIdAndRefName copyWith({RepositoryIdAndRefNameRefName Function()? refName, RepositoryIdAndRefNameRepositoryId? repositoryId, }) { return RepositoryIdAndRefName(
  refName: refName != null ? refName() : this.refName,
  repositoryId: repositoryId ?? this.repositoryId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryIdAndRefName &&
          refName == other.refName &&
          repositoryId == other.repositoryId; } 
@override int get hashCode { return Object.hash(refName, repositoryId); } 
@override String toString() { return 'RepositoryIdAndRefName(refName: $refName, repositoryId: $repositoryId)'; } 
 }
