// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class CardIssuingAccountTermsOfService {const CardIssuingAccountTermsOfService({this.date, this.ip, this.userAgent, });

factory CardIssuingAccountTermsOfService.fromJson(Map<String, dynamic> json) { return CardIssuingAccountTermsOfService(
  date: json['date'] != null ? (json['date'] as num).toInt() : null,
  ip: json['ip'] as String?,
  userAgent: json['user_agent'] as String?,
); }

/// The Unix timestamp marking when the account representative accepted the service agreement.
final int? date;

/// The IP address from which the account representative accepted the service agreement.
final String? ip;

/// The user agent of the browser from which the account representative accepted the service agreement.
final String? userAgent;

Map<String, dynamic> toJson() { return {
  'date': ?date,
  'ip': ?ip,
  'user_agent': ?userAgent,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
CardIssuingAccountTermsOfService copyWith({int? Function()? date, String? Function()? ip, String Function()? userAgent, }) { return CardIssuingAccountTermsOfService(
  date: date != null ? date() : this.date,
  ip: ip != null ? ip() : this.ip,
  userAgent: userAgent != null ? userAgent() : this.userAgent,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CardIssuingAccountTermsOfService &&
          date == other.date &&
          ip == other.ip &&
          userAgent == other.userAgent; } 
@override int get hashCode { return Object.hash(date, ip, userAgent); } 
@override String toString() { return 'CardIssuingAccountTermsOfService(date: $date, ip: $ip, userAgent: $userAgent)'; } 
 }
