// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RepositoryRuleUpdateParameters {const RepositoryRuleUpdateParameters({required this.updateAllowsFetchAndMerge});

factory RepositoryRuleUpdateParameters.fromJson(Map<String, dynamic> json) { return RepositoryRuleUpdateParameters(
  updateAllowsFetchAndMerge: json['update_allows_fetch_and_merge'] as bool,
); }

/// Branch can pull changes from its upstream repository
final bool updateAllowsFetchAndMerge;

Map<String, dynamic> toJson() { return {
  'update_allows_fetch_and_merge': updateAllowsFetchAndMerge,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('update_allows_fetch_and_merge') && json['update_allows_fetch_and_merge'] is bool; } 
RepositoryRuleUpdateParameters copyWith({bool? updateAllowsFetchAndMerge}) { return RepositoryRuleUpdateParameters(
  updateAllowsFetchAndMerge: updateAllowsFetchAndMerge ?? this.updateAllowsFetchAndMerge,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryRuleUpdateParameters &&
          updateAllowsFetchAndMerge == other.updateAllowsFetchAndMerge; } 
@override int get hashCode { return updateAllowsFetchAndMerge.hashCode; } 
@override String toString() { return 'RepositoryRuleUpdateParameters(updateAllowsFetchAndMerge: $updateAllowsFetchAndMerge)'; } 
 }
