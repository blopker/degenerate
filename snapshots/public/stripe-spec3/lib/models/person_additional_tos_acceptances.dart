// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'person_additional_tos_acceptance.dart';/// 
@immutable final class PersonAdditionalTosAcceptances {const PersonAdditionalTosAcceptances({this.account});

factory PersonAdditionalTosAcceptances.fromJson(Map<String, dynamic> json) { return PersonAdditionalTosAcceptances(
  account: json['account'] != null ? PersonAdditionalTosAcceptance.fromJson(json['account'] as Map<String, dynamic>) : null,
); }

/// Details on the legal guardian's acceptance of the main Stripe service agreement.
final PersonAdditionalTosAcceptance? account;

Map<String, dynamic> toJson() { return {
  if (account != null) 'account': account?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account'}.contains(key)); } 
PersonAdditionalTosAcceptances copyWith({PersonAdditionalTosAcceptance? Function()? account}) { return PersonAdditionalTosAcceptances(
  account: account != null ? account() : this.account,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PersonAdditionalTosAcceptances &&
          account == other.account; } 
@override int get hashCode { return account.hashCode; } 
@override String toString() { return 'PersonAdditionalTosAcceptances(account: $account)'; } 
 }
