// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class AccountTermsOfService {const AccountTermsOfService({this.date = const Omittable.absent(), this.ip = const Omittable.absent(), this.userAgent, });

factory AccountTermsOfService.fromJson(Map<String, dynamic> json) { return AccountTermsOfService(
  date: json.containsKey('date') ? Omittable(json['date'] != null ? (json['date'] as num).toInt() : null) : const Omittable.absent(),
  ip: json.containsKey('ip') ? Omittable(json['ip'] as String?) : const Omittable.absent(),
  userAgent: json['user_agent'] as String?,
); }

/// The Unix timestamp marking when the account representative accepted the service agreement.
final Omittable<int?> date;

/// The IP address from which the account representative accepted the service agreement.
final Omittable<String?> ip;

/// The user agent of the browser from which the account representative accepted the service agreement.
final String? userAgent;

Map<String, dynamic> toJson() { return {
  if (date.isPresent) 'date': date.value,
  if (ip.isPresent) 'ip': ip.value,
  'user_agent': ?userAgent,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'date', 'ip', 'user_agent'}.contains(key)); } 
AccountTermsOfService copyWith({Omittable<int?>? date, Omittable<String?>? ip, String? Function()? userAgent, }) { return AccountTermsOfService(
  date: date ?? this.date,
  ip: ip ?? this.ip,
  userAgent: userAgent != null ? userAgent() : this.userAgent,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountTermsOfService &&
          date == other.date &&
          ip == other.ip &&
          userAgent == other.userAgent; } 
@override int get hashCode { return Object.hash(date, ip, userAgent); } 
@override String toString() { return 'AccountTermsOfService(date: $date, ip: $ip, userAgent: $userAgent)'; } 
 }
