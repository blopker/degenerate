// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class AccountTosAcceptance {const AccountTosAcceptance({this.date, this.ip, this.serviceAgreement, this.userAgent, });

factory AccountTosAcceptance.fromJson(Map<String, dynamic> json) { return AccountTosAcceptance(
  date: json['date'] != null ? (json['date'] as num).toInt() : null,
  ip: json['ip'] as String?,
  serviceAgreement: json['service_agreement'] as String?,
  userAgent: json['user_agent'] as String?,
); }

/// The Unix timestamp marking when the account representative accepted their service agreement
final int? date;

/// The IP address from which the account representative accepted their service agreement
final String? ip;

/// The user's service agreement type
final String? serviceAgreement;

/// The user agent of the browser from which the account representative accepted their service agreement
final String? userAgent;

Map<String, dynamic> toJson() { return {
  'date': ?date,
  'ip': ?ip,
  'service_agreement': ?serviceAgreement,
  'user_agent': ?userAgent,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'date', 'ip', 'service_agreement', 'user_agent'}.contains(key)); } 
AccountTosAcceptance copyWith({int? Function()? date, String? Function()? ip, String Function()? serviceAgreement, String? Function()? userAgent, }) { return AccountTosAcceptance(
  date: date != null ? date() : this.date,
  ip: ip != null ? ip() : this.ip,
  serviceAgreement: serviceAgreement != null ? serviceAgreement() : this.serviceAgreement,
  userAgent: userAgent != null ? userAgent() : this.userAgent,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountTosAcceptance &&
          date == other.date &&
          ip == other.ip &&
          serviceAgreement == other.serviceAgreement &&
          userAgent == other.userAgent; } 
@override int get hashCode { return Object.hash(date, ip, serviceAgreement, userAgent); } 
@override String toString() { return 'AccountTosAcceptance(date: $date, ip: $ip, serviceAgreement: $serviceAgreement, userAgent: $userAgent)'; } 
 }
