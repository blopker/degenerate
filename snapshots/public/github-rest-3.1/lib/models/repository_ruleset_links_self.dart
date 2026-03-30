// GENERATED CODE - DO NOT MODIFY BY HAND

final class RepositoryRulesetLinksSelf {const RepositoryRulesetLinksSelf({this.href});

factory RepositoryRulesetLinksSelf.fromJson(Map<String, dynamic> json) { return RepositoryRulesetLinksSelf(
  href: json['href'] as String?,
); }

/// The URL of the ruleset
final String? href;

Map<String, dynamic> toJson() { return {
  'href': ?href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'href'}.contains(key)); } 
RepositoryRulesetLinksSelf copyWith({String Function()? href}) { return RepositoryRulesetLinksSelf(
  href: href != null ? href() : this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryRulesetLinksSelf &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'RepositoryRulesetLinksSelf(href: $href)'; } 
 }
