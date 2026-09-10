// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'email_security_delivery_mode.dart';import 'email_security_disposition_label.dart';import 'email_security_get_domain_response_result_authorization.dart';import 'email_security_get_domain_response_result_emails_processed.dart';import 'email_security_scannable_folder.dart';@immutable final class EmailSecurityGetDomainResponseResultDmarcStatus {const EmailSecurityGetDomainResponseResultDmarcStatus._(this.value);

factory EmailSecurityGetDomainResponseResultDmarcStatus.fromJson(String json) { return switch (json) {
  'none' => none,
  'good' => good,
  'invalid' => invalid,
  _ => EmailSecurityGetDomainResponseResultDmarcStatus._(json),
}; }

static const EmailSecurityGetDomainResponseResultDmarcStatus none = EmailSecurityGetDomainResponseResultDmarcStatus._('none');

static const EmailSecurityGetDomainResponseResultDmarcStatus good = EmailSecurityGetDomainResponseResultDmarcStatus._('good');

static const EmailSecurityGetDomainResponseResultDmarcStatus invalid = EmailSecurityGetDomainResponseResultDmarcStatus._('invalid');

static const List<EmailSecurityGetDomainResponseResultDmarcStatus> values = [none, good, invalid];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EmailSecurityGetDomainResponseResultDmarcStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EmailSecurityGetDomainResponseResultDmarcStatus($value)'; } 
 }
@immutable final class EmailSecurityGetDomainResponseResultInboxProvider {const EmailSecurityGetDomainResponseResultInboxProvider._(this.value);

factory EmailSecurityGetDomainResponseResultInboxProvider.fromJson(String json) { return switch (json) {
  'Microsoft' => microsoft,
  'Google' => google,
  _ => EmailSecurityGetDomainResponseResultInboxProvider._(json),
}; }

static const EmailSecurityGetDomainResponseResultInboxProvider microsoft = EmailSecurityGetDomainResponseResultInboxProvider._('Microsoft');

static const EmailSecurityGetDomainResponseResultInboxProvider google = EmailSecurityGetDomainResponseResultInboxProvider._('Google');

static const List<EmailSecurityGetDomainResponseResultInboxProvider> values = [microsoft, google];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EmailSecurityGetDomainResponseResultInboxProvider && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EmailSecurityGetDomainResponseResultInboxProvider($value)'; } 
 }
@immutable final class EmailSecurityGetDomainResponseResultRegions {const EmailSecurityGetDomainResponseResultRegions._(this.value);

factory EmailSecurityGetDomainResponseResultRegions.fromJson(String json) { return switch (json) {
  'GLOBAL' => global,
  'AU' => au,
  'DE' => de,
  'IN' => $in,
  'US' => us,
  _ => EmailSecurityGetDomainResponseResultRegions._(json),
}; }

static const EmailSecurityGetDomainResponseResultRegions global = EmailSecurityGetDomainResponseResultRegions._('GLOBAL');

static const EmailSecurityGetDomainResponseResultRegions au = EmailSecurityGetDomainResponseResultRegions._('AU');

static const EmailSecurityGetDomainResponseResultRegions de = EmailSecurityGetDomainResponseResultRegions._('DE');

static const EmailSecurityGetDomainResponseResultRegions $in = EmailSecurityGetDomainResponseResultRegions._('IN');

static const EmailSecurityGetDomainResponseResultRegions us = EmailSecurityGetDomainResponseResultRegions._('US');

static const List<EmailSecurityGetDomainResponseResultRegions> values = [global, au, de, $in, us];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EmailSecurityGetDomainResponseResultRegions && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EmailSecurityGetDomainResponseResultRegions($value)'; } 
 }
@immutable final class EmailSecurityGetDomainResponseResultSpfStatus {const EmailSecurityGetDomainResponseResultSpfStatus._(this.value);

factory EmailSecurityGetDomainResponseResultSpfStatus.fromJson(String json) { return switch (json) {
  'none' => none,
  'good' => good,
  'neutral' => neutral,
  'open' => open,
  'invalid' => invalid,
  _ => EmailSecurityGetDomainResponseResultSpfStatus._(json),
}; }

static const EmailSecurityGetDomainResponseResultSpfStatus none = EmailSecurityGetDomainResponseResultSpfStatus._('none');

static const EmailSecurityGetDomainResponseResultSpfStatus good = EmailSecurityGetDomainResponseResultSpfStatus._('good');

static const EmailSecurityGetDomainResponseResultSpfStatus neutral = EmailSecurityGetDomainResponseResultSpfStatus._('neutral');

static const EmailSecurityGetDomainResponseResultSpfStatus open = EmailSecurityGetDomainResponseResultSpfStatus._('open');

static const EmailSecurityGetDomainResponseResultSpfStatus invalid = EmailSecurityGetDomainResponseResultSpfStatus._('invalid');

static const List<EmailSecurityGetDomainResponseResultSpfStatus> values = [none, good, neutral, open, invalid];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EmailSecurityGetDomainResponseResultSpfStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EmailSecurityGetDomainResponseResultSpfStatus($value)'; } 
 }
@immutable final class EmailSecurityGetDomainResponseResult {const EmailSecurityGetDomainResponseResult({required this.allowedDeliveryModes, required this.createdAt, required this.domain, required this.dropDispositions, required this.id, required this.ipRestrictions, required this.lastModified, required this.lookbackHops, required this.regions, required this.transport, this.authorization = const Omittable.absent(), this.dmarcStatus = const Omittable.absent(), this.emailsProcessed = const Omittable.absent(), this.folder = const Omittable.absent(), this.inboxProvider = const Omittable.absent(), this.integrationId = const Omittable.absent(), this.o365TenantId = const Omittable.absent(), this.requireTlsInbound = const Omittable.absent(), this.requireTlsOutbound = const Omittable.absent(), this.spfStatus = const Omittable.absent(), });

factory EmailSecurityGetDomainResponseResult.fromJson(Map<String, dynamic> json) { return EmailSecurityGetDomainResponseResult(
  allowedDeliveryModes: (json['allowed_delivery_modes'] as List<dynamic>).map((e) => EmailSecurityDeliveryMode.fromJson(e as String)).toList(),
  authorization: json.containsKey('authorization') ? Omittable(json['authorization'] != null ? EmailSecurityGetDomainResponseResultAuthorization.fromJson(json['authorization'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  createdAt: DateTime.parse(json['created_at'] as String),
  dmarcStatus: json.containsKey('dmarc_status') ? Omittable(json['dmarc_status'] != null ? EmailSecurityGetDomainResponseResultDmarcStatus.fromJson(json['dmarc_status'] as String) : null) : const Omittable.absent(),
  domain: json['domain'] as String,
  dropDispositions: (json['drop_dispositions'] as List<dynamic>).map((e) => e == null ? null : EmailSecurityDispositionLabel.fromJson(e as String)).toList(),
  emailsProcessed: json.containsKey('emails_processed') ? Omittable(json['emails_processed'] != null ? EmailSecurityGetDomainResponseResultEmailsProcessed.fromJson(json['emails_processed'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  folder: json.containsKey('folder') ? Omittable(json['folder'] != null ? EmailSecurityScannableFolder.fromJson(json['folder'] as String) : null) : const Omittable.absent(),
  id: (json['id'] as num).toInt(),
  inboxProvider: json.containsKey('inbox_provider') ? Omittable(json['inbox_provider'] != null ? EmailSecurityGetDomainResponseResultInboxProvider.fromJson(json['inbox_provider'] as String) : null) : const Omittable.absent(),
  integrationId: json.containsKey('integration_id') ? Omittable(json['integration_id'] as String?) : const Omittable.absent(),
  ipRestrictions: (json['ip_restrictions'] as List<dynamic>).map((e) => e as String).toList(),
  lastModified: DateTime.parse(json['last_modified'] as String),
  lookbackHops: (json['lookback_hops'] as num).toInt(),
  o365TenantId: json.containsKey('o365_tenant_id') ? Omittable(json['o365_tenant_id'] as String?) : const Omittable.absent(),
  regions: (json['regions'] as List<dynamic>).map((e) => EmailSecurityGetDomainResponseResultRegions.fromJson(e as String)).toList(),
  requireTlsInbound: json.containsKey('require_tls_inbound') ? Omittable(json['require_tls_inbound'] as bool?) : const Omittable.absent(),
  requireTlsOutbound: json.containsKey('require_tls_outbound') ? Omittable(json['require_tls_outbound'] as bool?) : const Omittable.absent(),
  spfStatus: json.containsKey('spf_status') ? Omittable(json['spf_status'] != null ? EmailSecurityGetDomainResponseResultSpfStatus.fromJson(json['spf_status'] as String) : null) : const Omittable.absent(),
  transport: json['transport'] as String,
); }

final List<EmailSecurityDeliveryMode> allowedDeliveryModes;

final Omittable<EmailSecurityGetDomainResponseResultAuthorization?> authorization;

final DateTime createdAt;

final Omittable<EmailSecurityGetDomainResponseResultDmarcStatus?> dmarcStatus;

final String domain;

final List<EmailSecurityDispositionLabel?> dropDispositions;

final Omittable<EmailSecurityGetDomainResponseResultEmailsProcessed?> emailsProcessed;

final Omittable<EmailSecurityScannableFolder?> folder;

/// The unique identifier for the domain.
final int id;

final Omittable<EmailSecurityGetDomainResponseResultInboxProvider?> inboxProvider;

final Omittable<String?> integrationId;

final List<String> ipRestrictions;

final DateTime lastModified;

final int lookbackHops;

final Omittable<String?> o365TenantId;

final List<EmailSecurityGetDomainResponseResultRegions> regions;

final Omittable<bool?> requireTlsInbound;

final Omittable<bool?> requireTlsOutbound;

final Omittable<EmailSecurityGetDomainResponseResultSpfStatus?> spfStatus;

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
EmailSecurityGetDomainResponseResult copyWith({List<EmailSecurityDeliveryMode>? allowedDeliveryModes, Omittable<EmailSecurityGetDomainResponseResultAuthorization?>? authorization, DateTime? createdAt, Omittable<EmailSecurityGetDomainResponseResultDmarcStatus?>? dmarcStatus, String? domain, List<EmailSecurityDispositionLabel?>? dropDispositions, Omittable<EmailSecurityGetDomainResponseResultEmailsProcessed?>? emailsProcessed, Omittable<EmailSecurityScannableFolder?>? folder, int? id, Omittable<EmailSecurityGetDomainResponseResultInboxProvider?>? inboxProvider, Omittable<String?>? integrationId, List<String>? ipRestrictions, DateTime? lastModified, int? lookbackHops, Omittable<String?>? o365TenantId, List<EmailSecurityGetDomainResponseResultRegions>? regions, Omittable<bool?>? requireTlsInbound, Omittable<bool?>? requireTlsOutbound, Omittable<EmailSecurityGetDomainResponseResultSpfStatus?>? spfStatus, String? transport, }) { return EmailSecurityGetDomainResponseResult(
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
      other is EmailSecurityGetDomainResponseResult &&
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
@override String toString() { return 'EmailSecurityGetDomainResponseResult(allowedDeliveryModes: $allowedDeliveryModes, authorization: $authorization, createdAt: $createdAt, dmarcStatus: $dmarcStatus, domain: $domain, dropDispositions: $dropDispositions, emailsProcessed: $emailsProcessed, folder: $folder, id: $id, inboxProvider: $inboxProvider, integrationId: $integrationId, ipRestrictions: $ipRestrictions, lastModified: $lastModified, lookbackHops: $lookbackHops, o365TenantId: $o365TenantId, regions: $regions, requireTlsInbound: $requireTlsInbound, requireTlsOutbound: $requireTlsOutbound, spfStatus: $spfStatus, transport: $transport)'; } 
 }
