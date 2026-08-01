// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zero_trust_gateway_rule_settings_audit_ssh.dart';import 'zero_trust_gateway_rule_settings_biso_admin_controls.dart';import 'zero_trust_gateway_rule_settings_block_page.dart';import 'zero_trust_gateway_rule_settings_check_session.dart';import 'zero_trust_gateway_rule_settings_dns_resolvers.dart';import 'zero_trust_gateway_rule_settings_egress.dart';import 'zero_trust_gateway_rule_settings_forensic_copy.dart';import 'zero_trust_gateway_rule_settings_l4override.dart';import 'zero_trust_gateway_rule_settings_notification_settings.dart';import 'zero_trust_gateway_rule_settings_payload_log.dart';import 'zero_trust_gateway_rule_settings_quarantine.dart';import 'zero_trust_gateway_rule_settings_redirect.dart';import 'zero_trust_gateway_rule_settings_resolve_dns_internally.dart';import 'zero_trust_gateway_rule_settings_untrusted_cert.dart';/// Defines settings for this rule. Settings apply only to specific rule types and must use compatible selectors. If Terraform detects drift, confirm the setting supports your rule type and check whether the API modifies the value. Use API-returned values in your configuration to prevent drift.
@immutable final class ZeroTrustGatewayRuleSettings {const ZeroTrustGatewayRuleSettings({this.addHeaders = const Omittable.absent(), this.allowChildBypass = const Omittable.absent(), this.auditSsh = const Omittable.absent(), this.bisoAdminControls, this.blockPage = const Omittable.absent(), this.blockPageEnabled, this.blockReason = const Omittable.absent(), this.bypassParentRule = const Omittable.absent(), this.checkSession = const Omittable.absent(), this.dnsResolvers = const Omittable.absent(), this.egress = const Omittable.absent(), this.forensicCopy = const Omittable.absent(), this.ignoreCnameCategoryMatches, this.insecureDisableDnssecValidation, this.ipCategories, this.ipIndicatorFeeds, this.l4override = const Omittable.absent(), this.notificationSettings = const Omittable.absent(), this.overrideHost, this.overrideIps = const Omittable.absent(), this.payloadLog = const Omittable.absent(), this.quarantine = const Omittable.absent(), this.redirect = const Omittable.absent(), this.resolveDnsInternally = const Omittable.absent(), this.resolveDnsThroughCloudflare = const Omittable.absent(), this.untrustedCert = const Omittable.absent(), });

factory ZeroTrustGatewayRuleSettings.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayRuleSettings(
  addHeaders: json.containsKey('add_headers') ? Omittable((json['add_headers'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, (v as List<dynamic>).map((e) => e as String).toList()))) : const Omittable.absent(),
  allowChildBypass: json.containsKey('allow_child_bypass') ? Omittable(json['allow_child_bypass'] as bool?) : const Omittable.absent(),
  auditSsh: json.containsKey('audit_ssh') ? Omittable(json['audit_ssh'] != null ? ZeroTrustGatewayRuleSettingsAuditSsh.fromJson(json['audit_ssh'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  bisoAdminControls: json['biso_admin_controls'] != null ? ZeroTrustGatewayRuleSettingsBisoAdminControls.fromJson(json['biso_admin_controls'] as Map<String, dynamic>) : null,
  blockPage: json.containsKey('block_page') ? Omittable(json['block_page'] != null ? ZeroTrustGatewayRuleSettingsBlockPage.fromJson(json['block_page'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  blockPageEnabled: json['block_page_enabled'] as bool?,
  blockReason: json.containsKey('block_reason') ? Omittable(json['block_reason'] as String?) : const Omittable.absent(),
  bypassParentRule: json.containsKey('bypass_parent_rule') ? Omittable(json['bypass_parent_rule'] as bool?) : const Omittable.absent(),
  checkSession: json.containsKey('check_session') ? Omittable(json['check_session'] != null ? ZeroTrustGatewayRuleSettingsCheckSession.fromJson(json['check_session'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  dnsResolvers: json.containsKey('dns_resolvers') ? Omittable(json['dns_resolvers'] != null ? ZeroTrustGatewayRuleSettingsDnsResolvers.fromJson(json['dns_resolvers'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  egress: json.containsKey('egress') ? Omittable(json['egress'] != null ? ZeroTrustGatewayRuleSettingsEgress.fromJson(json['egress'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  forensicCopy: json.containsKey('forensic_copy') ? Omittable(json['forensic_copy'] != null ? ZeroTrustGatewayRuleSettingsForensicCopy.fromJson(json['forensic_copy'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  ignoreCnameCategoryMatches: json['ignore_cname_category_matches'] as bool?,
  insecureDisableDnssecValidation: json['insecure_disable_dnssec_validation'] as bool?,
  ipCategories: json['ip_categories'] as bool?,
  ipIndicatorFeeds: json['ip_indicator_feeds'] as bool?,
  l4override: json.containsKey('l4override') ? Omittable(json['l4override'] != null ? ZeroTrustGatewayRuleSettingsL4override.fromJson(json['l4override'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  notificationSettings: json.containsKey('notification_settings') ? Omittable(json['notification_settings'] != null ? ZeroTrustGatewayRuleSettingsNotificationSettings.fromJson(json['notification_settings'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  overrideHost: json['override_host'] as String?,
  overrideIps: json.containsKey('override_ips') ? Omittable((json['override_ips'] as List<dynamic>?)?.map((e) => e as String).toList()) : const Omittable.absent(),
  payloadLog: json.containsKey('payload_log') ? Omittable(json['payload_log'] != null ? ZeroTrustGatewayRuleSettingsPayloadLog.fromJson(json['payload_log'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  quarantine: json.containsKey('quarantine') ? Omittable(json['quarantine'] != null ? ZeroTrustGatewayRuleSettingsQuarantine.fromJson(json['quarantine'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  redirect: json.containsKey('redirect') ? Omittable(json['redirect'] != null ? ZeroTrustGatewayRuleSettingsRedirect.fromJson(json['redirect'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  resolveDnsInternally: json.containsKey('resolve_dns_internally') ? Omittable(json['resolve_dns_internally'] != null ? ZeroTrustGatewayRuleSettingsResolveDnsInternally.fromJson(json['resolve_dns_internally'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  resolveDnsThroughCloudflare: json.containsKey('resolve_dns_through_cloudflare') ? Omittable(json['resolve_dns_through_cloudflare'] as bool?) : const Omittable.absent(),
  untrustedCert: json.containsKey('untrusted_cert') ? Omittable(json['untrusted_cert'] != null ? ZeroTrustGatewayRuleSettingsUntrustedCert.fromJson(json['untrusted_cert'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

/// Add custom headers to allowed requests as key-value pairs. Use header names as keys that map to arrays of header values. Settable only for `http` rules with the action set to `allow`.
final Omittable<Map<String,List<String>>?> addHeaders;

/// Set to enable MSP children to bypass this rule. Only parent MSP accounts can set this. this rule. Settable for all types of rules.
final Omittable<bool?> allowChildBypass;

/// Define the settings for the Audit SSH action. Settable only for `l4` rules with `audit_ssh` action.
final Omittable<ZeroTrustGatewayRuleSettingsAuditSsh?> auditSsh;

/// Configure browser isolation behavior. Settable only for `http` rules with the action set to `isolate`.
final ZeroTrustGatewayRuleSettingsBisoAdminControls? bisoAdminControls;

/// Configure custom block page settings. If missing or null, use the account settings. Settable only for `http` rules with the action set to `block`.
final Omittable<ZeroTrustGatewayRuleSettingsBlockPage?> blockPage;

/// Enable the custom block page. Settable only for `dns` rules with action `block`.
final bool? blockPageEnabled;

/// Explain why the rule blocks the request. The custom block page shows this text (if enabled). Settable only for `dns`, `l4`, and `http` rules when the action set to `block`.
final Omittable<String?> blockReason;

/// Set to enable MSP accounts to bypass their parent's rules. Only MSP child accounts can set this. Settable for all types of rules.
final Omittable<bool?> bypassParentRule;

/// Configure session check behavior. Settable only for `l4` and `http` rules with the action set to `allow`.
final Omittable<ZeroTrustGatewayRuleSettingsCheckSession?> checkSession;

/// Configure custom resolvers to route queries that match the resolver policy. Unused with 'resolve_dns_through_cloudflare' or 'resolve_dns_internally' settings. DNS queries get routed to the address closest to their origin. Only valid when a rule's action set to 'resolve'. Settable only for `dns_resolver` rules.
final Omittable<ZeroTrustGatewayRuleSettingsDnsResolvers?> dnsResolvers;

/// Configure how Gateway Proxy traffic egresses. You can enable this setting for rules with Egress actions and filters, or omit it to indicate local egress via WARP IPs. Settable only for `egress` rules.
final Omittable<ZeroTrustGatewayRuleSettingsEgress?> egress;

/// Configure whether a copy of the HTTP request will be sent to storage when the rule matches.
final Omittable<ZeroTrustGatewayRuleSettingsForensicCopy?> forensicCopy;

/// Ignore category matches at CNAME domains in a response. When off, evaluate categories in this rule against all CNAME domain categories in the response. Settable only for `dns` and `dns_resolver` rules.
final bool? ignoreCnameCategoryMatches;

/// Specify whether to disable DNSSEC validation (for Allow actions) `[INSECURE]`. Settable only for `dns` rules.
final bool? insecureDisableDnssecValidation;

/// Enable IPs in DNS resolver category blocks. The system blocks only domain name categories unless you enable this setting. Settable only for `dns` and `dns_resolver` rules.
final bool? ipCategories;

/// Indicates whether to include IPs in DNS resolver indicator feed blocks. Default, indicator feeds block only domain names. Settable only for `dns` and `dns_resolver` rules.
final bool? ipIndicatorFeeds;

/// Send matching traffic to the supplied destination IP address and port. Settable only for `l4` rules with the action set to `l4_override`.
final Omittable<ZeroTrustGatewayRuleSettingsL4override?> l4override;

/// Configure a notification to display on the user's device when this rule matched. Settable for all types of rules with the action set to `block`.
final Omittable<ZeroTrustGatewayRuleSettingsNotificationSettings?> notificationSettings;

/// Defines a hostname for override, for the matching DNS queries. Settable only for `dns` rules with the action set to `override`.
final String? overrideHost;

/// Defines a an IP or set of IPs for overriding matched DNS queries. Settable only for `dns` rules with the action set to `override`.
final Omittable<List<String>?> overrideIps;

/// Configure DLP payload logging. Settable only for `http` rules.
final Omittable<ZeroTrustGatewayRuleSettingsPayloadLog?> payloadLog;

/// Configure settings that apply to quarantine rules. Settable only for `http` rules.
final Omittable<ZeroTrustGatewayRuleSettingsQuarantine?> quarantine;

/// Apply settings to redirect rules. Settable only for `http` rules with the action set to `redirect`.
final Omittable<ZeroTrustGatewayRuleSettingsRedirect?> redirect;

/// Configure to forward the query to the internal DNS service, passing the specified 'view_id' as input. Not used when 'dns_resolvers' is specified or 'resolve_dns_through_cloudflare' is set. Only valid when a rule's action set to 'resolve'. Settable only for `dns_resolver` rules.
final Omittable<ZeroTrustGatewayRuleSettingsResolveDnsInternally?> resolveDnsInternally;

/// Enable to send queries that match the policy to Cloudflare's default 1.1.1.1 DNS resolver. Cannot set when 'dns_resolvers' specified or 'resolve_dns_internally' is set. Only valid when a rule's action set to 'resolve'. Settable only for `dns_resolver` rules.
final Omittable<bool?> resolveDnsThroughCloudflare;

/// Configure behavior when an upstream certificate is invalid or an SSL error occurs. Settable only for `http` rules with the action set to `allow`.
final Omittable<ZeroTrustGatewayRuleSettingsUntrustedCert?> untrustedCert;

Map<String, dynamic> toJson() { return {
  if (addHeaders.isPresent) 'add_headers': addHeaders.value,
  if (allowChildBypass.isPresent) 'allow_child_bypass': allowChildBypass.value,
  if (auditSsh.isPresent) 'audit_ssh': auditSsh.value?.toJson(),
  if (bisoAdminControls != null) 'biso_admin_controls': bisoAdminControls?.toJson(),
  if (blockPage.isPresent) 'block_page': blockPage.value?.toJson(),
  'block_page_enabled': ?blockPageEnabled,
  if (blockReason.isPresent) 'block_reason': blockReason.value,
  if (bypassParentRule.isPresent) 'bypass_parent_rule': bypassParentRule.value,
  if (checkSession.isPresent) 'check_session': checkSession.value?.toJson(),
  if (dnsResolvers.isPresent) 'dns_resolvers': dnsResolvers.value?.toJson(),
  if (egress.isPresent) 'egress': egress.value?.toJson(),
  if (forensicCopy.isPresent) 'forensic_copy': forensicCopy.value?.toJson(),
  'ignore_cname_category_matches': ?ignoreCnameCategoryMatches,
  'insecure_disable_dnssec_validation': ?insecureDisableDnssecValidation,
  'ip_categories': ?ipCategories,
  'ip_indicator_feeds': ?ipIndicatorFeeds,
  if (l4override.isPresent) 'l4override': l4override.value?.toJson(),
  if (notificationSettings.isPresent) 'notification_settings': notificationSettings.value?.toJson(),
  'override_host': ?overrideHost,
  if (overrideIps.isPresent) 'override_ips': overrideIps.value,
  if (payloadLog.isPresent) 'payload_log': payloadLog.value?.toJson(),
  if (quarantine.isPresent) 'quarantine': quarantine.value?.toJson(),
  if (redirect.isPresent) 'redirect': redirect.value?.toJson(),
  if (resolveDnsInternally.isPresent) 'resolve_dns_internally': resolveDnsInternally.value?.toJson(),
  if (resolveDnsThroughCloudflare.isPresent) 'resolve_dns_through_cloudflare': resolveDnsThroughCloudflare.value,
  if (untrustedCert.isPresent) 'untrusted_cert': untrustedCert.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'add_headers', 'allow_child_bypass', 'audit_ssh', 'biso_admin_controls', 'block_page', 'block_page_enabled', 'block_reason', 'bypass_parent_rule', 'check_session', 'dns_resolvers', 'egress', 'forensic_copy', 'ignore_cname_category_matches', 'insecure_disable_dnssec_validation', 'ip_categories', 'ip_indicator_feeds', 'l4override', 'notification_settings', 'override_host', 'override_ips', 'payload_log', 'quarantine', 'redirect', 'resolve_dns_internally', 'resolve_dns_through_cloudflare', 'untrusted_cert'}.contains(key)); } 
ZeroTrustGatewayRuleSettings copyWith({Omittable<Map<String,List<String>>?>? addHeaders, Omittable<bool?>? allowChildBypass, Omittable<ZeroTrustGatewayRuleSettingsAuditSsh?>? auditSsh, ZeroTrustGatewayRuleSettingsBisoAdminControls? Function()? bisoAdminControls, Omittable<ZeroTrustGatewayRuleSettingsBlockPage?>? blockPage, bool? Function()? blockPageEnabled, Omittable<String?>? blockReason, Omittable<bool?>? bypassParentRule, Omittable<ZeroTrustGatewayRuleSettingsCheckSession?>? checkSession, Omittable<ZeroTrustGatewayRuleSettingsDnsResolvers?>? dnsResolvers, Omittable<ZeroTrustGatewayRuleSettingsEgress?>? egress, Omittable<ZeroTrustGatewayRuleSettingsForensicCopy?>? forensicCopy, bool? Function()? ignoreCnameCategoryMatches, bool? Function()? insecureDisableDnssecValidation, bool? Function()? ipCategories, bool? Function()? ipIndicatorFeeds, Omittable<ZeroTrustGatewayRuleSettingsL4override?>? l4override, Omittable<ZeroTrustGatewayRuleSettingsNotificationSettings?>? notificationSettings, String? Function()? overrideHost, Omittable<List<String>?>? overrideIps, Omittable<ZeroTrustGatewayRuleSettingsPayloadLog?>? payloadLog, Omittable<ZeroTrustGatewayRuleSettingsQuarantine?>? quarantine, Omittable<ZeroTrustGatewayRuleSettingsRedirect?>? redirect, Omittable<ZeroTrustGatewayRuleSettingsResolveDnsInternally?>? resolveDnsInternally, Omittable<bool?>? resolveDnsThroughCloudflare, Omittable<ZeroTrustGatewayRuleSettingsUntrustedCert?>? untrustedCert, }) { return ZeroTrustGatewayRuleSettings(
  addHeaders: addHeaders ?? this.addHeaders,
  allowChildBypass: allowChildBypass ?? this.allowChildBypass,
  auditSsh: auditSsh ?? this.auditSsh,
  bisoAdminControls: bisoAdminControls != null ? bisoAdminControls() : this.bisoAdminControls,
  blockPage: blockPage ?? this.blockPage,
  blockPageEnabled: blockPageEnabled != null ? blockPageEnabled() : this.blockPageEnabled,
  blockReason: blockReason ?? this.blockReason,
  bypassParentRule: bypassParentRule ?? this.bypassParentRule,
  checkSession: checkSession ?? this.checkSession,
  dnsResolvers: dnsResolvers ?? this.dnsResolvers,
  egress: egress ?? this.egress,
  forensicCopy: forensicCopy ?? this.forensicCopy,
  ignoreCnameCategoryMatches: ignoreCnameCategoryMatches != null ? ignoreCnameCategoryMatches() : this.ignoreCnameCategoryMatches,
  insecureDisableDnssecValidation: insecureDisableDnssecValidation != null ? insecureDisableDnssecValidation() : this.insecureDisableDnssecValidation,
  ipCategories: ipCategories != null ? ipCategories() : this.ipCategories,
  ipIndicatorFeeds: ipIndicatorFeeds != null ? ipIndicatorFeeds() : this.ipIndicatorFeeds,
  l4override: l4override ?? this.l4override,
  notificationSettings: notificationSettings ?? this.notificationSettings,
  overrideHost: overrideHost != null ? overrideHost() : this.overrideHost,
  overrideIps: overrideIps ?? this.overrideIps,
  payloadLog: payloadLog ?? this.payloadLog,
  quarantine: quarantine ?? this.quarantine,
  redirect: redirect ?? this.redirect,
  resolveDnsInternally: resolveDnsInternally ?? this.resolveDnsInternally,
  resolveDnsThroughCloudflare: resolveDnsThroughCloudflare ?? this.resolveDnsThroughCloudflare,
  untrustedCert: untrustedCert ?? this.untrustedCert,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayRuleSettings &&
          addHeaders == other.addHeaders &&
          allowChildBypass == other.allowChildBypass &&
          auditSsh == other.auditSsh &&
          bisoAdminControls == other.bisoAdminControls &&
          blockPage == other.blockPage &&
          blockPageEnabled == other.blockPageEnabled &&
          blockReason == other.blockReason &&
          bypassParentRule == other.bypassParentRule &&
          checkSession == other.checkSession &&
          dnsResolvers == other.dnsResolvers &&
          egress == other.egress &&
          forensicCopy == other.forensicCopy &&
          ignoreCnameCategoryMatches == other.ignoreCnameCategoryMatches &&
          insecureDisableDnssecValidation == other.insecureDisableDnssecValidation &&
          ipCategories == other.ipCategories &&
          ipIndicatorFeeds == other.ipIndicatorFeeds &&
          l4override == other.l4override &&
          notificationSettings == other.notificationSettings &&
          overrideHost == other.overrideHost &&
          overrideIps.isPresent == other.overrideIps.isPresent &&
          listEquals(overrideIps.value, other.overrideIps.value) &&
          payloadLog == other.payloadLog &&
          quarantine == other.quarantine &&
          redirect == other.redirect &&
          resolveDnsInternally == other.resolveDnsInternally &&
          resolveDnsThroughCloudflare == other.resolveDnsThroughCloudflare &&
          untrustedCert == other.untrustedCert; } 
@override int get hashCode { return Object.hashAll([addHeaders, allowChildBypass, auditSsh, bisoAdminControls, blockPage, blockPageEnabled, blockReason, bypassParentRule, checkSession, dnsResolvers, egress, forensicCopy, ignoreCnameCategoryMatches, insecureDisableDnssecValidation, ipCategories, ipIndicatorFeeds, l4override, notificationSettings, overrideHost, Object.hashAll(overrideIps.value ?? const []), payloadLog, quarantine, redirect, resolveDnsInternally, resolveDnsThroughCloudflare, untrustedCert]); } 
@override String toString() { return 'ZeroTrustGatewayRuleSettings(addHeaders: $addHeaders, allowChildBypass: $allowChildBypass, auditSsh: $auditSsh, bisoAdminControls: $bisoAdminControls, blockPage: $blockPage, blockPageEnabled: $blockPageEnabled, blockReason: $blockReason, bypassParentRule: $bypassParentRule, checkSession: $checkSession, dnsResolvers: $dnsResolvers, egress: $egress, forensicCopy: $forensicCopy, ignoreCnameCategoryMatches: $ignoreCnameCategoryMatches, insecureDisableDnssecValidation: $insecureDisableDnssecValidation, ipCategories: $ipCategories, ipIndicatorFeeds: $ipIndicatorFeeds, l4override: $l4override, notificationSettings: $notificationSettings, overrideHost: $overrideHost, overrideIps: $overrideIps, payloadLog: $payloadLog, quarantine: $quarantine, redirect: $redirect, resolveDnsInternally: $resolveDnsInternally, resolveDnsThroughCloudflare: $resolveDnsThroughCloudflare, untrustedCert: $untrustedCert)'; } 
 }
