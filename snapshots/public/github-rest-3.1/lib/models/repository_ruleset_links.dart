// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'repository_ruleset_links_html.dart';import 'repository_ruleset_links_self.dart';@immutable final class RepositoryRulesetLinks {const RepositoryRulesetLinks({this.self, this.html = const Omittable.absent(), });

factory RepositoryRulesetLinks.fromJson(Map<String, dynamic> json) { return RepositoryRulesetLinks(
  self: json['self'] != null ? RepositoryRulesetLinksSelf.fromJson(json['self'] as Map<String, dynamic>) : null,
  html: json.containsKey('html') ? Omittable(json['html'] != null ? RepositoryRulesetLinksHtml.fromJson(json['html'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

final RepositoryRulesetLinksSelf? self;

final Omittable<RepositoryRulesetLinksHtml?> html;

Map<String, dynamic> toJson() { return {
  if (self != null) 'self': self?.toJson(),
  if (html.isPresent) 'html': html.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'self', 'html'}.contains(key)); } 
RepositoryRulesetLinks copyWith({RepositoryRulesetLinksSelf? Function()? self, Omittable<RepositoryRulesetLinksHtml?>? html, }) { return RepositoryRulesetLinks(
  self: self != null ? self() : this.self,
  html: html ?? this.html,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryRulesetLinks &&
          self == other.self &&
          html == other.html; } 
@override int get hashCode { return Object.hash(self, html); } 
@override String toString() { return 'RepositoryRulesetLinks(self: $self, html: $html)'; } 
 }
