// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Notification type based on the abuse type. NOTE: Copyright (DMCA) and Trademark reports cannot be anonymous.
/// 
@immutable final class AbuseReportsPhishingReportHostNotification {const AbuseReportsPhishingReportHostNotification._(this.value);

factory AbuseReportsPhishingReportHostNotification.fromJson(String json) { return switch (json) {
  'send' => send,
  'send-anon' => sendAnon,
  _ => AbuseReportsPhishingReportHostNotification._(json),
}; }

static const AbuseReportsPhishingReportHostNotification send = AbuseReportsPhishingReportHostNotification._('send');

static const AbuseReportsPhishingReportHostNotification sendAnon = AbuseReportsPhishingReportHostNotification._('send-anon');

static const List<AbuseReportsPhishingReportHostNotification> values = [send, sendAnon];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AbuseReportsPhishingReportHostNotification && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AbuseReportsPhishingReportHostNotification($value)'; } 
 }
/// Notification type based on the abuse type. NOTE: Copyright (DMCA) and Trademark reports cannot be anonymous.
/// 
@immutable final class AbuseReportsPhishingReportOwnerNotification {const AbuseReportsPhishingReportOwnerNotification._(this.value);

factory AbuseReportsPhishingReportOwnerNotification.fromJson(String json) { return switch (json) {
  'send' => send,
  'send-anon' => sendAnon,
  _ => AbuseReportsPhishingReportOwnerNotification._(json),
}; }

static const AbuseReportsPhishingReportOwnerNotification send = AbuseReportsPhishingReportOwnerNotification._('send');

static const AbuseReportsPhishingReportOwnerNotification sendAnon = AbuseReportsPhishingReportOwnerNotification._('send-anon');

static const List<AbuseReportsPhishingReportOwnerNotification> values = [send, sendAnon];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AbuseReportsPhishingReportOwnerNotification && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AbuseReportsPhishingReportOwnerNotification($value)'; } 
 }
@immutable final class AbuseReportsPhishingReport {const AbuseReportsPhishingReport({required this.act, required this.email, required this.email2, required this.name, required this.urls, required this.hostNotification, required this.justification, required this.ownerNotification, this.comments, this.company, this.reportedCountry, this.reportedUserAgent, this.tele, this.title, this.originalWork, });

factory AbuseReportsPhishingReport.fromJson(Map<String, dynamic> json) { return AbuseReportsPhishingReport(
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
  hostNotification: AbuseReportsPhishingReportHostNotification.fromJson(json['host_notification'] as String),
  justification: json['justification'] as String,
  originalWork: json['original_work'] as String?,
  ownerNotification: AbuseReportsPhishingReportOwnerNotification.fromJson(json['owner_notification'] as String),
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

/// Notification type based on the abuse type. NOTE: Copyright (DMCA) and Trademark reports cannot be anonymous.
/// 
final AbuseReportsPhishingReportHostNotification hostNotification;

/// A detailed description of the infringement, including any necessary access details and the exact steps needed to view the content, not exceeding 5000 characters.
/// 
final String justification;

/// Text not exceeding 255 characters. This field may be released by Cloudflare to third parties such as the Lumen Database (https://lumendatabase.org/).
/// 
final String? originalWork;

/// Notification type based on the abuse type. NOTE: Copyright (DMCA) and Trademark reports cannot be anonymous.
/// 
final AbuseReportsPhishingReportOwnerNotification ownerNotification;

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
  'host_notification': hostNotification.toJson(),
  'justification': justification,
  'original_work': ?originalWork,
  'owner_notification': ownerNotification.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('act') &&
      json.containsKey('email') && json['email'] is String &&
      json.containsKey('email2') && json['email2'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('urls') && json['urls'] is String &&
      json.containsKey('host_notification') &&
      json.containsKey('justification') && json['justification'] is String &&
      json.containsKey('owner_notification'); } 
AbuseReportsPhishingReport copyWith({dynamic Function()? act, String Function()? comments, String Function()? company, String? email, String? email2, String? name, String Function()? reportedCountry, String Function()? reportedUserAgent, String Function()? tele, String Function()? title, String? urls, AbuseReportsPhishingReportHostNotification? hostNotification, String? justification, String Function()? originalWork, AbuseReportsPhishingReportOwnerNotification? ownerNotification, }) { return AbuseReportsPhishingReport(
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
  hostNotification: hostNotification ?? this.hostNotification,
  justification: justification ?? this.justification,
  originalWork: originalWork != null ? originalWork() : this.originalWork,
  ownerNotification: ownerNotification ?? this.ownerNotification,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AbuseReportsPhishingReport &&
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
          hostNotification == other.hostNotification &&
          justification == other.justification &&
          originalWork == other.originalWork &&
          ownerNotification == other.ownerNotification; } 
@override int get hashCode { return Object.hash(act, comments, company, email, email2, name, reportedCountry, reportedUserAgent, tele, title, urls, hostNotification, justification, originalWork, ownerNotification); } 
@override String toString() { return 'AbuseReportsPhishingReport(act: $act, comments: $comments, company: $company, email: $email, email2: $email2, name: $name, reportedCountry: $reportedCountry, reportedUserAgent: $reportedUserAgent, tele: $tele, title: $title, urls: $urls, hostNotification: $hostNotification, justification: $justification, originalWork: $originalWork, ownerNotification: $ownerNotification)'; } 
 }
