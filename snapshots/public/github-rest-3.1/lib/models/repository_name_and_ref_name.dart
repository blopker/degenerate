// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'repository_name_and_ref_name_ref_name.dart';import 'repository_name_and_ref_name_repository_name.dart';/// Parameters for a repository name condition
@immutable final class RepositoryNameAndRefName {const RepositoryNameAndRefName({required this.repositoryName, this.refName, });

factory RepositoryNameAndRefName.fromJson(Map<String, dynamic> json) { return RepositoryNameAndRefName(
  refName: json['ref_name'] != null ? RepositoryNameAndRefNameRefName.fromJson(json['ref_name'] as Map<String, dynamic>) : null,
  repositoryName: RepositoryNameAndRefNameRepositoryName.fromJson(json['repository_name'] as Map<String, dynamic>),
); }

final RepositoryNameAndRefNameRefName? refName;

final RepositoryNameAndRefNameRepositoryName repositoryName;

Map<String, dynamic> toJson() { return {
  if (refName != null) 'ref_name': refName?.toJson(),
  'repository_name': repositoryName.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('repository_name'); } 
RepositoryNameAndRefName copyWith({RepositoryNameAndRefNameRefName Function()? refName, RepositoryNameAndRefNameRepositoryName? repositoryName, }) { return RepositoryNameAndRefName(
  refName: refName != null ? refName() : this.refName,
  repositoryName: repositoryName ?? this.repositoryName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryNameAndRefName &&
          refName == other.refName &&
          repositoryName == other.repositoryName; } 
@override int get hashCode { return Object.hash(refName, repositoryName); } 
@override String toString() { return 'RepositoryNameAndRefName(refName: $refName, repositoryName: $repositoryName)'; } 
 }
