// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_tokens_request_person_additional_tos_acceptances_account_user_agent.dart';final class PostTokensRequestPersonAdditionalTosAcceptancesAccount {const PostTokensRequestPersonAdditionalTosAcceptancesAccount({this.date, this.ip, this.userAgent, });

factory PostTokensRequestPersonAdditionalTosAcceptancesAccount.fromJson(Map<String, dynamic> json) { return PostTokensRequestPersonAdditionalTosAcceptancesAccount(
  date: json['date'] != null ? (json['date'] as num).toInt() : null,
  ip: json['ip'] as String?,
  userAgent: json['user_agent'] != null ? OneOf2.parse(json['user_agent'], fromA: (v) => v as String, fromB: (v) => PostTokensRequestPersonAdditionalTosAcceptancesAccountUserAgentVariant2.fromJson(v as String),) : null,
); }

final int? date;

final String? ip;

final PostTokensRequestPersonAdditionalTosAcceptancesAccountUserAgent? userAgent;

Map<String, dynamic> toJson() { return {
  'date': ?date,
  'ip': ?ip,
  if (userAgent != null) 'user_agent': userAgent?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'date', 'ip', 'user_agent'}.contains(key)); } 
PostTokensRequestPersonAdditionalTosAcceptancesAccount copyWith({int Function()? date, String Function()? ip, PostTokensRequestPersonAdditionalTosAcceptancesAccountUserAgent Function()? userAgent, }) { return PostTokensRequestPersonAdditionalTosAcceptancesAccount(
  date: date != null ? date() : this.date,
  ip: ip != null ? ip() : this.ip,
  userAgent: userAgent != null ? userAgent() : this.userAgent,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTokensRequestPersonAdditionalTosAcceptancesAccount &&
          date == other.date &&
          ip == other.ip &&
          userAgent == other.userAgent; } 
@override int get hashCode { return Object.hash(date, ip, userAgent); } 
@override String toString() { return 'PostTokensRequestPersonAdditionalTosAcceptancesAccount(date: $date, ip: $ip, userAgent: $userAgent)'; } 
 }
