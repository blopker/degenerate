// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'repository_ruleset_links_html.dart';import 'repository_ruleset_links_self.dart';@immutable final class RepositoryRulesetLinks {const RepositoryRulesetLinks({this.self, this.html, });

factory RepositoryRulesetLinks.fromJson(Map<String, dynamic> json) { return RepositoryRulesetLinks(
  self: json['self'] != null ? RepositoryRulesetLinksSelf.fromJson(json['self'] as Map<String, dynamic>) : null,
  html: json['html'] != null ? RepositoryRulesetLinksHtml.fromJson(json['html'] as Map<String, dynamic>) : null,
); }

final RepositoryRulesetLinksSelf? self;

final RepositoryRulesetLinksHtml? html;

Map<String, dynamic> toJson() { return {
  if (self != null) 'self': self?.toJson(),
  if (html != null) 'html': html?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'self', 'html'}.contains(key)); } 
RepositoryRulesetLinks copyWith({RepositoryRulesetLinksSelf Function()? self, RepositoryRulesetLinksHtml? Function()? html, }) { return RepositoryRulesetLinks(
  self: self != null ? self() : this.self,
  html: html != null ? html() : this.html,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryRulesetLinks &&
          self == other.self &&
          html == other.html; } 
@override int get hashCode { return Object.hash(self, html); } 
@override String toString() { return 'RepositoryRulesetLinks(self: $self, html: $html)'; } 
 }
