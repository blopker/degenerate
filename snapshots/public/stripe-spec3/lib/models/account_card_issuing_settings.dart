// GENERATED CODE - DO NOT MODIFY BY HAND

import 'card_issuing_account_terms_of_service.dart';/// 
final class AccountCardIssuingSettings {const AccountCardIssuingSettings({this.tosAcceptance});

factory AccountCardIssuingSettings.fromJson(Map<String, dynamic> json) { return AccountCardIssuingSettings(
  tosAcceptance: json['tos_acceptance'] != null ? CardIssuingAccountTermsOfService.fromJson(json['tos_acceptance'] as Map<String, dynamic>) : null,
); }

final CardIssuingAccountTermsOfService? tosAcceptance;

Map<String, dynamic> toJson() { return {
  if (tosAcceptance != null) 'tos_acceptance': tosAcceptance?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'tos_acceptance'}.contains(key)); } 
AccountCardIssuingSettings copyWith({CardIssuingAccountTermsOfService Function()? tosAcceptance}) { return AccountCardIssuingSettings(
  tosAcceptance: tosAcceptance != null ? tosAcceptance() : this.tosAcceptance,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountCardIssuingSettings &&
          tosAcceptance == other.tosAcceptance; } 
@override int get hashCode { return tosAcceptance.hashCode; } 
@override String toString() { return 'AccountCardIssuingSettings(tosAcceptance: $tosAcceptance)'; } 
 }
