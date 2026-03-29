// GENERATED CODE - DO NOT MODIFY BY HAND

import 'person_additional_tos_acceptance.dart';/// Details on the legal guardian's acceptance of the main Stripe service agreement.
final class PersonAdditionalTosAcceptancesAccount {const PersonAdditionalTosAcceptancesAccount({this.personAdditionalTosAcceptance});

factory PersonAdditionalTosAcceptancesAccount.fromJson(Map<String, dynamic> json) { return PersonAdditionalTosAcceptancesAccount(
  personAdditionalTosAcceptance: PersonAdditionalTosAcceptance.canParse(json) ? PersonAdditionalTosAcceptance.fromJson(json) : null,
); }

final PersonAdditionalTosAcceptance? personAdditionalTosAcceptance;

/// At least one variant must be present.
bool get isValid { return personAdditionalTosAcceptance != null; } 
Map<String, dynamic> toJson() { return {
  ...?personAdditionalTosAcceptance?.toJson(),
}; } 
 }
