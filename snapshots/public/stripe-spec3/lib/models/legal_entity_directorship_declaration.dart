// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class LegalEntityDirectorshipDeclaration {const LegalEntityDirectorshipDeclaration({this.date = const Omittable.absent(), this.ip = const Omittable.absent(), this.userAgent = const Omittable.absent(), });

factory LegalEntityDirectorshipDeclaration.fromJson(Map<String, dynamic> json) { return LegalEntityDirectorshipDeclaration(
  date: json.containsKey('date') ? Omittable(json['date'] != null ? (json['date'] as num).toInt() : null) : const Omittable.absent(),
  ip: json.containsKey('ip') ? Omittable(json['ip'] as String?) : const Omittable.absent(),
  userAgent: json.containsKey('user_agent') ? Omittable(json['user_agent'] as String?) : const Omittable.absent(),
); }

/// The Unix timestamp marking when the directorship declaration attestation was made.
final Omittable<int?> date;

/// The IP address from which the directorship declaration attestation was made.
final Omittable<String?> ip;

/// The user-agent string from the browser where the directorship declaration attestation was made.
final Omittable<String?> userAgent;

Map<String, dynamic> toJson() { return {
  if (date.isPresent) 'date': date.value,
  if (ip.isPresent) 'ip': ip.value,
  if (userAgent.isPresent) 'user_agent': userAgent.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'date', 'ip', 'user_agent'}.contains(key)); } 
LegalEntityDirectorshipDeclaration copyWith({Omittable<int?>? date, Omittable<String?>? ip, Omittable<String?>? userAgent, }) { return LegalEntityDirectorshipDeclaration(
  date: date ?? this.date,
  ip: ip ?? this.ip,
  userAgent: userAgent ?? this.userAgent,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LegalEntityDirectorshipDeclaration &&
          date == other.date &&
          ip == other.ip &&
          userAgent == other.userAgent; } 
@override int get hashCode { return Object.hash(date, ip, userAgent); } 
@override String toString() { return 'LegalEntityDirectorshipDeclaration(date: $date, ip: $ip, userAgent: $userAgent)'; } 
 }
