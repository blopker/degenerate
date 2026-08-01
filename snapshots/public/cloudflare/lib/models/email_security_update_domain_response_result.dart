// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'email_security_delivery_mode.dart';import 'email_security_disposition_label.dart';import 'email_security_scannable_folder.dart';import 'email_security_update_domain_response_result_authorization.dart';import 'email_security_update_domain_response_result_emails_processed.dart';@immutable final class EmailSecurityUpdateDomainResponseResultDmarcStatus {const EmailSecurityUpdateDomainResponseResultDmarcStatus._(this.value);

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
@immutable final class EmailSecurityUpdateDomainResponseResultInboxProvider {const EmailSecurityUpdateDomainResponseResultInboxProvider._(this.value);

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
@immutable final class EmailSecurityUpdateDomainResponseResultRegions {const EmailSecurityUpdateDomainResponseResultRegions._(this.value);

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
@immutable final class EmailSecurityUpdateDomainResponseResultSpfStatus {const EmailSecurityUpdateDomainResponseResultSpfStatus._(this.value);

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
@immutable final class EmailSecurityUpdateDomainResponseResult {const EmailSecurityUpdateDomainResponseResult({required this.allowedDeliveryModes, required this.createdAt, required this.domain, required this.dropDispositions, required this.id, required this.ipRestrictions, required this.lastModified, required this.lookbackHops, required this.regions, required this.transport, this.authorization = const Omittable.absent(), this.dmarcStatus = const Omittable.absent(), this.emailsProcessed = const Omittable.absent(), this.folder = const Omittable.absent(), this.inboxProvider = const Omittable.absent(), this.integrationId = const Omittable.absent(), this.o365TenantId = const Omittable.absent(), this.requireTlsInbound = const Omittable.absent(), this.requireTlsOutbound = const Omittable.absent(), this.spfStatus = const Omittable.absent(), });

factory EmailSecurityUpdateDomainResponseResult.fromJson(Map<String, dynamic> json) { return EmailSecurityUpdateDomainResponseResult(
  allowedDeliveryModes: (json['allowed_delivery_modes'] as List<dynamic>).map((e) => EmailSecurityDeliveryMode.fromJson(e as String)).toList(),
  authorization: json.containsKey('authorization') ? Omittable(json['authorization'] != null ? EmailSecurityUpdateDomainResponseResultAuthorization.fromJson(json['authorization'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  createdAt: DateTime.parse(json['created_at'] as String),
  dmarcStatus: json.containsKey('dmarc_status') ? Omittable(json['dmarc_status'] != null ? EmailSecurityUpdateDomainResponseResultDmarcStatus.fromJson(json['dmarc_status'] as String) : null) : const Omittable.absent(),
  domain: json['domain'] as String,
  dropDispositions: (json['drop_dispositions'] as List<dynamic>).map((e) => e == null ? null : EmailSecurityDispositionLabel.fromJson(e as String)).toList(),
  emailsProcessed: json.containsKey('emails_processed') ? Omittable(json['emails_processed'] != null ? EmailSecurityUpdateDomainResponseResultEmailsProcessed.fromJson(json['emails_processed'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  folder: json.containsKey('folder') ? Omittable(json['folder'] != null ? EmailSecurityScannableFolder.fromJson(json['folder'] as String) : null) : const Omittable.absent(),
  id: (json['id'] as num).toInt(),
  inboxProvider: json.containsKey('inbox_provider') ? Omittable(json['inbox_provider'] != null ? EmailSecurityUpdateDomainResponseResultInboxProvider.fromJson(json['inbox_provider'] as String) : null) : const Omittable.absent(),
  integrationId: json.containsKey('integration_id') ? Omittable(json['integration_id'] as String?) : const Omittable.absent(),
  ipRestrictions: (json['ip_restrictions'] as List<dynamic>).map((e) => e as String).toList(),
  lastModified: DateTime.parse(json['last_modified'] as String),
  lookbackHops: (json['lookback_hops'] as num).toInt(),
  o365TenantId: json.containsKey('o365_tenant_id') ? Omittable(json['o365_tenant_id'] as String?) : const Omittable.absent(),
  regions: (json['regions'] as List<dynamic>).map((e) => EmailSecurityUpdateDomainResponseResultRegions.fromJson(e as String)).toList(),
  requireTlsInbound: json.containsKey('require_tls_inbound') ? Omittable(json['require_tls_inbound'] as bool?) : const Omittable.absent(),
  requireTlsOutbound: json.containsKey('require_tls_outbound') ? Omittable(json['require_tls_outbound'] as bool?) : const Omittable.absent(),
  spfStatus: json.containsKey('spf_status') ? Omittable(json['spf_status'] != null ? EmailSecurityUpdateDomainResponseResultSpfStatus.fromJson(json['spf_status'] as String) : null) : const Omittable.absent(),
  transport: json['transport'] as String,
); }

final List<EmailSecurityDeliveryMode> allowedDeliveryModes;

final Omittable<EmailSecurityUpdateDomainResponseResultAuthorization?> authorization;

final DateTime createdAt;

final Omittable<EmailSecurityUpdateDomainResponseResultDmarcStatus?> dmarcStatus;

final String domain;

final List<EmailSecurityDispositionLabel?> dropDispositions;

final Omittable<EmailSecurityUpdateDomainResponseResultEmailsProcessed?> emailsProcessed;

final Omittable<EmailSecurityScannableFolder?> folder;

/// The unique identifier for the domain.
final int id;

final Omittable<EmailSecurityUpdateDomainResponseResultInboxProvider?> inboxProvider;

final Omittable<String?> integrationId;

final List<String> ipRestrictions;

final DateTime lastModified;

final int lookbackHops;

final Omittable<String?> o365TenantId;

final List<EmailSecurityUpdateDomainResponseResultRegions> regions;

final Omittable<bool?> requireTlsInbound;

final Omittable<bool?> requireTlsOutbound;

final Omittable<EmailSecurityUpdateDomainResponseResultSpfStatus?> spfStatus;

final String transport;

Map<String, dynamic> toJson() { return {
  'allowed_delivery_modes': allowedDeliveryModes.map((e) => e.toJson()).toList(),
  if (authorization.isPresent) 'authorization': authorization.value?.toJson(),
  'created_at': createdAt.toIso8601String(),
  if (dmarcStatus.isPresent) 'dmarc_status': dmarcStatus.value?.toJson(),
  'domain': domain,
  'drop_dispositions': dropDispositions.map((e) => e?.toJson()).toList(),
  if (emailsProcessed.isPresent) 'emails_processed': emailsProcessed.value?.toJson(),
  if (folder.isPresent) 'folder': folder.value?.toJson(),
  'id': id,
  if (inboxProvider.isPresent) 'inbox_provider': inboxProvider.value?.toJson(),
  if (integrationId.isPresent) 'integration_id': integrationId.value,
  'ip_restrictions': ipRestrictions,
  'last_modified': lastModified.toIso8601String(),
  'lookback_hops': lookbackHops,
  if (o365TenantId.isPresent) 'o365_tenant_id': o365TenantId.value,
  'regions': regions.map((e) => e.toJson()).toList(),
  if (requireTlsInbound.isPresent) 'require_tls_inbound': requireTlsInbound.value,
  if (requireTlsOutbound.isPresent) 'require_tls_outbound': requireTlsOutbound.value,
  if (spfStatus.isPresent) 'spf_status': spfStatus.value?.toJson(),
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
EmailSecurityUpdateDomainResponseResult copyWith({List<EmailSecurityDeliveryMode>? allowedDeliveryModes, Omittable<EmailSecurityUpdateDomainResponseResultAuthorization?>? authorization, DateTime? createdAt, Omittable<EmailSecurityUpdateDomainResponseResultDmarcStatus?>? dmarcStatus, String? domain, List<EmailSecurityDispositionLabel?>? dropDispositions, Omittable<EmailSecurityUpdateDomainResponseResultEmailsProcessed?>? emailsProcessed, Omittable<EmailSecurityScannableFolder?>? folder, int? id, Omittable<EmailSecurityUpdateDomainResponseResultInboxProvider?>? inboxProvider, Omittable<String?>? integrationId, List<String>? ipRestrictions, DateTime? lastModified, int? lookbackHops, Omittable<String?>? o365TenantId, List<EmailSecurityUpdateDomainResponseResultRegions>? regions, Omittable<bool?>? requireTlsInbound, Omittable<bool?>? requireTlsOutbound, Omittable<EmailSecurityUpdateDomainResponseResultSpfStatus?>? spfStatus, String? transport, }) { return EmailSecurityUpdateDomainResponseResult(
  allowedDeliveryModes: allowedDeliveryModes ?? this.allowedDeliveryModes,
  authorization: authorization ?? this.authorization,
  createdAt: createdAt ?? this.createdAt,
  dmarcStatus: dmarcStatus ?? this.dmarcStatus,
  domain: domain ?? this.domain,
  dropDispositions: dropDispositions ?? this.dropDispositions,
  emailsProcessed: emailsProcessed ?? this.emailsProcessed,
  folder: folder ?? this.folder,
  id: id ?? this.id,
  inboxProvider: inboxProvider ?? this.inboxProvider,
  integrationId: integrationId ?? this.integrationId,
  ipRestrictions: ipRestrictions ?? this.ipRestrictions,
  lastModified: lastModified ?? this.lastModified,
  lookbackHops: lookbackHops ?? this.lookbackHops,
  o365TenantId: o365TenantId ?? this.o365TenantId,
  regions: regions ?? this.regions,
  requireTlsInbound: requireTlsInbound ?? this.requireTlsInbound,
  requireTlsOutbound: requireTlsOutbound ?? this.requireTlsOutbound,
  spfStatus: spfStatus ?? this.spfStatus,
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
