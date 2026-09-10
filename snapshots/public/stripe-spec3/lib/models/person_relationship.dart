// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PersonRelationship {const PersonRelationship({this.authorizer = const Omittable.absent(), this.director = const Omittable.absent(), this.executive = const Omittable.absent(), this.legalGuardian = const Omittable.absent(), this.owner = const Omittable.absent(), this.percentOwnership = const Omittable.absent(), this.representative = const Omittable.absent(), this.title = const Omittable.absent(), });

factory PersonRelationship.fromJson(Map<String, dynamic> json) { return PersonRelationship(
  authorizer: json.containsKey('authorizer') ? Omittable(json['authorizer'] as bool?) : const Omittable.absent(),
  director: json.containsKey('director') ? Omittable(json['director'] as bool?) : const Omittable.absent(),
  executive: json.containsKey('executive') ? Omittable(json['executive'] as bool?) : const Omittable.absent(),
  legalGuardian: json.containsKey('legal_guardian') ? Omittable(json['legal_guardian'] as bool?) : const Omittable.absent(),
  owner: json.containsKey('owner') ? Omittable(json['owner'] as bool?) : const Omittable.absent(),
  percentOwnership: json.containsKey('percent_ownership') ? Omittable(json['percent_ownership'] != null ? (json['percent_ownership'] as num).toDouble() : null) : const Omittable.absent(),
  representative: json.containsKey('representative') ? Omittable(json['representative'] as bool?) : const Omittable.absent(),
  title: json.containsKey('title') ? Omittable(json['title'] as String?) : const Omittable.absent(),
); }

/// Whether the person is the authorizer of the account's representative.
final Omittable<bool?> authorizer;

/// Whether the person is a director of the account's legal entity. Directors are typically members of the governing board of the company, or responsible for ensuring the company meets its regulatory obligations.
final Omittable<bool?> director;

/// Whether the person has significant responsibility to control, manage, or direct the organization.
final Omittable<bool?> executive;

/// Whether the person is the legal guardian of the account's representative.
final Omittable<bool?> legalGuardian;

/// Whether the person is an owner of the account’s legal entity.
final Omittable<bool?> owner;

/// The percent owned by the person of the account's legal entity.
final Omittable<double?> percentOwnership;

/// Whether the person is authorized as the primary representative of the account. This is the person nominated by the business to provide information about themselves, and general information about the account. There can only be one representative at any given time. At the time the account is created, this person should be set to the person responsible for opening the account.
final Omittable<bool?> representative;

/// The person's title (e.g., CEO, Support Engineer).
final Omittable<String?> title;

Map<String, dynamic> toJson() { return {
  if (authorizer.isPresent) 'authorizer': authorizer.value,
  if (director.isPresent) 'director': director.value,
  if (executive.isPresent) 'executive': executive.value,
  if (legalGuardian.isPresent) 'legal_guardian': legalGuardian.value,
  if (owner.isPresent) 'owner': owner.value,
  if (percentOwnership.isPresent) 'percent_ownership': percentOwnership.value,
  if (representative.isPresent) 'representative': representative.value,
  if (title.isPresent) 'title': title.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'authorizer', 'director', 'executive', 'legal_guardian', 'owner', 'percent_ownership', 'representative', 'title'}.contains(key)); } 
PersonRelationship copyWith({Omittable<bool?>? authorizer, Omittable<bool?>? director, Omittable<bool?>? executive, Omittable<bool?>? legalGuardian, Omittable<bool?>? owner, Omittable<double?>? percentOwnership, Omittable<bool?>? representative, Omittable<String?>? title, }) { return PersonRelationship(
  authorizer: authorizer ?? this.authorizer,
  director: director ?? this.director,
  executive: executive ?? this.executive,
  legalGuardian: legalGuardian ?? this.legalGuardian,
  owner: owner ?? this.owner,
  percentOwnership: percentOwnership ?? this.percentOwnership,
  representative: representative ?? this.representative,
  title: title ?? this.title,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PersonRelationship &&
          authorizer == other.authorizer &&
          director == other.director &&
          executive == other.executive &&
          legalGuardian == other.legalGuardian &&
          owner == other.owner &&
          percentOwnership == other.percentOwnership &&
          representative == other.representative &&
          title == other.title; } 
@override int get hashCode { return Object.hash(authorizer, director, executive, legalGuardian, owner, percentOwnership, representative, title); } 
@override String toString() { return 'PersonRelationship(authorizer: $authorizer, director: $director, executive: $executive, legalGuardian: $legalGuardian, owner: $owner, percentOwnership: $percentOwnership, representative: $representative, title: $title)'; } 
 }
