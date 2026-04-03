// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_accounts_account_request_settings_treasury_tos_acceptance_user_agent.dart';@immutable final class PostAccountsAccountRequestSettingsTreasuryTosAcceptance {const PostAccountsAccountRequestSettingsTreasuryTosAcceptance({this.date, this.ip, this.userAgent, });

factory PostAccountsAccountRequestSettingsTreasuryTosAcceptance.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestSettingsTreasuryTosAcceptance(
  date: json['date'] != null ? (json['date'] as num).toInt() : null,
  ip: json['ip'] as String?,
  userAgent: json['user_agent'] != null ? OneOf2.parse(json['user_agent'], fromA: (v) => v as String, fromB: (v) => PostAccountsAccountRequestSettingsTreasuryTosAcceptanceUserAgentVariant2.fromJson(v as String),) : null,
); }

final int? date;

final String? ip;

final PostAccountsAccountRequestSettingsTreasuryTosAcceptanceUserAgent? userAgent;

Map<String, dynamic> toJson() { return {
  'date': ?date,
  'ip': ?ip,
  if (userAgent != null) 'user_agent': userAgent?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'date', 'ip', 'user_agent'}.contains(key)); } 
PostAccountsAccountRequestSettingsTreasuryTosAcceptance copyWith({int Function()? date, String Function()? ip, PostAccountsAccountRequestSettingsTreasuryTosAcceptanceUserAgent Function()? userAgent, }) { return PostAccountsAccountRequestSettingsTreasuryTosAcceptance(
  date: date != null ? date() : this.date,
  ip: ip != null ? ip() : this.ip,
  userAgent: userAgent != null ? userAgent() : this.userAgent,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestSettingsTreasuryTosAcceptance &&
          date == other.date &&
          ip == other.ip &&
          userAgent == other.userAgent; } 
@override int get hashCode { return Object.hash(date, ip, userAgent); } 
@override String toString() { return 'PostAccountsAccountRequestSettingsTreasuryTosAcceptance(date: $date, ip: $ip, userAgent: $userAgent)'; } 
 }
