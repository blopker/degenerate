// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_accounts_account_request_individual_relationship_percent_ownership.dart';@immutable final class PostAccountsAccountRequestIndividualRelationship {const PostAccountsAccountRequestIndividualRelationship({this.director, this.executive, this.owner, this.percentOwnership, this.title, });

factory PostAccountsAccountRequestIndividualRelationship.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestIndividualRelationship(
  director: json['director'] as bool?,
  executive: json['executive'] as bool?,
  owner: json['owner'] as bool?,
  percentOwnership: json['percent_ownership'] != null ? OneOf2.parse(json['percent_ownership'], fromA: (v) => (v as num).toDouble(), fromB: (v) => PostAccountsAccountRequestIndividualRelationshipPercentOwnershipVariant2.fromJson(v as String),) : null,
  title: json['title'] as String?,
); }

final bool? director;

final bool? executive;

final bool? owner;

final PostAccountsAccountRequestIndividualRelationshipPercentOwnership? percentOwnership;

final String? title;

Map<String, dynamic> toJson() { return {
  'director': ?director,
  'executive': ?executive,
  'owner': ?owner,
  if (percentOwnership != null) 'percent_ownership': percentOwnership?.toJson(),
  'title': ?title,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'director', 'executive', 'owner', 'percent_ownership', 'title'}.contains(key)); } 
PostAccountsAccountRequestIndividualRelationship copyWith({bool Function()? director, bool Function()? executive, bool Function()? owner, PostAccountsAccountRequestIndividualRelationshipPercentOwnership Function()? percentOwnership, String Function()? title, }) { return PostAccountsAccountRequestIndividualRelationship(
  director: director != null ? director() : this.director,
  executive: executive != null ? executive() : this.executive,
  owner: owner != null ? owner() : this.owner,
  percentOwnership: percentOwnership != null ? percentOwnership() : this.percentOwnership,
  title: title != null ? title() : this.title,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestIndividualRelationship &&
          director == other.director &&
          executive == other.executive &&
          owner == other.owner &&
          percentOwnership == other.percentOwnership &&
          title == other.title; } 
@override int get hashCode { return Object.hash(director, executive, owner, percentOwnership, title); } 
@override String toString() { return 'PostAccountsAccountRequestIndividualRelationship(director: $director, executive: $executive, owner: $owner, percentOwnership: $percentOwnership, title: $title)'; } 
 }
