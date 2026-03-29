// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_accounts_account_people_request_additional_tos_acceptances_account.dart';/// Details on the legal guardian's or authorizer's acceptance of the required Stripe agreements.
final class PostAccountsAccountPeopleRequestAdditionalTosAcceptances {const PostAccountsAccountPeopleRequestAdditionalTosAcceptances({this.account});

factory PostAccountsAccountPeopleRequestAdditionalTosAcceptances.fromJson(Map<String, dynamic> json) { return PostAccountsAccountPeopleRequestAdditionalTosAcceptances(
  account: json['account'] != null ? PostAccountsAccountPeopleRequestAdditionalTosAcceptancesAccount.fromJson(json['account'] as Map<String, dynamic>) : null,
); }

final PostAccountsAccountPeopleRequestAdditionalTosAcceptancesAccount? account;

Map<String, dynamic> toJson() { return {
  if (account != null) 'account': account?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account'}.contains(key)); } 
PostAccountsAccountPeopleRequestAdditionalTosAcceptances copyWith({PostAccountsAccountPeopleRequestAdditionalTosAcceptancesAccount Function()? account}) { return PostAccountsAccountPeopleRequestAdditionalTosAcceptances(
  account: account != null ? account() : this.account,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountPeopleRequestAdditionalTosAcceptances &&
          account == other.account; } 
@override int get hashCode { return account.hashCode; } 
@override String toString() { return 'PostAccountsAccountPeopleRequestAdditionalTosAcceptances(account: $account)'; } 
 }
