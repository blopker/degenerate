// GENERATED CODE - DO NOT MODIFY BY HAND

final class RepositoryRulesetLinksHtml {const RepositoryRulesetLinksHtml({this.href});

factory RepositoryRulesetLinksHtml.fromJson(Map<String, dynamic> json) { return RepositoryRulesetLinksHtml(
  href: json['href'] as String?,
); }

/// The html URL of the ruleset
final String? href;

Map<String, dynamic> toJson() { return {
  'href': ?href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'href'}.contains(key)); } 
RepositoryRulesetLinksHtml copyWith({String Function()? href}) { return RepositoryRulesetLinksHtml(
  href: href != null ? href() : this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryRulesetLinksHtml &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'RepositoryRulesetLinksHtml(href: $href)'; } 
 }
