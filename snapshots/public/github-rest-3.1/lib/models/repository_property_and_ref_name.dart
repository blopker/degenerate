// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'repository_property_and_ref_name_ref_name.dart';import 'repository_property_and_ref_name_repository_property.dart';/// Parameters for a repository property condition
@immutable final class RepositoryPropertyAndRefName {const RepositoryPropertyAndRefName({required this.repositoryProperty, this.refName, });

factory RepositoryPropertyAndRefName.fromJson(Map<String, dynamic> json) { return RepositoryPropertyAndRefName(
  refName: json['ref_name'] != null ? RepositoryPropertyAndRefNameRefName.fromJson(json['ref_name'] as Map<String, dynamic>) : null,
  repositoryProperty: RepositoryPropertyAndRefNameRepositoryProperty.fromJson(json['repository_property'] as Map<String, dynamic>),
); }

final RepositoryPropertyAndRefNameRefName? refName;

final RepositoryPropertyAndRefNameRepositoryProperty repositoryProperty;

Map<String, dynamic> toJson() { return {
  if (refName != null) 'ref_name': refName?.toJson(),
  'repository_property': repositoryProperty.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('repository_property'); } 
RepositoryPropertyAndRefName copyWith({RepositoryPropertyAndRefNameRefName Function()? refName, RepositoryPropertyAndRefNameRepositoryProperty? repositoryProperty, }) { return RepositoryPropertyAndRefName(
  refName: refName != null ? refName() : this.refName,
  repositoryProperty: repositoryProperty ?? this.repositoryProperty,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryPropertyAndRefName &&
          refName == other.refName &&
          repositoryProperty == other.repositoryProperty; } 
@override int get hashCode { return Object.hash(refName, repositoryProperty); } 
@override String toString() { return 'RepositoryPropertyAndRefName(refName: $refName, repositoryProperty: $repositoryProperty)'; } 
 }
