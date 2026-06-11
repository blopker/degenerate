// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rulesets_block_rule.dart';import 'rulesets_challenge_rule.dart';import 'rulesets_compress_response_rule.dart';import 'rulesets_d_do_s_dynamic_rule.dart';import 'rulesets_execute_rule.dart';import 'rulesets_force_connection_close_rule.dart';import 'rulesets_js_challenge_rule.dart';import 'rulesets_log_custom_field_rule.dart';import 'rulesets_log_rule.dart';import 'rulesets_managed_challenge_rule.dart';import 'rulesets_redirect_rule.dart';import 'rulesets_rewrite_rule.dart';import 'rulesets_route_rule.dart';import 'rulesets_score_rule.dart';import 'rulesets_serve_error_rule.dart';import 'rulesets_set_cache_control_rule.dart';import 'rulesets_set_cache_settings_rule.dart';import 'rulesets_set_cache_tags_rule.dart';import 'rulesets_set_config_rule.dart';import 'rulesets_skip_rule.dart';sealed class RulesetsRequestRule {const RulesetsRequestRule();

/// Deserialize from JSON, dispatching on the `action` discriminator.
factory RulesetsRequestRule.fromJson(Map<String, dynamic> json) { return switch (json['action']) {
  'block' => RulesetsRequestRuleBlock.fromJson(json),
  'challenge' => RulesetsRequestRuleChallenge.fromJson(json),
  'compress_response' => RulesetsRequestRuleCompressResponse.fromJson(json),
  'ddos_dynamic' => RulesetsRequestRuleDdosDynamic.fromJson(json),
  'execute' => RulesetsRequestRuleExecute.fromJson(json),
  'force_connection_close' => RulesetsRequestRuleForceConnectionClose.fromJson(json),
  'js_challenge' => RulesetsRequestRuleJsChallenge.fromJson(json),
  'log' => RulesetsRequestRuleLog.fromJson(json),
  'log_custom_field' => RulesetsRequestRuleLogCustomField.fromJson(json),
  'managed_challenge' => RulesetsRequestRuleManagedChallenge.fromJson(json),
  'redirect' => RulesetsRequestRuleRedirect.fromJson(json),
  'rewrite' => RulesetsRequestRuleRewrite.fromJson(json),
  'route' => RulesetsRequestRuleRoute.fromJson(json),
  'score' => RulesetsRequestRuleScore.fromJson(json),
  'serve_error' => RulesetsRequestRuleServeError.fromJson(json),
  'set_cache_control' => RulesetsRequestRuleSetCacheControl.fromJson(json),
  'set_cache_settings' => RulesetsRequestRuleSetCacheSettings.fromJson(json),
  'set_cache_tags' => RulesetsRequestRuleSetCacheTags.fromJson(json),
  'set_config' => RulesetsRequestRuleSetConfig.fromJson(json),
  'skip' => RulesetsRequestRuleSkip.fromJson(json),
  _ => RulesetsRequestRule$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get action;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is RulesetsRequestRule$Unknown; } 
 }
@immutable final class RulesetsRequestRuleBlock extends RulesetsRequestRule {const RulesetsRequestRuleBlock(this.rulesetsBlockRule);

factory RulesetsRequestRuleBlock.fromJson(Map<String, dynamic> json) { return RulesetsRequestRuleBlock(RulesetsBlockRule.fromJson(json)); }

final RulesetsBlockRule rulesetsBlockRule;

@override String get action { return 'block'; } 
@override Map<String, dynamic> toJson() { return {...rulesetsBlockRule.toJson(), 'action': action}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RulesetsRequestRuleBlock && rulesetsBlockRule == other.rulesetsBlockRule; } 
@override int get hashCode { return rulesetsBlockRule.hashCode; } 
@override String toString() { return 'RulesetsRequestRuleBlock(rulesetsBlockRule: $rulesetsBlockRule)'; } 
 }
@immutable final class RulesetsRequestRuleChallenge extends RulesetsRequestRule {const RulesetsRequestRuleChallenge(this.rulesetsChallengeRule);

factory RulesetsRequestRuleChallenge.fromJson(Map<String, dynamic> json) { return RulesetsRequestRuleChallenge(RulesetsChallengeRule.fromJson(json)); }

final RulesetsChallengeRule rulesetsChallengeRule;

@override String get action { return 'challenge'; } 
@override Map<String, dynamic> toJson() { return {...rulesetsChallengeRule.toJson(), 'action': action}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RulesetsRequestRuleChallenge && rulesetsChallengeRule == other.rulesetsChallengeRule; } 
@override int get hashCode { return rulesetsChallengeRule.hashCode; } 
@override String toString() { return 'RulesetsRequestRuleChallenge(rulesetsChallengeRule: $rulesetsChallengeRule)'; } 
 }
@immutable final class RulesetsRequestRuleCompressResponse extends RulesetsRequestRule {const RulesetsRequestRuleCompressResponse(this.rulesetsCompressResponseRule);

factory RulesetsRequestRuleCompressResponse.fromJson(Map<String, dynamic> json) { return RulesetsRequestRuleCompressResponse(RulesetsCompressResponseRule.fromJson(json)); }

final RulesetsCompressResponseRule rulesetsCompressResponseRule;

@override String get action { return 'compress_response'; } 
@override Map<String, dynamic> toJson() { return {...rulesetsCompressResponseRule.toJson(), 'action': action}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RulesetsRequestRuleCompressResponse && rulesetsCompressResponseRule == other.rulesetsCompressResponseRule; } 
@override int get hashCode { return rulesetsCompressResponseRule.hashCode; } 
@override String toString() { return 'RulesetsRequestRuleCompressResponse(rulesetsCompressResponseRule: $rulesetsCompressResponseRule)'; } 
 }
@immutable final class RulesetsRequestRuleDdosDynamic extends RulesetsRequestRule {const RulesetsRequestRuleDdosDynamic(this.rulesetsDDoSDynamicRule);

factory RulesetsRequestRuleDdosDynamic.fromJson(Map<String, dynamic> json) { return RulesetsRequestRuleDdosDynamic(RulesetsDDoSDynamicRule.fromJson(json)); }

final RulesetsDDoSDynamicRule rulesetsDDoSDynamicRule;

@override String get action { return 'ddos_dynamic'; } 
@override Map<String, dynamic> toJson() { return {...rulesetsDDoSDynamicRule.toJson(), 'action': action}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RulesetsRequestRuleDdosDynamic && rulesetsDDoSDynamicRule == other.rulesetsDDoSDynamicRule; } 
@override int get hashCode { return rulesetsDDoSDynamicRule.hashCode; } 
@override String toString() { return 'RulesetsRequestRuleDdosDynamic(rulesetsDDoSDynamicRule: $rulesetsDDoSDynamicRule)'; } 
 }
@immutable final class RulesetsRequestRuleExecute extends RulesetsRequestRule {const RulesetsRequestRuleExecute(this.rulesetsExecuteRule);

factory RulesetsRequestRuleExecute.fromJson(Map<String, dynamic> json) { return RulesetsRequestRuleExecute(RulesetsExecuteRule.fromJson(json)); }

final RulesetsExecuteRule rulesetsExecuteRule;

@override String get action { return 'execute'; } 
@override Map<String, dynamic> toJson() { return {...rulesetsExecuteRule.toJson(), 'action': action}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RulesetsRequestRuleExecute && rulesetsExecuteRule == other.rulesetsExecuteRule; } 
@override int get hashCode { return rulesetsExecuteRule.hashCode; } 
@override String toString() { return 'RulesetsRequestRuleExecute(rulesetsExecuteRule: $rulesetsExecuteRule)'; } 
 }
@immutable final class RulesetsRequestRuleForceConnectionClose extends RulesetsRequestRule {const RulesetsRequestRuleForceConnectionClose(this.rulesetsForceConnectionCloseRule);

factory RulesetsRequestRuleForceConnectionClose.fromJson(Map<String, dynamic> json) { return RulesetsRequestRuleForceConnectionClose(RulesetsForceConnectionCloseRule.fromJson(json)); }

final RulesetsForceConnectionCloseRule rulesetsForceConnectionCloseRule;

@override String get action { return 'force_connection_close'; } 
@override Map<String, dynamic> toJson() { return {...rulesetsForceConnectionCloseRule.toJson(), 'action': action}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RulesetsRequestRuleForceConnectionClose && rulesetsForceConnectionCloseRule == other.rulesetsForceConnectionCloseRule; } 
@override int get hashCode { return rulesetsForceConnectionCloseRule.hashCode; } 
@override String toString() { return 'RulesetsRequestRuleForceConnectionClose(rulesetsForceConnectionCloseRule: $rulesetsForceConnectionCloseRule)'; } 
 }
@immutable final class RulesetsRequestRuleJsChallenge extends RulesetsRequestRule {const RulesetsRequestRuleJsChallenge(this.rulesetsJsChallengeRule);

factory RulesetsRequestRuleJsChallenge.fromJson(Map<String, dynamic> json) { return RulesetsRequestRuleJsChallenge(RulesetsJsChallengeRule.fromJson(json)); }

final RulesetsJsChallengeRule rulesetsJsChallengeRule;

@override String get action { return 'js_challenge'; } 
@override Map<String, dynamic> toJson() { return {...rulesetsJsChallengeRule.toJson(), 'action': action}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RulesetsRequestRuleJsChallenge && rulesetsJsChallengeRule == other.rulesetsJsChallengeRule; } 
@override int get hashCode { return rulesetsJsChallengeRule.hashCode; } 
@override String toString() { return 'RulesetsRequestRuleJsChallenge(rulesetsJsChallengeRule: $rulesetsJsChallengeRule)'; } 
 }
@immutable final class RulesetsRequestRuleLog extends RulesetsRequestRule {const RulesetsRequestRuleLog(this.rulesetsLogRule);

factory RulesetsRequestRuleLog.fromJson(Map<String, dynamic> json) { return RulesetsRequestRuleLog(RulesetsLogRule.fromJson(json)); }

final RulesetsLogRule rulesetsLogRule;

@override String get action { return 'log'; } 
@override Map<String, dynamic> toJson() { return {...rulesetsLogRule.toJson(), 'action': action}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RulesetsRequestRuleLog && rulesetsLogRule == other.rulesetsLogRule; } 
@override int get hashCode { return rulesetsLogRule.hashCode; } 
@override String toString() { return 'RulesetsRequestRuleLog(rulesetsLogRule: $rulesetsLogRule)'; } 
 }
@immutable final class RulesetsRequestRuleLogCustomField extends RulesetsRequestRule {const RulesetsRequestRuleLogCustomField(this.rulesetsLogCustomFieldRule);

factory RulesetsRequestRuleLogCustomField.fromJson(Map<String, dynamic> json) { return RulesetsRequestRuleLogCustomField(RulesetsLogCustomFieldRule.fromJson(json)); }

final RulesetsLogCustomFieldRule rulesetsLogCustomFieldRule;

@override String get action { return 'log_custom_field'; } 
@override Map<String, dynamic> toJson() { return {...rulesetsLogCustomFieldRule.toJson(), 'action': action}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RulesetsRequestRuleLogCustomField && rulesetsLogCustomFieldRule == other.rulesetsLogCustomFieldRule; } 
@override int get hashCode { return rulesetsLogCustomFieldRule.hashCode; } 
@override String toString() { return 'RulesetsRequestRuleLogCustomField(rulesetsLogCustomFieldRule: $rulesetsLogCustomFieldRule)'; } 
 }
@immutable final class RulesetsRequestRuleManagedChallenge extends RulesetsRequestRule {const RulesetsRequestRuleManagedChallenge(this.rulesetsManagedChallengeRule);

factory RulesetsRequestRuleManagedChallenge.fromJson(Map<String, dynamic> json) { return RulesetsRequestRuleManagedChallenge(RulesetsManagedChallengeRule.fromJson(json)); }

final RulesetsManagedChallengeRule rulesetsManagedChallengeRule;

@override String get action { return 'managed_challenge'; } 
@override Map<String, dynamic> toJson() { return {...rulesetsManagedChallengeRule.toJson(), 'action': action}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RulesetsRequestRuleManagedChallenge && rulesetsManagedChallengeRule == other.rulesetsManagedChallengeRule; } 
@override int get hashCode { return rulesetsManagedChallengeRule.hashCode; } 
@override String toString() { return 'RulesetsRequestRuleManagedChallenge(rulesetsManagedChallengeRule: $rulesetsManagedChallengeRule)'; } 
 }
@immutable final class RulesetsRequestRuleRedirect extends RulesetsRequestRule {const RulesetsRequestRuleRedirect(this.rulesetsRedirectRule);

factory RulesetsRequestRuleRedirect.fromJson(Map<String, dynamic> json) { return RulesetsRequestRuleRedirect(RulesetsRedirectRule.fromJson(json)); }

final RulesetsRedirectRule rulesetsRedirectRule;

@override String get action { return 'redirect'; } 
@override Map<String, dynamic> toJson() { return {...rulesetsRedirectRule.toJson(), 'action': action}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RulesetsRequestRuleRedirect && rulesetsRedirectRule == other.rulesetsRedirectRule; } 
@override int get hashCode { return rulesetsRedirectRule.hashCode; } 
@override String toString() { return 'RulesetsRequestRuleRedirect(rulesetsRedirectRule: $rulesetsRedirectRule)'; } 
 }
@immutable final class RulesetsRequestRuleRewrite extends RulesetsRequestRule {const RulesetsRequestRuleRewrite(this.rulesetsRewriteRule);

factory RulesetsRequestRuleRewrite.fromJson(Map<String, dynamic> json) { return RulesetsRequestRuleRewrite(RulesetsRewriteRule.fromJson(json)); }

final RulesetsRewriteRule rulesetsRewriteRule;

@override String get action { return 'rewrite'; } 
@override Map<String, dynamic> toJson() { return {...rulesetsRewriteRule.toJson(), 'action': action}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RulesetsRequestRuleRewrite && rulesetsRewriteRule == other.rulesetsRewriteRule; } 
@override int get hashCode { return rulesetsRewriteRule.hashCode; } 
@override String toString() { return 'RulesetsRequestRuleRewrite(rulesetsRewriteRule: $rulesetsRewriteRule)'; } 
 }
@immutable final class RulesetsRequestRuleRoute extends RulesetsRequestRule {const RulesetsRequestRuleRoute(this.rulesetsRouteRule);

factory RulesetsRequestRuleRoute.fromJson(Map<String, dynamic> json) { return RulesetsRequestRuleRoute(RulesetsRouteRule.fromJson(json)); }

final RulesetsRouteRule rulesetsRouteRule;

@override String get action { return 'route'; } 
@override Map<String, dynamic> toJson() { return {...rulesetsRouteRule.toJson(), 'action': action}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RulesetsRequestRuleRoute && rulesetsRouteRule == other.rulesetsRouteRule; } 
@override int get hashCode { return rulesetsRouteRule.hashCode; } 
@override String toString() { return 'RulesetsRequestRuleRoute(rulesetsRouteRule: $rulesetsRouteRule)'; } 
 }
@immutable final class RulesetsRequestRuleScore extends RulesetsRequestRule {const RulesetsRequestRuleScore(this.rulesetsScoreRule);

factory RulesetsRequestRuleScore.fromJson(Map<String, dynamic> json) { return RulesetsRequestRuleScore(RulesetsScoreRule.fromJson(json)); }

final RulesetsScoreRule rulesetsScoreRule;

@override String get action { return 'score'; } 
@override Map<String, dynamic> toJson() { return {...rulesetsScoreRule.toJson(), 'action': action}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RulesetsRequestRuleScore && rulesetsScoreRule == other.rulesetsScoreRule; } 
@override int get hashCode { return rulesetsScoreRule.hashCode; } 
@override String toString() { return 'RulesetsRequestRuleScore(rulesetsScoreRule: $rulesetsScoreRule)'; } 
 }
@immutable final class RulesetsRequestRuleServeError extends RulesetsRequestRule {const RulesetsRequestRuleServeError(this.rulesetsServeErrorRule);

factory RulesetsRequestRuleServeError.fromJson(Map<String, dynamic> json) { return RulesetsRequestRuleServeError(RulesetsServeErrorRule.fromJson(json)); }

final RulesetsServeErrorRule rulesetsServeErrorRule;

@override String get action { return 'serve_error'; } 
@override Map<String, dynamic> toJson() { return {...rulesetsServeErrorRule.toJson(), 'action': action}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RulesetsRequestRuleServeError && rulesetsServeErrorRule == other.rulesetsServeErrorRule; } 
@override int get hashCode { return rulesetsServeErrorRule.hashCode; } 
@override String toString() { return 'RulesetsRequestRuleServeError(rulesetsServeErrorRule: $rulesetsServeErrorRule)'; } 
 }
@immutable final class RulesetsRequestRuleSetCacheControl extends RulesetsRequestRule {const RulesetsRequestRuleSetCacheControl(this.rulesetsSetCacheControlRule);

factory RulesetsRequestRuleSetCacheControl.fromJson(Map<String, dynamic> json) { return RulesetsRequestRuleSetCacheControl(RulesetsSetCacheControlRule.fromJson(json)); }

final RulesetsSetCacheControlRule rulesetsSetCacheControlRule;

@override String get action { return 'set_cache_control'; } 
@override Map<String, dynamic> toJson() { return {...rulesetsSetCacheControlRule.toJson(), 'action': action}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RulesetsRequestRuleSetCacheControl && rulesetsSetCacheControlRule == other.rulesetsSetCacheControlRule; } 
@override int get hashCode { return rulesetsSetCacheControlRule.hashCode; } 
@override String toString() { return 'RulesetsRequestRuleSetCacheControl(rulesetsSetCacheControlRule: $rulesetsSetCacheControlRule)'; } 
 }
@immutable final class RulesetsRequestRuleSetCacheSettings extends RulesetsRequestRule {const RulesetsRequestRuleSetCacheSettings(this.rulesetsSetCacheSettingsRule);

factory RulesetsRequestRuleSetCacheSettings.fromJson(Map<String, dynamic> json) { return RulesetsRequestRuleSetCacheSettings(RulesetsSetCacheSettingsRule.fromJson(json)); }

final RulesetsSetCacheSettingsRule rulesetsSetCacheSettingsRule;

@override String get action { return 'set_cache_settings'; } 
@override Map<String, dynamic> toJson() { return {...rulesetsSetCacheSettingsRule.toJson(), 'action': action}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RulesetsRequestRuleSetCacheSettings && rulesetsSetCacheSettingsRule == other.rulesetsSetCacheSettingsRule; } 
@override int get hashCode { return rulesetsSetCacheSettingsRule.hashCode; } 
@override String toString() { return 'RulesetsRequestRuleSetCacheSettings(rulesetsSetCacheSettingsRule: $rulesetsSetCacheSettingsRule)'; } 
 }
@immutable final class RulesetsRequestRuleSetCacheTags extends RulesetsRequestRule {const RulesetsRequestRuleSetCacheTags(this.rulesetsSetCacheTagsRule);

factory RulesetsRequestRuleSetCacheTags.fromJson(Map<String, dynamic> json) { return RulesetsRequestRuleSetCacheTags(RulesetsSetCacheTagsRule.fromJson(json)); }

final RulesetsSetCacheTagsRule rulesetsSetCacheTagsRule;

@override String get action { return 'set_cache_tags'; } 
@override Map<String, dynamic> toJson() { return {...rulesetsSetCacheTagsRule.toJson(), 'action': action}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RulesetsRequestRuleSetCacheTags && rulesetsSetCacheTagsRule == other.rulesetsSetCacheTagsRule; } 
@override int get hashCode { return rulesetsSetCacheTagsRule.hashCode; } 
@override String toString() { return 'RulesetsRequestRuleSetCacheTags(rulesetsSetCacheTagsRule: $rulesetsSetCacheTagsRule)'; } 
 }
@immutable final class RulesetsRequestRuleSetConfig extends RulesetsRequestRule {const RulesetsRequestRuleSetConfig(this.rulesetsSetConfigRule);

factory RulesetsRequestRuleSetConfig.fromJson(Map<String, dynamic> json) { return RulesetsRequestRuleSetConfig(RulesetsSetConfigRule.fromJson(json)); }

final RulesetsSetConfigRule rulesetsSetConfigRule;

@override String get action { return 'set_config'; } 
@override Map<String, dynamic> toJson() { return {...rulesetsSetConfigRule.toJson(), 'action': action}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RulesetsRequestRuleSetConfig && rulesetsSetConfigRule == other.rulesetsSetConfigRule; } 
@override int get hashCode { return rulesetsSetConfigRule.hashCode; } 
@override String toString() { return 'RulesetsRequestRuleSetConfig(rulesetsSetConfigRule: $rulesetsSetConfigRule)'; } 
 }
@immutable final class RulesetsRequestRuleSkip extends RulesetsRequestRule {const RulesetsRequestRuleSkip(this.rulesetsSkipRule);

factory RulesetsRequestRuleSkip.fromJson(Map<String, dynamic> json) { return RulesetsRequestRuleSkip(RulesetsSkipRule.fromJson(json)); }

final RulesetsSkipRule rulesetsSkipRule;

@override String get action { return 'skip'; } 
@override Map<String, dynamic> toJson() { return {...rulesetsSkipRule.toJson(), 'action': action}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RulesetsRequestRuleSkip && rulesetsSkipRule == other.rulesetsSkipRule; } 
@override int get hashCode { return rulesetsSkipRule.hashCode; } 
@override String toString() { return 'RulesetsRequestRuleSkip(rulesetsSkipRule: $rulesetsSkipRule)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
@immutable final class RulesetsRequestRule$Unknown extends RulesetsRequestRule {const RulesetsRequestRule$Unknown(this.json);

final Map<String, dynamic> json;

@override String get action { return json['action'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RulesetsRequestRule$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'RulesetsRequestRule.unknown($json)'; } 
 }
