// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'email_security_delivery_mode.dart';import 'email_security_disposition_label.dart';import 'email_security_scannable_folder.dart';import 'email_security_update_domain_response_result_authorization.dart';import 'email_security_update_domain_response_result_emails_processed.dart';final class EmailSecurityUpdateDomainResponseResultDmarcStatus {const EmailSecurityUpdateDomainResponseResultDmarcStatus._(this.value);

factory EmailSecurityUpdateDomainResponseResultDmarcStatus.fromJson(String json) { return switch (json) {
  'none' => none,
  'good' => good,
  'invalid' => invalid,
  _ => EmailSecurityUpdateDomainResponseResultDmarcStatus._(json),
}; }

static const EmailSecurityUpdateDomainResponseResultDmarcStatus none = EmailSecurityUpdateDomainResponseResultDmarcStatus._('none');

static const EmailSecurityUpdateDomainResponseResultDmarcStatus good = EmailSecurityUpdateDomainResponseResultDmarcStatus._('good');

static const EmailSecurityUpdateDomainResponseResultDmarcStatus invalid = EmailSecurityUpdateDomainResponseResultDmarcStatus._('invalid');

static const List<EmailSecurityUpdateDomainResponseResultDmarcStatus> values = [none, good, invalid];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EmailSecurityUpdateDomainResponseResultDmarcStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EmailSecurityUpdateDomainResponseResultDmarcStatus($value)'; } 
 }
final class EmailSecurityUpdateDomainResponseResultInboxProvider {const EmailSecurityUpdateDomainResponseResultInboxProvider._(this.value);

factory EmailSecurityUpdateDomainResponseResultInboxProvider.fromJson(String json) { return switch (json) {
  'Microsoft' => microsoft,
  'Google' => google,
  _ => EmailSecurityUpdateDomainResponseResultInboxProvider._(json),
}; }

static const EmailSecurityUpdateDomainResponseResultInboxProvider microsoft = EmailSecurityUpdateDomainResponseResultInboxProvider._('Microsoft');

static const EmailSecurityUpdateDomainResponseResultInboxProvider google = EmailSecurityUpdateDomainResponseResultInboxProvider._('Google');

static const List<EmailSecurityUpdateDomainResponseResultInboxProvider> values = [microsoft, google];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EmailSecurityUpdateDomainResponseResultInboxProvider && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EmailSecurityUpdateDomainResponseResultInboxProvider($value)'; } 
 }
final class EmailSecurityUpdateDomainResponseResultRegions {const EmailSecurityUpdateDomainResponseResultRegions._(this.value);

factory EmailSecurityUpdateDomainResponseResultRegions.fromJson(String json) { return switch (json) {
  'GLOBAL' => global,
  'AU' => au,
  'DE' => de,
  'IN' => $in,
  'US' => us,
  _ => EmailSecurityUpdateDomainResponseResultRegions._(json),
}; }

static const EmailSecurityUpdateDomainResponseResultRegions global = EmailSecurityUpdateDomainResponseResultRegions._('GLOBAL');

static const EmailSecurityUpdateDomainResponseResultRegions au = EmailSecurityUpdateDomainResponseResultRegions._('AU');

static const EmailSecurityUpdateDomainResponseResultRegions de = EmailSecurityUpdateDomainResponseResultRegions._('DE');

static const EmailSecurityUpdateDomainResponseResultRegions $in = EmailSecurityUpdateDomainResponseResultRegions._('IN');

static const EmailSecurityUpdateDomainResponseResultRegions us = EmailSecurityUpdateDomainResponseResultRegions._('US');

static const List<EmailSecurityUpdateDomainResponseResultRegions> values = [global, au, de, $in, us];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EmailSecurityUpdateDomainResponseResultRegions && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EmailSecurityUpdateDomainResponseResultRegions($value)'; } 
 }
final class EmailSecurityUpdateDomainResponseResultSpfStatus {const EmailSecurityUpdateDomainResponseResultSpfStatus._(this.value);

factory EmailSecurityUpdateDomainResponseResultSpfStatus.fromJson(String json) { return switch (json) {
  'none' => none,
  'good' => good,
  'neutral' => neutral,
  'open' => open,
  'invalid' => invalid,
  _ => EmailSecurityUpdateDomainResponseResultSpfStatus._(json),
}; }

static const EmailSecurityUpdateDomainResponseResultSpfStatus none = EmailSecurityUpdateDomainResponseResultSpfStatus._('none');

static const EmailSecurityUpdateDomainResponseResultSpfStatus good = EmailSecurityUpdateDomainResponseResultSpfStatus._('good');

static const EmailSecurityUpdateDomainResponseResultSpfStatus neutral = EmailSecurityUpdateDomainResponseResultSpfStatus._('neutral');

static const EmailSecurityUpdateDomainResponseResultSpfStatus open = EmailSecurityUpdateDomainResponseResultSpfStatus._('open');

static const EmailSecurityUpdateDomainResponseResultSpfStatus invalid = EmailSecurityUpdateDomainResponseResultSpfStatus._('invalid');

static const List<EmailSecurityUpdateDomainResponseResultSpfStatus> values = [none, good, neutral, open, invalid];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EmailSecurityUpdateDomainResponseResultSpfStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EmailSecurityUpdateDomainResponseResultSpfStatus($value)'; } 
 }
final class EmailSecurityUpdateDomainResponseResult {const EmailSecurityUpdateDomainResponseResult({required this.allowedDeliveryModes, this.authorization, required this.createdAt, this.dmarcStatus, required this.domain, required this.dropDispositions, this.emailsProcessed, this.folder, required this.id, this.inboxProvider, this.integrationId, required this.ipRestrictions, required this.lastModified, required this.lookbackHops, this.o365TenantId, required this.regions, this.requireTlsInbound, this.requireTlsOutbound, this.spfStatus, required this.transport, });

factory EmailSecurityUpdateDomainResponseResult.fromJson(Map<String, dynamic> json) { return EmailSecurityUpdateDomainResponseResult(
  allowedDeliveryModes: (json['allowed_delivery_modes'] as List<dynamic>).map((e) => EmailSecurityDeliveryMode.fromJson(e as String)).toList(),
  authorization: json['authorization'] != null ? EmailSecurityUpdateDomainResponseResultAuthorization.fromJson(json['authorization'] as Map<String, dynamic>) : null,
  createdAt: DateTime.parse(json['created_at'] as String),
  dmarcStatus: json['dmarc_status'] != null ? EmailSecurityUpdateDomainResponseResultDmarcStatus.fromJson(json['dmarc_status'] as String) : null,
  domain: json['domain'] as String,
  dropDispositions: (json['drop_dispositions'] as List<dynamic>).map((e) => EmailSecurityDispositionLabel.fromJson(e as String)).toList(),
  emailsProcessed: json['emails_processed'] != null ? EmailSecurityUpdateDomainResponseResultEmailsProcessed.fromJson(json['emails_processed'] as Map<String, dynamic>) : null,
  folder: json['folder'] != null ? EmailSecurityScannableFolder.fromJson(json['folder'] as String) : null,
  id: (json['id'] as num).toInt(),
  inboxProvider: json['inbox_provider'] != null ? EmailSecurityUpdateDomainResponseResultInboxProvider.fromJson(json['inbox_provider'] as String) : null,
  integrationId: json['integration_id'] as String?,
  ipRestrictions: (json['ip_restrictions'] as List<dynamic>).map((e) => e as String).toList(),
  lastModified: DateTime.parse(json['last_modified'] as String),
  lookbackHops: (json['lookback_hops'] as num).toInt(),
  o365TenantId: json['o365_tenant_id'] as String?,
  regions: (json['regions'] as List<dynamic>).map((e) => EmailSecurityUpdateDomainResponseResultRegions.fromJson(e as String)).toList(),
  requireTlsInbound: json['require_tls_inbound'] as bool?,
  requireTlsOutbound: json['require_tls_outbound'] as bool?,
  spfStatus: json['spf_status'] != null ? EmailSecurityUpdateDomainResponseResultSpfStatus.fromJson(json['spf_status'] as String) : null,
  transport: json['transport'] as String,
); }

final List<EmailSecurityDeliveryMode> allowedDeliveryModes;

final EmailSecurityUpdateDomainResponseResultAuthorization? authorization;

final DateTime createdAt;

final EmailSecurityUpdateDomainResponseResultDmarcStatus? dmarcStatus;

final String domain;

final List<EmailSecurityDispositionLabel?> dropDispositions;

final EmailSecurityUpdateDomainResponseResultEmailsProcessed? emailsProcessed;

final EmailSecurityScannableFolder? folder;

/// The unique identifier for the domain.
final int id;

final EmailSecurityUpdateDomainResponseResultInboxProvider? inboxProvider;

final String? integrationId;

final List<String> ipRestrictions;

final DateTime lastModified;

final int lookbackHops;

final String? o365TenantId;

final List<EmailSecurityUpdateDomainResponseResultRegions> regions;

final bool? requireTlsInbound;

final bool? requireTlsOutbound;

final EmailSecurityUpdateDomainResponseResultSpfStatus? spfStatus;

final String transport;

Map<String, dynamic> toJson() { return {
  'allowed_delivery_modes': allowedDeliveryModes.map((e) => e.toJson()).toList(),
  if (authorization != null) 'authorization': authorization?.toJson(),
  'created_at': createdAt.toIso8601String(),
  if (dmarcStatus != null) 'dmarc_status': dmarcStatus?.toJson(),
  'domain': domain,
  'drop_dispositions': dropDispositions.map((e) => e?.toJson()).toList(),
  if (emailsProcessed != null) 'emails_processed': emailsProcessed?.toJson(),
  if (folder != null) 'folder': folder?.toJson(),
  'id': id,
  if (inboxProvider != null) 'inbox_provider': inboxProvider?.toJson(),
  'integration_id': ?integrationId,
  'ip_restrictions': ipRestrictions,
  'last_modified': lastModified.toIso8601String(),
  'lookback_hops': lookbackHops,
  'o365_tenant_id': ?o365TenantId,
  'regions': regions.map((e) => e.toJson()).toList(),
  'require_tls_inbound': ?requireTlsInbound,
  'require_tls_outbound': ?requireTlsOutbound,
  if (spfStatus != null) 'spf_status': spfStatus?.toJson(),
  'transport': transport,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('allowed_delivery_modes') &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('domain') && json['domain'] is String &&
      json.containsKey('drop_dispositions') &&
      json.containsKey('id') && json['id'] is num &&
      json.containsKey('ip_restrictions') &&
      json.containsKey('last_modified') && json['last_modified'] is String &&
      json.containsKey('lookback_hops') && json['lookback_hops'] is num &&
      json.containsKey('regions') &&
      json.containsKey('transport') && json['transport'] is String; } 
EmailSecurityUpdateDomainResponseResult copyWith({List<EmailSecurityDeliveryMode>? allowedDeliveryModes, EmailSecurityUpdateDomainResponseResultAuthorization? Function()? authorization, DateTime? createdAt, EmailSecurityUpdateDomainResponseResultDmarcStatus? Function()? dmarcStatus, String? domain, List<EmailSecurityDispositionLabel?>? dropDispositions, EmailSecurityUpdateDomainResponseResultEmailsProcessed? Function()? emailsProcessed, EmailSecurityScannableFolder? Function()? folder, int? id, EmailSecurityUpdateDomainResponseResultInboxProvider? Function()? inboxProvider, String? Function()? integrationId, List<String>? ipRestrictions, DateTime? lastModified, int? lookbackHops, String? Function()? o365TenantId, List<EmailSecurityUpdateDomainResponseResultRegions>? regions, bool? Function()? requireTlsInbound, bool? Function()? requireTlsOutbound, EmailSecurityUpdateDomainResponseResultSpfStatus? Function()? spfStatus, String? transport, }) { return EmailSecurityUpdateDomainResponseResult(
  allowedDeliveryModes: allowedDeliveryModes ?? this.allowedDeliveryModes,
  authorization: authorization != null ? authorization() : this.authorization,
  createdAt: createdAt ?? this.createdAt,
  dmarcStatus: dmarcStatus != null ? dmarcStatus() : this.dmarcStatus,
  domain: domain ?? this.domain,
  dropDispositions: dropDispositions ?? this.dropDispositions,
  emailsProcessed: emailsProcessed != null ? emailsProcessed() : this.emailsProcessed,
  folder: folder != null ? folder() : this.folder,
  id: id ?? this.id,
  inboxProvider: inboxProvider != null ? inboxProvider() : this.inboxProvider,
  integrationId: integrationId != null ? integrationId() : this.integrationId,
  ipRestrictions: ipRestrictions ?? this.ipRestrictions,
  lastModified: lastModified ?? this.lastModified,
  lookbackHops: lookbackHops ?? this.lookbackHops,
  o365TenantId: o365TenantId != null ? o365TenantId() : this.o365TenantId,
  regions: regions ?? this.regions,
  requireTlsInbound: requireTlsInbound != null ? requireTlsInbound() : this.requireTlsInbound,
  requireTlsOutbound: requireTlsOutbound != null ? requireTlsOutbound() : this.requireTlsOutbound,
  spfStatus: spfStatus != null ? spfStatus() : this.spfStatus,
  transport: transport ?? this.transport,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityUpdateDomainResponseResult &&
          listEquals(allowedDeliveryModes, other.allowedDeliveryModes) &&
          authorization == other.authorization &&
          createdAt == other.createdAt &&
          dmarcStatus == other.dmarcStatus &&
          domain == other.domain &&
          listEquals(dropDispositions, other.dropDispositions) &&
          emailsProcessed == other.emailsProcessed &&
          folder == other.folder &&
          id == other.id &&
          inboxProvider == other.inboxProvider &&
          integrationId == other.integrationId &&
          listEquals(ipRestrictions, other.ipRestrictions) &&
          lastModified == other.lastModified &&
          lookbackHops == other.lookbackHops &&
          o365TenantId == other.o365TenantId &&
          listEquals(regions, other.regions) &&
          requireTlsInbound == other.requireTlsInbound &&
          requireTlsOutbound == other.requireTlsOutbound &&
          spfStatus == other.spfStatus &&
          transport == other.transport; } 
@override int get hashCode { return Object.hash(Object.hashAll(allowedDeliveryModes), authorization, createdAt, dmarcStatus, domain, Object.hashAll(dropDispositions), emailsProcessed, folder, id, inboxProvider, integrationId, Object.hashAll(ipRestrictions), lastModified, lookbackHops, o365TenantId, Object.hashAll(regions), requireTlsInbound, requireTlsOutbound, spfStatus, transport); } 
@override String toString() { return 'EmailSecurityUpdateDomainResponseResult(allowedDeliveryModes: $allowedDeliveryModes, authorization: $authorization, createdAt: $createdAt, dmarcStatus: $dmarcStatus, domain: $domain, dropDispositions: $dropDispositions, emailsProcessed: $emailsProcessed, folder: $folder, id: $id, inboxProvider: $inboxProvider, integrationId: $integrationId, ipRestrictions: $ipRestrictions, lastModified: $lastModified, lookbackHops: $lookbackHops, o365TenantId: $o365TenantId, regions: $regions, requireTlsInbound: $requireTlsInbound, requireTlsOutbound: $requireTlsOutbound, spfStatus: $spfStatus, transport: $transport)'; } 
 }
