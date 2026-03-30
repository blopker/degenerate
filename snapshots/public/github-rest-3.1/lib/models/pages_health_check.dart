// GENERATED CODE - DO NOT MODIFY BY HAND

import 'pages_health_check_alt_domain.dart';import 'pages_health_check_domain.dart';/// Pages Health Check Status
final class PagesHealthCheck {const PagesHealthCheck({this.domain, this.altDomain, });

factory PagesHealthCheck.fromJson(Map<String, dynamic> json) { return PagesHealthCheck(
  domain: json['domain'] != null ? PagesHealthCheckDomain.fromJson(json['domain'] as Map<String, dynamic>) : null,
  altDomain: json['alt_domain'] != null ? PagesHealthCheckAltDomain.fromJson(json['alt_domain'] as Map<String, dynamic>) : null,
); }

final PagesHealthCheckDomain? domain;

final PagesHealthCheckAltDomain? altDomain;

Map<String, dynamic> toJson() { return {
  if (domain != null) 'domain': domain?.toJson(),
  if (altDomain != null) 'alt_domain': altDomain?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'domain', 'alt_domain'}.contains(key)); } 
PagesHealthCheck copyWith({PagesHealthCheckDomain Function()? domain, PagesHealthCheckAltDomain? Function()? altDomain, }) { return PagesHealthCheck(
  domain: domain != null ? domain() : this.domain,
  altDomain: altDomain != null ? altDomain() : this.altDomain,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PagesHealthCheck &&
          domain == other.domain &&
          altDomain == other.altDomain; } 
@override int get hashCode { return Object.hash(domain, altDomain); } 
@override String toString() { return 'PagesHealthCheck(domain: $domain, altDomain: $altDomain)'; } 
 }
