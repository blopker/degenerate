// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Notification type based on the abuse type. NOTE: Copyright (DMCA) and Trademark reports cannot be anonymous.
/// 
@immutable final class AbuseReportsCsamReportHostNotification {const AbuseReportsCsamReportHostNotification._(this.value);

factory AbuseReportsCsamReportHostNotification.fromJson(String json) { return switch (json) {
  'send' => send,
  'send-anon' => sendAnon,
  _ => AbuseReportsCsamReportHostNotification._(json),
}; }

static const AbuseReportsCsamReportHostNotification send = AbuseReportsCsamReportHostNotification._('send');

static const AbuseReportsCsamReportHostNotification sendAnon = AbuseReportsCsamReportHostNotification._('send-anon');

static const List<AbuseReportsCsamReportHostNotification> values = [send, sendAnon];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AbuseReportsCsamReportHostNotification && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AbuseReportsCsamReportHostNotification($value)'; } 
 }
/// Notification type based on the abuse type. NOTE: Copyright (DMCA) and Trademark reports cannot be anonymous.
/// 
@immutable final class AbuseReportsCsamReportNcmecNotification {const AbuseReportsCsamReportNcmecNotification._(this.value);

factory AbuseReportsCsamReportNcmecNotification.fromJson(String json) { return switch (json) {
  'send' => send,
  'send-anon' => sendAnon,
  _ => AbuseReportsCsamReportNcmecNotification._(json),
}; }

static const AbuseReportsCsamReportNcmecNotification send = AbuseReportsCsamReportNcmecNotification._('send');

static const AbuseReportsCsamReportNcmecNotification sendAnon = AbuseReportsCsamReportNcmecNotification._('send-anon');

static const List<AbuseReportsCsamReportNcmecNotification> values = [send, sendAnon];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AbuseReportsCsamReportNcmecNotification && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AbuseReportsCsamReportNcmecNotification($value)'; } 
 }
/// Notification type based on the abuse type. NOTE: Copyright (DMCA) and Trademark reports cannot be anonymous.
/// 
@immutable final class AbuseReportsCsamReportOwnerNotification {const AbuseReportsCsamReportOwnerNotification._(this.value);

factory AbuseReportsCsamReportOwnerNotification.fromJson(String json) { return switch (json) {
  'send' => send,
  'send-anon' => sendAnon,
  'none' => none,
  _ => AbuseReportsCsamReportOwnerNotification._(json),
}; }

static const AbuseReportsCsamReportOwnerNotification send = AbuseReportsCsamReportOwnerNotification._('send');

static const AbuseReportsCsamReportOwnerNotification sendAnon = AbuseReportsCsamReportOwnerNotification._('send-anon');

static const AbuseReportsCsamReportOwnerNotification none = AbuseReportsCsamReportOwnerNotification._('none');

static const List<AbuseReportsCsamReportOwnerNotification> values = [send, sendAnon, none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AbuseReportsCsamReportOwnerNotification && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AbuseReportsCsamReportOwnerNotification($value)'; } 
 }
@immutable final class AbuseReportsCsamReport {const AbuseReportsCsamReport({required this.act, required this.email, required this.email2, required this.name, required this.urls, required this.hostNotification, required this.justification, required this.ncmecNotification, required this.ownerNotification, this.comments, this.company, this.reportedCountry, this.reportedUserAgent, this.tele, this.title, this.country, });

factory AbuseReportsCsamReport.fromJson(Map<String, dynamic> json) { return AbuseReportsCsamReport(
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
  country: json['country'] as String?,
  hostNotification: AbuseReportsCsamReportHostNotification.fromJson(json['host_notification'] as String),
  justification: json['justification'] as String,
  ncmecNotification: AbuseReportsCsamReportNcmecNotification.fromJson(json['ncmec_notification'] as String),
  ownerNotification: AbuseReportsCsamReportOwnerNotification.fromJson(json['owner_notification'] as String),
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

/// Text not exceeding 255 characters. This field may be released by Cloudflare to third parties such as the Lumen Database (https://lumendatabase.org/).
/// 
final String? country;

/// Notification type based on the abuse type. NOTE: Copyright (DMCA) and Trademark reports cannot be anonymous.
/// 
final AbuseReportsCsamReportHostNotification hostNotification;

/// A detailed description of the infringement, including any necessary access details and the exact steps needed to view the content, not exceeding 5000 characters.
/// 
final String justification;

/// Notification type based on the abuse type. NOTE: Copyright (DMCA) and Trademark reports cannot be anonymous.
/// 
final AbuseReportsCsamReportNcmecNotification ncmecNotification;

/// Notification type based on the abuse type. NOTE: Copyright (DMCA) and Trademark reports cannot be anonymous.
/// 
final AbuseReportsCsamReportOwnerNotification ownerNotification;

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
  'country': ?country,
  'host_notification': hostNotification.toJson(),
  'justification': justification,
  'ncmec_notification': ncmecNotification.toJson(),
  'owner_notification': ownerNotification.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('act') &&
      json.containsKey('email') && json['email'] is String &&
      json.containsKey('email2') && json['email2'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('urls') && json['urls'] is String &&
      json.containsKey('host_notification') &&
      json.containsKey('justification') && json['justification'] is String &&
      json.containsKey('ncmec_notification') &&
      json.containsKey('owner_notification'); } 
AbuseReportsCsamReport copyWith({dynamic Function()? act, String Function()? comments, String Function()? company, String? email, String? email2, String? name, String Function()? reportedCountry, String Function()? reportedUserAgent, String Function()? tele, String Function()? title, String? urls, String Function()? country, AbuseReportsCsamReportHostNotification? hostNotification, String? justification, AbuseReportsCsamReportNcmecNotification? ncmecNotification, AbuseReportsCsamReportOwnerNotification? ownerNotification, }) { return AbuseReportsCsamReport(
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
  country: country != null ? country() : this.country,
  hostNotification: hostNotification ?? this.hostNotification,
  justification: justification ?? this.justification,
  ncmecNotification: ncmecNotification ?? this.ncmecNotification,
  ownerNotification: ownerNotification ?? this.ownerNotification,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AbuseReportsCsamReport &&
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
          country == other.country &&
          hostNotification == other.hostNotification &&
          justification == other.justification &&
          ncmecNotification == other.ncmecNotification &&
          ownerNotification == other.ownerNotification; } 
@override int get hashCode { return Object.hash(act, comments, company, email, email2, name, reportedCountry, reportedUserAgent, tele, title, urls, country, hostNotification, justification, ncmecNotification, ownerNotification); } 
@override String toString() { return 'AbuseReportsCsamReport(act: $act, comments: $comments, company: $company, email: $email, email2: $email2, name: $name, reportedCountry: $reportedCountry, reportedUserAgent: $reportedUserAgent, tele: $tele, title: $title, urls: $urls, country: $country, hostNotification: $hostNotification, justification: $justification, ncmecNotification: $ncmecNotification, ownerNotification: $ownerNotification)'; } 
 }
