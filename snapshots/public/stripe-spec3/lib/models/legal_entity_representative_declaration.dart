// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class LegalEntityRepresentativeDeclaration {const LegalEntityRepresentativeDeclaration({this.date, this.ip, this.userAgent, });

factory LegalEntityRepresentativeDeclaration.fromJson(Map<String, dynamic> json) { return LegalEntityRepresentativeDeclaration(
  date: json['date'] != null ? (json['date'] as num).toInt() : null,
  ip: json['ip'] as String?,
  userAgent: json['user_agent'] as String?,
); }

/// The Unix timestamp marking when the representative declaration attestation was made.
final int? date;

/// The IP address from which the representative declaration attestation was made.
final String? ip;

/// The user-agent string from the browser where the representative declaration attestation was made.
final String? userAgent;

Map<String, dynamic> toJson() { return {
  'date': ?date,
  'ip': ?ip,
  'user_agent': ?userAgent,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'date', 'ip', 'user_agent'}.contains(key)); } 
LegalEntityRepresentativeDeclaration copyWith({int? Function()? date, String? Function()? ip, String? Function()? userAgent, }) { return LegalEntityRepresentativeDeclaration(
  date: date != null ? date() : this.date,
  ip: ip != null ? ip() : this.ip,
  userAgent: userAgent != null ? userAgent() : this.userAgent,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LegalEntityRepresentativeDeclaration &&
          date == other.date &&
          ip == other.ip &&
          userAgent == other.userAgent; } 
@override int get hashCode { return Object.hash(date, ip, userAgent); } 
@override String toString() { return 'LegalEntityRepresentativeDeclaration(date: $date, ip: $ip, userAgent: $userAgent)'; } 
 }
