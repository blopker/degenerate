// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_accounts_account_people_person_request_relationship_percent_ownership.dart';/// The relationship that this person has with the account's legal entity.
@immutable final class PostAccountsAccountPeoplePersonRequestRelationship {const PostAccountsAccountPeoplePersonRequestRelationship({this.authorizer, this.director, this.executive, this.legalGuardian, this.owner, this.percentOwnership, this.representative, this.title, });

factory PostAccountsAccountPeoplePersonRequestRelationship.fromJson(Map<String, dynamic> json) { return PostAccountsAccountPeoplePersonRequestRelationship(
  authorizer: json['authorizer'] as bool?,
  director: json['director'] as bool?,
  executive: json['executive'] as bool?,
  legalGuardian: json['legal_guardian'] as bool?,
  owner: json['owner'] as bool?,
  percentOwnership: json['percent_ownership'] != null ? OneOf2.parse(json['percent_ownership'], fromA: (v) => (v as num).toDouble(), fromB: (v) => PostAccountsAccountPeoplePersonRequestRelationshipPercentOwnershipVariant2.fromJson(v as String),) : null,
  representative: json['representative'] as bool?,
  title: json['title'] as String?,
); }

final bool? authorizer;

final bool? director;

final bool? executive;

final bool? legalGuardian;

final bool? owner;

final PostAccountsAccountPeoplePersonRequestRelationshipPercentOwnership? percentOwnership;

final bool? representative;

final String? title;

Map<String, dynamic> toJson() { return {
  'authorizer': ?authorizer,
  'director': ?director,
  'executive': ?executive,
  'legal_guardian': ?legalGuardian,
  'owner': ?owner,
  if (percentOwnership != null) 'percent_ownership': percentOwnership?.toJson(),
  'representative': ?representative,
  'title': ?title,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'authorizer', 'director', 'executive', 'legal_guardian', 'owner', 'percent_ownership', 'representative', 'title'}.contains(key)); } 
PostAccountsAccountPeoplePersonRequestRelationship copyWith({bool Function()? authorizer, bool Function()? director, bool Function()? executive, bool Function()? legalGuardian, bool Function()? owner, PostAccountsAccountPeoplePersonRequestRelationshipPercentOwnership Function()? percentOwnership, bool Function()? representative, String Function()? title, }) { return PostAccountsAccountPeoplePersonRequestRelationship(
  authorizer: authorizer != null ? authorizer() : this.authorizer,
  director: director != null ? director() : this.director,
  executive: executive != null ? executive() : this.executive,
  legalGuardian: legalGuardian != null ? legalGuardian() : this.legalGuardian,
  owner: owner != null ? owner() : this.owner,
  percentOwnership: percentOwnership != null ? percentOwnership() : this.percentOwnership,
  representative: representative != null ? representative() : this.representative,
  title: title != null ? title() : this.title,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountPeoplePersonRequestRelationship &&
          authorizer == other.authorizer &&
          director == other.director &&
          executive == other.executive &&
          legalGuardian == other.legalGuardian &&
          owner == other.owner &&
          percentOwnership == other.percentOwnership &&
          representative == other.representative &&
          title == other.title; } 
@override int get hashCode { return Object.hash(authorizer, director, executive, legalGuardian, owner, percentOwnership, representative, title); } 
@override String toString() { return 'PostAccountsAccountPeoplePersonRequestRelationship(authorizer: $authorizer, director: $director, executive: $executive, legalGuardian: $legalGuardian, owner: $owner, percentOwnership: $percentOwnership, representative: $representative, title: $title)'; } 
 }
