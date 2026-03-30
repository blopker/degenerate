// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_accounts_request_settings_treasury_tos_acceptance.dart';final class PostAccountsRequestSettingsTreasury {const PostAccountsRequestSettingsTreasury({this.tosAcceptance});

factory PostAccountsRequestSettingsTreasury.fromJson(Map<String, dynamic> json) { return PostAccountsRequestSettingsTreasury(
  tosAcceptance: json['tos_acceptance'] != null ? PostAccountsRequestSettingsTreasuryTosAcceptance.fromJson(json['tos_acceptance'] as Map<String, dynamic>) : null,
); }

final PostAccountsRequestSettingsTreasuryTosAcceptance? tosAcceptance;

Map<String, dynamic> toJson() { return {
  if (tosAcceptance != null) 'tos_acceptance': tosAcceptance?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'tos_acceptance'}.contains(key)); } 
PostAccountsRequestSettingsTreasury copyWith({PostAccountsRequestSettingsTreasuryTosAcceptance Function()? tosAcceptance}) { return PostAccountsRequestSettingsTreasury(
  tosAcceptance: tosAcceptance != null ? tosAcceptance() : this.tosAcceptance,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestSettingsTreasury &&
          tosAcceptance == other.tosAcceptance; } 
@override int get hashCode { return tosAcceptance.hashCode; } 
@override String toString() { return 'PostAccountsRequestSettingsTreasury(tosAcceptance: $tosAcceptance)'; } 
 }
