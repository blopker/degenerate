// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'firewall_rewrite_action.dart';import 'firewall_waf_action.dart';@immutable final class WafOverridesUpdateWafOverrideRequest {const WafOverridesUpdateWafOverrideRequest({required this.rewriteAction, required this.rules, required this.urls, });

factory WafOverridesUpdateWafOverrideRequest.fromJson(Map<String, dynamic> json) { return WafOverridesUpdateWafOverrideRequest(
  rewriteAction: FirewallRewriteAction.fromJson(json['rewrite_action'] as Map<String, dynamic>),
  rules: (json['rules'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v == null ? null : FirewallWafAction.fromJson(v as dynamic))),
  urls: (json['urls'] as List<dynamic>).map((e) => e as String).toList(),
); }

final FirewallRewriteAction rewriteAction;

/// An object that allows you to override the action of specific WAF rules. Each key of this object must be the ID of a WAF rule, and each value must be a valid WAF action. Unless you are disabling a rule, ensure that you also enable the rule group that this WAF rule belongs to. When creating a new URI-based WAF override, you must provide a `groups` object or a `rules` object.
final Map<String,FirewallWafAction?> rules;

/// The URLs to include in the current WAF override. You can use wildcards. Each entered URL will be escaped before use, which means you can only use simple wildcard patterns.
final List<String> urls;

Map<String, dynamic> toJson() { return {
  'rewrite_action': rewriteAction.toJson(),
  'rules': rules.map((k, v) => MapEntry(k, v?.toJson())),
  'urls': urls,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('rewrite_action') &&
      json.containsKey('rules') &&
      json.containsKey('urls'); } 
WafOverridesUpdateWafOverrideRequest copyWith({FirewallRewriteAction? rewriteAction, Map<String,FirewallWafAction?>? rules, List<String>? urls, }) { return WafOverridesUpdateWafOverrideRequest(
  rewriteAction: rewriteAction ?? this.rewriteAction,
  rules: rules ?? this.rules,
  urls: urls ?? this.urls,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WafOverridesUpdateWafOverrideRequest &&
          rewriteAction == other.rewriteAction &&
          rules == other.rules &&
          listEquals(urls, other.urls); } 
@override int get hashCode { return Object.hash(rewriteAction, rules, Object.hashAll(urls)); } 
@override String toString() { return 'WafOverridesUpdateWafOverrideRequest(rewriteAction: $rewriteAction, rules: $rules, urls: $urls)'; } 
 }
