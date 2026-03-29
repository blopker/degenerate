// GENERATED CODE - DO NOT MODIFY BY HAND

import 'legal_entity_japan_address.dart';final class PersonAddressKanji {const PersonAddressKanji({this.legalEntityJapanAddress});

factory PersonAddressKanji.fromJson(Map<String, dynamic> json) { return PersonAddressKanji(
  legalEntityJapanAddress: LegalEntityJapanAddress.canParse(json) ? LegalEntityJapanAddress.fromJson(json) : null,
); }

final LegalEntityJapanAddress? legalEntityJapanAddress;

/// At least one variant must be present.
bool get isValid { return legalEntityJapanAddress != null; } 
Map<String, dynamic> toJson() { return {
  ...?legalEntityJapanAddress?.toJson(),
}; } 
 }
