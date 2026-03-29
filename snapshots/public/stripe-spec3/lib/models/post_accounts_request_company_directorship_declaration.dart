// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsRequestCompanyDirectorshipDeclaration {const PostAccountsRequestCompanyDirectorshipDeclaration({this.date, this.ip, this.userAgent, });

factory PostAccountsRequestCompanyDirectorshipDeclaration.fromJson(Map<String, dynamic> json) { return PostAccountsRequestCompanyDirectorshipDeclaration(
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
PostAccountsRequestCompanyDirectorshipDeclaration copyWith({int Function()? date, String Function()? ip, String Function()? userAgent, }) { return PostAccountsRequestCompanyDirectorshipDeclaration(
  date: date != null ? date() : this.date,
  ip: ip != null ? ip() : this.ip,
  userAgent: userAgent != null ? userAgent() : this.userAgent,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestCompanyDirectorshipDeclaration &&
          date == other.date &&
          ip == other.ip &&
          userAgent == other.userAgent; } 
@override int get hashCode { return Object.hash(date, ip, userAgent); } 
@override String toString() { return 'PostAccountsRequestCompanyDirectorshipDeclaration(date: $date, ip: $ip, userAgent: $userAgent)'; } 
 }
