// GENERATED CODE - DO NOT MODIFY BY HAND

import 'account_terms_of_service.dart';/// 
final class AccountTreasurySettings {const AccountTreasurySettings({this.tosAcceptance});

factory AccountTreasurySettings.fromJson(Map<String, dynamic> json) { return AccountTreasurySettings(
  tosAcceptance: json['tos_acceptance'] != null ? AccountTermsOfService.fromJson(json['tos_acceptance'] as Map<String, dynamic>) : null,
); }

final AccountTermsOfService? tosAcceptance;

Map<String, dynamic> toJson() { return {
  if (tosAcceptance != null) 'tos_acceptance': tosAcceptance?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'tos_acceptance'}.contains(key)); } 
AccountTreasurySettings copyWith({AccountTermsOfService Function()? tosAcceptance}) { return AccountTreasurySettings(
  tosAcceptance: tosAcceptance != null ? tosAcceptance() : this.tosAcceptance,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountTreasurySettings &&
          tosAcceptance == other.tosAcceptance; } 
@override int get hashCode { return tosAcceptance.hashCode; } 
@override String toString() { return 'AccountTreasurySettings(tosAcceptance: $tosAcceptance)'; } 
 }
