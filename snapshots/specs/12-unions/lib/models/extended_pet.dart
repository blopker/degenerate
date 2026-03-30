// GENERATED CODE - DO NOT MODIFY BY HAND

import 'owner.dart';import 'pet_status.dart';final class ExtendedPet {const ExtendedPet({required this.id, required this.name, this.status, this.breed, this.vaccinated, this.weight, this.owner, });

factory ExtendedPet.fromJson(Map<String, dynamic> json) { return ExtendedPet(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  status: json['status'] != null ? PetStatus.fromJson(json['status'] as String) : null,
  breed: json['breed'] as String?,
  vaccinated: json['vaccinated'] as bool?,
  weight: json['weight'] != null ? (json['weight'] as num).toDouble() : null,
  owner: json['owner'] != null ? Owner.fromJson(json['owner'] as Map<String, dynamic>) : null,
); }

final int id;

final String name;

final PetStatus? status;

final String? breed;

final bool? vaccinated;

final double? weight;

final Owner? owner;

Map<String, dynamic> toJson() { return {
  'id': id,
  'name': name,
  if (status != null) 'status': status?.toJson(),
  'breed': ?breed,
  'vaccinated': ?vaccinated,
  'weight': ?weight,
  if (owner != null) 'owner': owner?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is num &&
      json.containsKey('name') && json['name'] is String; } 
ExtendedPet copyWith({int? id, String? name, PetStatus Function()? status, String Function()? breed, bool Function()? vaccinated, double Function()? weight, Owner Function()? owner, }) { return ExtendedPet(
  id: id ?? this.id,
  name: name ?? this.name,
  status: status != null ? status() : this.status,
  breed: breed != null ? breed() : this.breed,
  vaccinated: vaccinated != null ? vaccinated() : this.vaccinated,
  weight: weight != null ? weight() : this.weight,
  owner: owner != null ? owner() : this.owner,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ExtendedPet &&
          id == other.id &&
          name == other.name &&
          status == other.status &&
          breed == other.breed &&
          vaccinated == other.vaccinated &&
          weight == other.weight &&
          owner == other.owner; } 
@override int get hashCode { return Object.hash(id, name, status, breed, vaccinated, weight, owner); } 
@override String toString() { return 'ExtendedPet(id: $id, name: $name, status: $status, breed: $breed, vaccinated: $vaccinated, weight: $weight, owner: $owner)'; } 
 }
