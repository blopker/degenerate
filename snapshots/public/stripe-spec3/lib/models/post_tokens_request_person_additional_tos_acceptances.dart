// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_tokens_request_person_additional_tos_acceptances_account.dart';@immutable final class PostTokensRequestPersonAdditionalTosAcceptances {const PostTokensRequestPersonAdditionalTosAcceptances({this.account});

factory PostTokensRequestPersonAdditionalTosAcceptances.fromJson(Map<String, dynamic> json) { return PostTokensRequestPersonAdditionalTosAcceptances(
  account: json['account'] != null ? PostTokensRequestPersonAdditionalTosAcceptancesAccount.fromJson(json['account'] as Map<String, dynamic>) : null,
); }

final PostTokensRequestPersonAdditionalTosAcceptancesAccount? account;

Map<String, dynamic> toJson() { return {
  if (account != null) 'account': account?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account'}.contains(key)); } 
PostTokensRequestPersonAdditionalTosAcceptances copyWith({PostTokensRequestPersonAdditionalTosAcceptancesAccount Function()? account}) { return PostTokensRequestPersonAdditionalTosAcceptances(
  account: account != null ? account() : this.account,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTokensRequestPersonAdditionalTosAcceptances &&
          account == other.account; } 
@override int get hashCode { return account.hashCode; } 
@override String toString() { return 'PostTokensRequestPersonAdditionalTosAcceptances(account: $account)'; } 
 }
