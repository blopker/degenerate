// GENERATED CODE - DO NOT MODIFY BY HAND

import 'person_requirements.dart';final class PersonRequirements2 {const PersonRequirements2({this.personRequirements});

factory PersonRequirements2.fromJson(Map<String, dynamic> json) { return PersonRequirements2(
  personRequirements: PersonRequirements.canParse(json) ? PersonRequirements.fromJson(json) : null,
); }

final PersonRequirements? personRequirements;

/// At least one variant must be present.
bool get isValid { return personRequirements != null; } 
Map<String, dynamic> toJson() { return {
  ...?personRequirements?.toJson(),
}; } 
 }
