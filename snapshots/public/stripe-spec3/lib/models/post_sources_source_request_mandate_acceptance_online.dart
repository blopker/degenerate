// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSourcesSourceRequestMandateAcceptanceOnline {const PostSourcesSourceRequestMandateAcceptanceOnline({this.date, this.ip, this.userAgent, });

factory PostSourcesSourceRequestMandateAcceptanceOnline.fromJson(Map<String, dynamic> json) { return PostSourcesSourceRequestMandateAcceptanceOnline(
  date: json['date'] != null ? (json['date'] as num).toInt() : null,
  ip: json['ip'] as String?,
  userAgent: json['user_agent'] as String?,
); }

final int? date;

final String? ip;

final String? userAgent;

Map<String, dynamic> toJson() { return {
  'date': ?date,
  'ip': ?ip,
  'user_agent': ?userAgent,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'date', 'ip', 'user_agent'}.contains(key)); } 
PostSourcesSourceRequestMandateAcceptanceOnline copyWith({int Function()? date, String Function()? ip, String Function()? userAgent, }) { return PostSourcesSourceRequestMandateAcceptanceOnline(
  date: date != null ? date() : this.date,
  ip: ip != null ? ip() : this.ip,
  userAgent: userAgent != null ? userAgent() : this.userAgent,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSourcesSourceRequestMandateAcceptanceOnline &&
          date == other.date &&
          ip == other.ip &&
          userAgent == other.userAgent; } 
@override int get hashCode { return Object.hash(date, ip, userAgent); } 
@override String toString() { return 'PostSourcesSourceRequestMandateAcceptanceOnline(date: $date, ip: $ip, userAgent: $userAgent)'; } 
 }
