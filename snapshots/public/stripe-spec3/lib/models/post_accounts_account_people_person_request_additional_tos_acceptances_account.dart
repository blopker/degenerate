// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_accounts_account_people_person_request_additional_tos_acceptances_account_user_agent.dart';@immutable final class PostAccountsAccountPeoplePersonRequestAdditionalTosAcceptancesAccount {const PostAccountsAccountPeoplePersonRequestAdditionalTosAcceptancesAccount({this.date, this.ip, this.userAgent, });

factory PostAccountsAccountPeoplePersonRequestAdditionalTosAcceptancesAccount.fromJson(Map<String, dynamic> json) { return PostAccountsAccountPeoplePersonRequestAdditionalTosAcceptancesAccount(
  date: json['date'] != null ? (json['date'] as num).toInt() : null,
  ip: json['ip'] as String?,
  userAgent: json['user_agent'] != null ? OneOf2.parse(json['user_agent'], fromA: (v) => v as String, fromB: (v) => PostAccountsAccountPeoplePersonRequestAdditionalTosAcceptancesAccountUserAgentVariant2.fromJson(v as String),) : null,
); }

final int? date;

final String? ip;

final PostAccountsAccountPeoplePersonRequestAdditionalTosAcceptancesAccountUserAgent? userAgent;

Map<String, dynamic> toJson() { return {
  'date': ?date,
  'ip': ?ip,
  if (userAgent != null) 'user_agent': userAgent?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'date', 'ip', 'user_agent'}.contains(key)); } 
PostAccountsAccountPeoplePersonRequestAdditionalTosAcceptancesAccount copyWith({int Function()? date, String Function()? ip, PostAccountsAccountPeoplePersonRequestAdditionalTosAcceptancesAccountUserAgent Function()? userAgent, }) { return PostAccountsAccountPeoplePersonRequestAdditionalTosAcceptancesAccount(
  date: date != null ? date() : this.date,
  ip: ip != null ? ip() : this.ip,
  userAgent: userAgent != null ? userAgent() : this.userAgent,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountPeoplePersonRequestAdditionalTosAcceptancesAccount &&
          date == other.date &&
          ip == other.ip &&
          userAgent == other.userAgent; } 
@override int get hashCode { return Object.hash(date, ip, userAgent); } 
@override String toString() { return 'PostAccountsAccountPeoplePersonRequestAdditionalTosAcceptancesAccount(date: $date, ip: $ip, userAgent: $userAgent)'; } 
 }
