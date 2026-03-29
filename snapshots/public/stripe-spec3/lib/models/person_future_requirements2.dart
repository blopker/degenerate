// GENERATED CODE - DO NOT MODIFY BY HAND

import 'person_future_requirements.dart';final class PersonFutureRequirements2 {const PersonFutureRequirements2({this.personFutureRequirements});

factory PersonFutureRequirements2.fromJson(Map<String, dynamic> json) { return PersonFutureRequirements2(
  personFutureRequirements: PersonFutureRequirements.canParse(json) ? PersonFutureRequirements.fromJson(json) : null,
); }

final PersonFutureRequirements? personFutureRequirements;

/// At least one variant must be present.
bool get isValid { return personFutureRequirements != null; } 
Map<String, dynamic> toJson() { return {
  ...?personFutureRequirements?.toJson(),
}; } 
 }
