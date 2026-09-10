// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rulesets_block_rule_request.dart';import 'rulesets_challenge_rule_request.dart';import 'rulesets_compress_response_rule_request.dart';import 'rulesets_d_do_s_dynamic_rule_request.dart';import 'rulesets_execute_rule_request.dart';import 'rulesets_force_connection_close_rule_request.dart';import 'rulesets_js_challenge_rule_request.dart';import 'rulesets_log_custom_field_rule_request.dart';import 'rulesets_log_rule_request.dart';import 'rulesets_managed_challenge_rule_request.dart';import 'rulesets_redirect_rule_request.dart';import 'rulesets_rewrite_rule_request.dart';import 'rulesets_route_rule_request.dart';import 'rulesets_score_rule_request.dart';import 'rulesets_serve_error_rule_request.dart';import 'rulesets_set_cache_control_rule_request.dart';import 'rulesets_set_cache_settings_rule_request.dart';import 'rulesets_set_cache_tags_rule_request.dart';import 'rulesets_set_config_rule_request.dart';import 'rulesets_skip_rule_request.dart';sealed class RulesetsRequestRuleRequest {const RulesetsRequestRuleRequest();

/// Deserialize from JSON, dispatching on the `action` discriminator.
factory RulesetsRequestRuleRequest.fromJson(Map<String, dynamic> json) {return switch (json['action']) {
  'block' => RulesetsRequestRuleRequestBlock.fromJson(json),
  'challenge' => RulesetsRequestRuleRequestChallenge.fromJson(json),
  'compress_response' => RulesetsRequestRuleRequestCompressResponse.fromJson(json),
  'ddos_dynamic' => RulesetsRequestRuleRequestDdosDynamic.fromJson(json),
  'execute' => RulesetsRequestRuleRequestExecute.fromJson(json),
  'force_connection_close' => RulesetsRequestRuleRequestForceConnectionClose.fromJson(json),
  'js_challenge' => RulesetsRequestRuleRequestJsChallenge.fromJson(json),
  'log' => RulesetsRequestRuleRequestLog.fromJson(json),
  'log_custom_field' => RulesetsRequestRuleRequestLogCustomField.fromJson(json),
  'managed_challenge' => RulesetsRequestRuleRequestManagedChallenge.fromJson(json),
  'redirect' => RulesetsRequestRuleRequestRedirect.fromJson(json),
  'rewrite' => RulesetsRequestRuleRequestRewrite.fromJson(json),
  'route' => RulesetsRequestRuleRequestRoute.fromJson(json),
  'score' => RulesetsRequestRuleRequestScore.fromJson(json),
  'serve_error' => RulesetsRequestRuleRequestServeError.fromJson(json),
  'set_cache_control' => RulesetsRequestRuleRequestSetCacheControl.fromJson(json),
  'set_cache_settings' => RulesetsRequestRuleRequestSetCacheSettings.fromJson(json),
  'set_cache_tags' => RulesetsRequestRuleRequestSetCacheTags.fromJson(json),
  'set_config' => RulesetsRequestRuleRequestSetConfig.fromJson(json),
  'skip' => RulesetsRequestRuleRequestSkip.fromJson(json),
  _ => RulesetsRequestRuleRequest$Unknown(json),
};}

/// The discriminator value identifying this variant.
String get action;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return this is RulesetsRequestRuleRequest$Unknown;}
}
@immutable final class RulesetsRequestRuleRequestBlock extends RulesetsRequestRuleRequest {const RulesetsRequestRuleRequestBlock(this.rulesetsBlockRuleRequest);

factory RulesetsRequestRuleRequestBlock.fromJson(Map<String, dynamic> json) {return RulesetsRequestRuleRequestBlock(RulesetsBlockRuleRequest.fromJson(json));}

final RulesetsBlockRuleRequest rulesetsBlockRuleRequest;

@override String get action {return 'block';}
@override Map<String, dynamic> toJson() {return {...rulesetsBlockRuleRequest.toJson(), 'action': action};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is RulesetsRequestRuleRequestBlock && rulesetsBlockRuleRequest == other.rulesetsBlockRuleRequest;}
@override int get hashCode {return rulesetsBlockRuleRequest.hashCode;}
@override String toString() {return 'RulesetsRequestRuleRequestBlock(rulesetsBlockRuleRequest: $rulesetsBlockRuleRequest)';}
}
@immutable final class RulesetsRequestRuleRequestChallenge extends RulesetsRequestRuleRequest {const RulesetsRequestRuleRequestChallenge(this.rulesetsChallengeRuleRequest);

factory RulesetsRequestRuleRequestChallenge.fromJson(Map<String, dynamic> json) {return RulesetsRequestRuleRequestChallenge(RulesetsChallengeRuleRequest.fromJson(json));}

final RulesetsChallengeRuleRequest rulesetsChallengeRuleRequest;

@override String get action {return 'challenge';}
@override Map<String, dynamic> toJson() {return {...rulesetsChallengeRuleRequest.toJson(), 'action': action};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is RulesetsRequestRuleRequestChallenge && rulesetsChallengeRuleRequest == other.rulesetsChallengeRuleRequest;}
@override int get hashCode {return rulesetsChallengeRuleRequest.hashCode;}
@override String toString() {return 'RulesetsRequestRuleRequestChallenge(rulesetsChallengeRuleRequest: $rulesetsChallengeRuleRequest)';}
}
@immutable final class RulesetsRequestRuleRequestCompressResponse extends RulesetsRequestRuleRequest {const RulesetsRequestRuleRequestCompressResponse(this.rulesetsCompressResponseRuleRequest);

factory RulesetsRequestRuleRequestCompressResponse.fromJson(Map<String, dynamic> json) {return RulesetsRequestRuleRequestCompressResponse(RulesetsCompressResponseRuleRequest.fromJson(json));}

final RulesetsCompressResponseRuleRequest rulesetsCompressResponseRuleRequest;

@override String get action {return 'compress_response';}
@override Map<String, dynamic> toJson() {return {...rulesetsCompressResponseRuleRequest.toJson(), 'action': action};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is RulesetsRequestRuleRequestCompressResponse && rulesetsCompressResponseRuleRequest == other.rulesetsCompressResponseRuleRequest;}
@override int get hashCode {return rulesetsCompressResponseRuleRequest.hashCode;}
@override String toString() {return 'RulesetsRequestRuleRequestCompressResponse(rulesetsCompressResponseRuleRequest: $rulesetsCompressResponseRuleRequest)';}
}
@immutable final class RulesetsRequestRuleRequestDdosDynamic extends RulesetsRequestRuleRequest {const RulesetsRequestRuleRequestDdosDynamic(this.rulesetsDDoSDynamicRuleRequest);

factory RulesetsRequestRuleRequestDdosDynamic.fromJson(Map<String, dynamic> json) {return RulesetsRequestRuleRequestDdosDynamic(RulesetsDDoSDynamicRuleRequest.fromJson(json));}

final RulesetsDDoSDynamicRuleRequest rulesetsDDoSDynamicRuleRequest;

@override String get action {return 'ddos_dynamic';}
@override Map<String, dynamic> toJson() {return {...rulesetsDDoSDynamicRuleRequest.toJson(), 'action': action};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is RulesetsRequestRuleRequestDdosDynamic && rulesetsDDoSDynamicRuleRequest == other.rulesetsDDoSDynamicRuleRequest;}
@override int get hashCode {return rulesetsDDoSDynamicRuleRequest.hashCode;}
@override String toString() {return 'RulesetsRequestRuleRequestDdosDynamic(rulesetsDDoSDynamicRuleRequest: $rulesetsDDoSDynamicRuleRequest)';}
}
@immutable final class RulesetsRequestRuleRequestExecute extends RulesetsRequestRuleRequest {const RulesetsRequestRuleRequestExecute(this.rulesetsExecuteRuleRequest);

factory RulesetsRequestRuleRequestExecute.fromJson(Map<String, dynamic> json) {return RulesetsRequestRuleRequestExecute(RulesetsExecuteRuleRequest.fromJson(json));}

final RulesetsExecuteRuleRequest rulesetsExecuteRuleRequest;

@override String get action {return 'execute';}
@override Map<String, dynamic> toJson() {return {...rulesetsExecuteRuleRequest.toJson(), 'action': action};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is RulesetsRequestRuleRequestExecute && rulesetsExecuteRuleRequest == other.rulesetsExecuteRuleRequest;}
@override int get hashCode {return rulesetsExecuteRuleRequest.hashCode;}
@override String toString() {return 'RulesetsRequestRuleRequestExecute(rulesetsExecuteRuleRequest: $rulesetsExecuteRuleRequest)';}
}
@immutable final class RulesetsRequestRuleRequestForceConnectionClose extends RulesetsRequestRuleRequest {const RulesetsRequestRuleRequestForceConnectionClose(this.rulesetsForceConnectionCloseRuleRequest);

factory RulesetsRequestRuleRequestForceConnectionClose.fromJson(Map<String, dynamic> json) {return RulesetsRequestRuleRequestForceConnectionClose(RulesetsForceConnectionCloseRuleRequest.fromJson(json));}

final RulesetsForceConnectionCloseRuleRequest rulesetsForceConnectionCloseRuleRequest;

@override String get action {return 'force_connection_close';}
@override Map<String, dynamic> toJson() {return {...rulesetsForceConnectionCloseRuleRequest.toJson(), 'action': action};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is RulesetsRequestRuleRequestForceConnectionClose && rulesetsForceConnectionCloseRuleRequest == other.rulesetsForceConnectionCloseRuleRequest;}
@override int get hashCode {return rulesetsForceConnectionCloseRuleRequest.hashCode;}
@override String toString() {return 'RulesetsRequestRuleRequestForceConnectionClose(rulesetsForceConnectionCloseRuleRequest: $rulesetsForceConnectionCloseRuleRequest)';}
}
@immutable final class RulesetsRequestRuleRequestJsChallenge extends RulesetsRequestRuleRequest {const RulesetsRequestRuleRequestJsChallenge(this.rulesetsJsChallengeRuleRequest);

factory RulesetsRequestRuleRequestJsChallenge.fromJson(Map<String, dynamic> json) {return RulesetsRequestRuleRequestJsChallenge(RulesetsJsChallengeRuleRequest.fromJson(json));}

final RulesetsJsChallengeRuleRequest rulesetsJsChallengeRuleRequest;

@override String get action {return 'js_challenge';}
@override Map<String, dynamic> toJson() {return {...rulesetsJsChallengeRuleRequest.toJson(), 'action': action};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is RulesetsRequestRuleRequestJsChallenge && rulesetsJsChallengeRuleRequest == other.rulesetsJsChallengeRuleRequest;}
@override int get hashCode {return rulesetsJsChallengeRuleRequest.hashCode;}
@override String toString() {return 'RulesetsRequestRuleRequestJsChallenge(rulesetsJsChallengeRuleRequest: $rulesetsJsChallengeRuleRequest)';}
}
@immutable final class RulesetsRequestRuleRequestLog extends RulesetsRequestRuleRequest {const RulesetsRequestRuleRequestLog(this.rulesetsLogRuleRequest);

factory RulesetsRequestRuleRequestLog.fromJson(Map<String, dynamic> json) {return RulesetsRequestRuleRequestLog(RulesetsLogRuleRequest.fromJson(json));}

final RulesetsLogRuleRequest rulesetsLogRuleRequest;

@override String get action {return 'log';}
@override Map<String, dynamic> toJson() {return {...rulesetsLogRuleRequest.toJson(), 'action': action};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is RulesetsRequestRuleRequestLog && rulesetsLogRuleRequest == other.rulesetsLogRuleRequest;}
@override int get hashCode {return rulesetsLogRuleRequest.hashCode;}
@override String toString() {return 'RulesetsRequestRuleRequestLog(rulesetsLogRuleRequest: $rulesetsLogRuleRequest)';}
}
@immutable final class RulesetsRequestRuleRequestLogCustomField extends RulesetsRequestRuleRequest {const RulesetsRequestRuleRequestLogCustomField(this.rulesetsLogCustomFieldRuleRequest);

factory RulesetsRequestRuleRequestLogCustomField.fromJson(Map<String, dynamic> json) {return RulesetsRequestRuleRequestLogCustomField(RulesetsLogCustomFieldRuleRequest.fromJson(json));}

final RulesetsLogCustomFieldRuleRequest rulesetsLogCustomFieldRuleRequest;

@override String get action {return 'log_custom_field';}
@override Map<String, dynamic> toJson() {return {...rulesetsLogCustomFieldRuleRequest.toJson(), 'action': action};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is RulesetsRequestRuleRequestLogCustomField && rulesetsLogCustomFieldRuleRequest == other.rulesetsLogCustomFieldRuleRequest;}
@override int get hashCode {return rulesetsLogCustomFieldRuleRequest.hashCode;}
@override String toString() {return 'RulesetsRequestRuleRequestLogCustomField(rulesetsLogCustomFieldRuleRequest: $rulesetsLogCustomFieldRuleRequest)';}
}
@immutable final class RulesetsRequestRuleRequestManagedChallenge extends RulesetsRequestRuleRequest {const RulesetsRequestRuleRequestManagedChallenge(this.rulesetsManagedChallengeRuleRequest);

factory RulesetsRequestRuleRequestManagedChallenge.fromJson(Map<String, dynamic> json) {return RulesetsRequestRuleRequestManagedChallenge(RulesetsManagedChallengeRuleRequest.fromJson(json));}

final RulesetsManagedChallengeRuleRequest rulesetsManagedChallengeRuleRequest;

@override String get action {return 'managed_challenge';}
@override Map<String, dynamic> toJson() {return {...rulesetsManagedChallengeRuleRequest.toJson(), 'action': action};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is RulesetsRequestRuleRequestManagedChallenge && rulesetsManagedChallengeRuleRequest == other.rulesetsManagedChallengeRuleRequest;}
@override int get hashCode {return rulesetsManagedChallengeRuleRequest.hashCode;}
@override String toString() {return 'RulesetsRequestRuleRequestManagedChallenge(rulesetsManagedChallengeRuleRequest: $rulesetsManagedChallengeRuleRequest)';}
}
@immutable final class RulesetsRequestRuleRequestRedirect extends RulesetsRequestRuleRequest {const RulesetsRequestRuleRequestRedirect(this.rulesetsRedirectRuleRequest);

factory RulesetsRequestRuleRequestRedirect.fromJson(Map<String, dynamic> json) {return RulesetsRequestRuleRequestRedirect(RulesetsRedirectRuleRequest.fromJson(json));}

final RulesetsRedirectRuleRequest rulesetsRedirectRuleRequest;

@override String get action {return 'redirect';}
@override Map<String, dynamic> toJson() {return {...rulesetsRedirectRuleRequest.toJson(), 'action': action};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is RulesetsRequestRuleRequestRedirect && rulesetsRedirectRuleRequest == other.rulesetsRedirectRuleRequest;}
@override int get hashCode {return rulesetsRedirectRuleRequest.hashCode;}
@override String toString() {return 'RulesetsRequestRuleRequestRedirect(rulesetsRedirectRuleRequest: $rulesetsRedirectRuleRequest)';}
}
@immutable final class RulesetsRequestRuleRequestRewrite extends RulesetsRequestRuleRequest {const RulesetsRequestRuleRequestRewrite(this.rulesetsRewriteRuleRequest);

factory RulesetsRequestRuleRequestRewrite.fromJson(Map<String, dynamic> json) {return RulesetsRequestRuleRequestRewrite(RulesetsRewriteRuleRequest.fromJson(json));}

final RulesetsRewriteRuleRequest rulesetsRewriteRuleRequest;

@override String get action {return 'rewrite';}
@override Map<String, dynamic> toJson() {return {...rulesetsRewriteRuleRequest.toJson(), 'action': action};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is RulesetsRequestRuleRequestRewrite && rulesetsRewriteRuleRequest == other.rulesetsRewriteRuleRequest;}
@override int get hashCode {return rulesetsRewriteRuleRequest.hashCode;}
@override String toString() {return 'RulesetsRequestRuleRequestRewrite(rulesetsRewriteRuleRequest: $rulesetsRewriteRuleRequest)';}
}
@immutable final class RulesetsRequestRuleRequestRoute extends RulesetsRequestRuleRequest {const RulesetsRequestRuleRequestRoute(this.rulesetsRouteRuleRequest);

factory RulesetsRequestRuleRequestRoute.fromJson(Map<String, dynamic> json) {return RulesetsRequestRuleRequestRoute(RulesetsRouteRuleRequest.fromJson(json));}

final RulesetsRouteRuleRequest rulesetsRouteRuleRequest;

@override String get action {return 'route';}
@override Map<String, dynamic> toJson() {return {...rulesetsRouteRuleRequest.toJson(), 'action': action};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is RulesetsRequestRuleRequestRoute && rulesetsRouteRuleRequest == other.rulesetsRouteRuleRequest;}
@override int get hashCode {return rulesetsRouteRuleRequest.hashCode;}
@override String toString() {return 'RulesetsRequestRuleRequestRoute(rulesetsRouteRuleRequest: $rulesetsRouteRuleRequest)';}
}
@immutable final class RulesetsRequestRuleRequestScore extends RulesetsRequestRuleRequest {const RulesetsRequestRuleRequestScore(this.rulesetsScoreRuleRequest);

factory RulesetsRequestRuleRequestScore.fromJson(Map<String, dynamic> json) {return RulesetsRequestRuleRequestScore(RulesetsScoreRuleRequest.fromJson(json));}

final RulesetsScoreRuleRequest rulesetsScoreRuleRequest;

@override String get action {return 'score';}
@override Map<String, dynamic> toJson() {return {...rulesetsScoreRuleRequest.toJson(), 'action': action};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is RulesetsRequestRuleRequestScore && rulesetsScoreRuleRequest == other.rulesetsScoreRuleRequest;}
@override int get hashCode {return rulesetsScoreRuleRequest.hashCode;}
@override String toString() {return 'RulesetsRequestRuleRequestScore(rulesetsScoreRuleRequest: $rulesetsScoreRuleRequest)';}
}
@immutable final class RulesetsRequestRuleRequestServeError extends RulesetsRequestRuleRequest {const RulesetsRequestRuleRequestServeError(this.rulesetsServeErrorRuleRequest);

factory RulesetsRequestRuleRequestServeError.fromJson(Map<String, dynamic> json) {return RulesetsRequestRuleRequestServeError(RulesetsServeErrorRuleRequest.fromJson(json));}

final RulesetsServeErrorRuleRequest rulesetsServeErrorRuleRequest;

@override String get action {return 'serve_error';}
@override Map<String, dynamic> toJson() {return {...rulesetsServeErrorRuleRequest.toJson(), 'action': action};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is RulesetsRequestRuleRequestServeError && rulesetsServeErrorRuleRequest == other.rulesetsServeErrorRuleRequest;}
@override int get hashCode {return rulesetsServeErrorRuleRequest.hashCode;}
@override String toString() {return 'RulesetsRequestRuleRequestServeError(rulesetsServeErrorRuleRequest: $rulesetsServeErrorRuleRequest)';}
}
@immutable final class RulesetsRequestRuleRequestSetCacheControl extends RulesetsRequestRuleRequest {const RulesetsRequestRuleRequestSetCacheControl(this.rulesetsSetCacheControlRuleRequest);

factory RulesetsRequestRuleRequestSetCacheControl.fromJson(Map<String, dynamic> json) {return RulesetsRequestRuleRequestSetCacheControl(RulesetsSetCacheControlRuleRequest.fromJson(json));}

final RulesetsSetCacheControlRuleRequest rulesetsSetCacheControlRuleRequest;

@override String get action {return 'set_cache_control';}
@override Map<String, dynamic> toJson() {return {...rulesetsSetCacheControlRuleRequest.toJson(), 'action': action};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is RulesetsRequestRuleRequestSetCacheControl && rulesetsSetCacheControlRuleRequest == other.rulesetsSetCacheControlRuleRequest;}
@override int get hashCode {return rulesetsSetCacheControlRuleRequest.hashCode;}
@override String toString() {return 'RulesetsRequestRuleRequestSetCacheControl(rulesetsSetCacheControlRuleRequest: $rulesetsSetCacheControlRuleRequest)';}
}
@immutable final class RulesetsRequestRuleRequestSetCacheSettings extends RulesetsRequestRuleRequest {const RulesetsRequestRuleRequestSetCacheSettings(this.rulesetsSetCacheSettingsRuleRequest);

factory RulesetsRequestRuleRequestSetCacheSettings.fromJson(Map<String, dynamic> json) {return RulesetsRequestRuleRequestSetCacheSettings(RulesetsSetCacheSettingsRuleRequest.fromJson(json));}

final RulesetsSetCacheSettingsRuleRequest rulesetsSetCacheSettingsRuleRequest;

@override String get action {return 'set_cache_settings';}
@override Map<String, dynamic> toJson() {return {...rulesetsSetCacheSettingsRuleRequest.toJson(), 'action': action};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is RulesetsRequestRuleRequestSetCacheSettings && rulesetsSetCacheSettingsRuleRequest == other.rulesetsSetCacheSettingsRuleRequest;}
@override int get hashCode {return rulesetsSetCacheSettingsRuleRequest.hashCode;}
@override String toString() {return 'RulesetsRequestRuleRequestSetCacheSettings(rulesetsSetCacheSettingsRuleRequest: $rulesetsSetCacheSettingsRuleRequest)';}
}
@immutable final class RulesetsRequestRuleRequestSetCacheTags extends RulesetsRequestRuleRequest {const RulesetsRequestRuleRequestSetCacheTags(this.rulesetsSetCacheTagsRuleRequest);

factory RulesetsRequestRuleRequestSetCacheTags.fromJson(Map<String, dynamic> json) {return RulesetsRequestRuleRequestSetCacheTags(RulesetsSetCacheTagsRuleRequest.fromJson(json));}

final RulesetsSetCacheTagsRuleRequest rulesetsSetCacheTagsRuleRequest;

@override String get action {return 'set_cache_tags';}
@override Map<String, dynamic> toJson() {return {...rulesetsSetCacheTagsRuleRequest.toJson(), 'action': action};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is RulesetsRequestRuleRequestSetCacheTags && rulesetsSetCacheTagsRuleRequest == other.rulesetsSetCacheTagsRuleRequest;}
@override int get hashCode {return rulesetsSetCacheTagsRuleRequest.hashCode;}
@override String toString() {return 'RulesetsRequestRuleRequestSetCacheTags(rulesetsSetCacheTagsRuleRequest: $rulesetsSetCacheTagsRuleRequest)';}
}
@immutable final class RulesetsRequestRuleRequestSetConfig extends RulesetsRequestRuleRequest {const RulesetsRequestRuleRequestSetConfig(this.rulesetsSetConfigRuleRequest);

factory RulesetsRequestRuleRequestSetConfig.fromJson(Map<String, dynamic> json) {return RulesetsRequestRuleRequestSetConfig(RulesetsSetConfigRuleRequest.fromJson(json));}

final RulesetsSetConfigRuleRequest rulesetsSetConfigRuleRequest;

@override String get action {return 'set_config';}
@override Map<String, dynamic> toJson() {return {...rulesetsSetConfigRuleRequest.toJson(), 'action': action};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is RulesetsRequestRuleRequestSetConfig && rulesetsSetConfigRuleRequest == other.rulesetsSetConfigRuleRequest;}
@override int get hashCode {return rulesetsSetConfigRuleRequest.hashCode;}
@override String toString() {return 'RulesetsRequestRuleRequestSetConfig(rulesetsSetConfigRuleRequest: $rulesetsSetConfigRuleRequest)';}
}
@immutable final class RulesetsRequestRuleRequestSkip extends RulesetsRequestRuleRequest {const RulesetsRequestRuleRequestSkip(this.rulesetsSkipRuleRequest);

factory RulesetsRequestRuleRequestSkip.fromJson(Map<String, dynamic> json) {return RulesetsRequestRuleRequestSkip(RulesetsSkipRuleRequest.fromJson(json));}

final RulesetsSkipRuleRequest rulesetsSkipRuleRequest;

@override String get action {return 'skip';}
@override Map<String, dynamic> toJson() {return {...rulesetsSkipRuleRequest.toJson(), 'action': action};}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is RulesetsRequestRuleRequestSkip && rulesetsSkipRuleRequest == other.rulesetsSkipRuleRequest;}
@override int get hashCode {return rulesetsSkipRuleRequest.hashCode;}
@override String toString() {return 'RulesetsRequestRuleRequestSkip(rulesetsSkipRuleRequest: $rulesetsSkipRuleRequest)';}
}
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
@immutable final class RulesetsRequestRuleRequest$Unknown extends RulesetsRequestRuleRequest {const RulesetsRequestRuleRequest$Unknown(this.json);

final Map<String, dynamic> json;

@override String get action {return json['action'] as String? ?? '';}
@override Map<String, dynamic> toJson() {return json;}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is RulesetsRequestRuleRequest$Unknown && json == other.json;}
@override int get hashCode {return json.hashCode;}
@override String toString() {return 'RulesetsRequestRuleRequest.unknown($json)';}
}
