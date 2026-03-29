// GENERATED CODE - DO NOT MODIFY BY HAND

final class AccessDomainRuleEmailDomain {const AccessDomainRuleEmailDomain({required this.domain});

factory AccessDomainRuleEmailDomain.fromJson(Map<String, dynamic> json) { return AccessDomainRuleEmailDomain(
  domain: json['domain'] as String,
); }

/// The email domain to match.
final String domain;

Map<String, dynamic> toJson() { return {
  'domain': domain,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('domain') && json['domain'] is String; } 
AccessDomainRuleEmailDomain copyWith({String? domain}) { return AccessDomainRuleEmailDomain(
  domain: domain ?? this.domain,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessDomainRuleEmailDomain &&
          domain == other.domain; } 
@override int get hashCode { return domain.hashCode; } 
@override String toString() { return 'AccessDomainRuleEmailDomain(domain: $domain)'; } 
 }
