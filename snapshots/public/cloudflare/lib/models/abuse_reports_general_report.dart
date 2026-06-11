// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Notification type based on the abuse type. NOTE: Copyright (DMCA) and Trademark reports cannot be anonymous.
/// 
@immutable final class AbuseReportsGeneralReportHostNotification {const AbuseReportsGeneralReportHostNotification._(this.value);

factory AbuseReportsGeneralReportHostNotification.fromJson(String json) { return switch (json) {
  'send' => send,
  'send-anon' => sendAnon,
  _ => AbuseReportsGeneralReportHostNotification._(json),
}; }

static const AbuseReportsGeneralReportHostNotification send = AbuseReportsGeneralReportHostNotification._('send');

static const AbuseReportsGeneralReportHostNotification sendAnon = AbuseReportsGeneralReportHostNotification._('send-anon');

static const List<AbuseReportsGeneralReportHostNotification> values = [send, sendAnon];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AbuseReportsGeneralReportHostNotification && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AbuseReportsGeneralReportHostNotification($value)'; } 
 }
/// Notification type based on the abuse type. NOTE: Copyright (DMCA) and Trademark reports cannot be anonymous.
/// 
@immutable final class AbuseReportsGeneralReportOwnerNotification {const AbuseReportsGeneralReportOwnerNotification._(this.value);

factory AbuseReportsGeneralReportOwnerNotification.fromJson(String json) { return switch (json) {
  'send' => send,
  'send-anon' => sendAnon,
  _ => AbuseReportsGeneralReportOwnerNotification._(json),
}; }

static const AbuseReportsGeneralReportOwnerNotification send = AbuseReportsGeneralReportOwnerNotification._('send');

static const AbuseReportsGeneralReportOwnerNotification sendAnon = AbuseReportsGeneralReportOwnerNotification._('send-anon');

static const List<AbuseReportsGeneralReportOwnerNotification> values = [send, sendAnon];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AbuseReportsGeneralReportOwnerNotification && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AbuseReportsGeneralReportOwnerNotification($value)'; } 
 }
@immutable final class AbuseReportsGeneralReport {const AbuseReportsGeneralReport({required this.act, required this.email, required this.email2, required this.name, required this.urls, required this.hostNotification, required this.justification, required this.ownerNotification, this.comments, this.company, this.reportedCountry, this.reportedUserAgent, this.tele, this.title, this.destinationIps, this.portsProtocols, this.sourceIps, });

factory AbuseReportsGeneralReport.fromJson(Map<String, dynamic> json) { return AbuseReportsGeneralReport(
  act: json['act'],
  comments: json['comments'] as String?,
  company: json['company'] as String?,
  email: json['email'] as String,
  email2: json['email2'] as String,
  name: json['name'] as String,
  reportedCountry: json['reported_country'] as String?,
  reportedUserAgent: json['reported_user_agent'] as String?,
  tele: json['tele'] as String?,
  title: json['title'] as String?,
  urls: json['urls'] as String,
  destinationIps: json['destination_ips'] as String?,
  hostNotification: AbuseReportsGeneralReportHostNotification.fromJson(json['host_notification'] as String),
  justification: json['justification'] as String,
  ownerNotification: AbuseReportsGeneralReportOwnerNotification.fromJson(json['owner_notification'] as String),
  portsProtocols: json['ports_protocols'] as String?,
  sourceIps: json['source_ips'] as String?,
); }

final dynamic act;

/// Any additional comments about the infringement not exceeding 2000 characters
final String? comments;

/// Text not exceeding 100 characters. This field may be released by Cloudflare to third parties such as the Lumen Database (https://lumendatabase.org/).
final String? company;

/// A valid email of the abuse reporter. This field may be released by Cloudflare to third parties such as the Lumen Database (https://lumendatabase.org/).
final String email;

/// Should match the value provided in `email`
final String email2;

/// Text not exceeding 255 characters. This field may be released by Cloudflare to third parties such as the Lumen Database (https://lumendatabase.org/).
final String name;

/// Text containing 2 characters
final String? reportedCountry;

/// Text not exceeding 255 characters
final String? reportedUserAgent;

/// Text not exceeding 20 characters. This field may be released by Cloudflare to third parties such as the Lumen Database (https://lumendatabase.org/).
final String? tele;

/// Text not exceeding 255 characters
final String? title;

/// A list of valid URLs separated by ‘\n’ (new line character). The list of the URLs should not exceed 250 URLs. All URLs should have the same hostname. Each URL should be unique. This field may be released by Cloudflare to third parties such as the Lumen Database (https://lumendatabase.org/).
final String urls;

/// A list of IP addresses separated by ‘\n’ (new line character). The list of destination IPs should not exceed 30 IP addresses. Each one of the IP addresses ought to be unique.
final String? destinationIps;

/// Notification type based on the abuse type. NOTE: Copyright (DMCA) and Trademark reports cannot be anonymous.
/// 
final AbuseReportsGeneralReportHostNotification hostNotification;

/// A detailed description of the infringement, including any necessary access details and the exact steps needed to view the content, not exceeding 5000 characters.
/// 
final String justification;

/// Notification type based on the abuse type. NOTE: Copyright (DMCA) and Trademark reports cannot be anonymous.
/// 
final AbuseReportsGeneralReportOwnerNotification ownerNotification;

/// A comma separated list of ports and protocols e.g. 80/TCP, 22/UDP. The total size of the field should not exceed 2000 characters. Each individual port/protocol should not exceed 100 characters. The list should not have more than 30 unique ports and protocols.
final String? portsProtocols;

/// A list of IP addresses separated by ‘\n’ (new line character). The list of source IPs should not exceed 30 IP addresses. Each one of the IP addresses ought to be unique.
final String? sourceIps;

Map<String, dynamic> toJson() { return {
  'act': ?act,
  'comments': ?comments,
  'company': ?company,
  'email': email,
  'email2': email2,
  'name': name,
  'reported_country': ?reportedCountry,
  'reported_user_agent': ?reportedUserAgent,
  'tele': ?tele,
  'title': ?title,
  'urls': urls,
  'destination_ips': ?destinationIps,
  'host_notification': hostNotification.toJson(),
  'justification': justification,
  'owner_notification': ownerNotification.toJson(),
  'ports_protocols': ?portsProtocols,
  'source_ips': ?sourceIps,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('act') &&
      json.containsKey('email') && json['email'] is String &&
      json.containsKey('email2') && json['email2'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('urls') && json['urls'] is String &&
      json.containsKey('host_notification') &&
      json.containsKey('justification') && json['justification'] is String &&
      json.containsKey('owner_notification'); } 
AbuseReportsGeneralReport copyWith({dynamic Function()? act, String Function()? comments, String Function()? company, String? email, String? email2, String? name, String Function()? reportedCountry, String Function()? reportedUserAgent, String Function()? tele, String Function()? title, String? urls, String Function()? destinationIps, AbuseReportsGeneralReportHostNotification? hostNotification, String? justification, AbuseReportsGeneralReportOwnerNotification? ownerNotification, String Function()? portsProtocols, String Function()? sourceIps, }) { return AbuseReportsGeneralReport(
  act: act != null ? act() : this.act,
  comments: comments != null ? comments() : this.comments,
  company: company != null ? company() : this.company,
  email: email ?? this.email,
  email2: email2 ?? this.email2,
  name: name ?? this.name,
  reportedCountry: reportedCountry != null ? reportedCountry() : this.reportedCountry,
  reportedUserAgent: reportedUserAgent != null ? reportedUserAgent() : this.reportedUserAgent,
  tele: tele != null ? tele() : this.tele,
  title: title != null ? title() : this.title,
  urls: urls ?? this.urls,
  destinationIps: destinationIps != null ? destinationIps() : this.destinationIps,
  hostNotification: hostNotification ?? this.hostNotification,
  justification: justification ?? this.justification,
  ownerNotification: ownerNotification ?? this.ownerNotification,
  portsProtocols: portsProtocols != null ? portsProtocols() : this.portsProtocols,
  sourceIps: sourceIps != null ? sourceIps() : this.sourceIps,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AbuseReportsGeneralReport &&
          act == other.act &&
          comments == other.comments &&
          company == other.company &&
          email == other.email &&
          email2 == other.email2 &&
          name == other.name &&
          reportedCountry == other.reportedCountry &&
          reportedUserAgent == other.reportedUserAgent &&
          tele == other.tele &&
          title == other.title &&
          urls == other.urls &&
          destinationIps == other.destinationIps &&
          hostNotification == other.hostNotification &&
          justification == other.justification &&
          ownerNotification == other.ownerNotification &&
          portsProtocols == other.portsProtocols &&
          sourceIps == other.sourceIps; } 
@override int get hashCode { return Object.hash(act, comments, company, email, email2, name, reportedCountry, reportedUserAgent, tele, title, urls, destinationIps, hostNotification, justification, ownerNotification, portsProtocols, sourceIps); } 
@override String toString() { return 'AbuseReportsGeneralReport(act: $act, comments: $comments, company: $company, email: $email, email2: $email2, name: $name, reportedCountry: $reportedCountry, reportedUserAgent: $reportedUserAgent, tele: $tele, title: $title, urls: $urls, destinationIps: $destinationIps, hostNotification: $hostNotification, justification: $justification, ownerNotification: $ownerNotification, portsProtocols: $portsProtocols, sourceIps: $sourceIps)'; } 
 }
