// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'pages_health_check_alt_domain.dart';import 'pages_health_check_domain.dart';/// Pages Health Check Status
@immutable final class PagesHealthCheck {const PagesHealthCheck({this.domain, this.altDomain = const Omittable.absent(), });

factory PagesHealthCheck.fromJson(Map<String, dynamic> json) { return PagesHealthCheck(
  domain: json['domain'] != null ? PagesHealthCheckDomain.fromJson(json['domain'] as Map<String, dynamic>) : null,
  altDomain: json.containsKey('alt_domain') ? Omittable(json['alt_domain'] != null ? PagesHealthCheckAltDomain.fromJson(json['alt_domain'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

final PagesHealthCheckDomain? domain;

final Omittable<PagesHealthCheckAltDomain?> altDomain;

Map<String, dynamic> toJson() { return {
  if (domain != null) 'domain': domain?.toJson(),
  if (altDomain.isPresent) 'alt_domain': altDomain.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'domain', 'alt_domain'}.contains(key)); } 
PagesHealthCheck copyWith({PagesHealthCheckDomain? Function()? domain, Omittable<PagesHealthCheckAltDomain?>? altDomain, }) { return PagesHealthCheck(
  domain: domain != null ? domain() : this.domain,
  altDomain: altDomain ?? this.altDomain,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PagesHealthCheck &&
          domain == other.domain &&
          altDomain == other.altDomain; } 
@override int get hashCode { return Object.hash(domain, altDomain); } 
@override String toString() { return 'PagesHealthCheck(domain: $domain, altDomain: $altDomain)'; } 
 }
