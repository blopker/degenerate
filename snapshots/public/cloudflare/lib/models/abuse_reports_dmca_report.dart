// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Can be `0` for false or `1` for true. Must be value: 1 for DMCA reports
@immutable final class AbuseReportsDmcaReportAgree {const AbuseReportsDmcaReportAgree._(this.value);

factory AbuseReportsDmcaReportAgree.fromJson(int json) { return switch (json) {
  1 => $1,
  _ => AbuseReportsDmcaReportAgree._(json),
}; }

static const AbuseReportsDmcaReportAgree $1 = AbuseReportsDmcaReportAgree._(1);

static const List<AbuseReportsDmcaReportAgree> values = [$1];

final int value;

int toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AbuseReportsDmcaReportAgree && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AbuseReportsDmcaReportAgree($value)'; } 
 }
/// Notification type based on the abuse type. NOTE: Copyright (DMCA) and Trademark reports cannot be anonymous.
/// 
@immutable final class AbuseReportsDmcaReportHostNotification {const AbuseReportsDmcaReportHostNotification._(this.value);

factory AbuseReportsDmcaReportHostNotification.fromJson(String json) { return switch (json) {
  'send' => send,
  _ => AbuseReportsDmcaReportHostNotification._(json),
}; }

static const AbuseReportsDmcaReportHostNotification send = AbuseReportsDmcaReportHostNotification._('send');

static const List<AbuseReportsDmcaReportHostNotification> values = [send];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AbuseReportsDmcaReportHostNotification && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AbuseReportsDmcaReportHostNotification($value)'; } 
 }
/// Notification type based on the abuse type. NOTE: Copyright (DMCA) and Trademark reports cannot be anonymous.
/// 
@immutable final class AbuseReportsDmcaReportOwnerNotification {const AbuseReportsDmcaReportOwnerNotification._(this.value);

factory AbuseReportsDmcaReportOwnerNotification.fromJson(String json) { return switch (json) {
  'send' => send,
  _ => AbuseReportsDmcaReportOwnerNotification._(json),
}; }

static const AbuseReportsDmcaReportOwnerNotification send = AbuseReportsDmcaReportOwnerNotification._('send');

static const List<AbuseReportsDmcaReportOwnerNotification> values = [send];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AbuseReportsDmcaReportOwnerNotification && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AbuseReportsDmcaReportOwnerNotification($value)'; } 
 }
@immutable final class AbuseReportsDmcaReport {const AbuseReportsDmcaReport({required this.act, required this.email, required this.email2, required this.name, required this.urls, required this.address1, required this.agentName, required this.agree, required this.city, required this.country, required this.hostNotification, required this.originalWork, required this.ownerNotification, required this.signature, required this.state, this.comments, this.company, this.reportedCountry, this.reportedUserAgent, this.tele, this.title, });

factory AbuseReportsDmcaReport.fromJson(Map<String, dynamic> json) { return AbuseReportsDmcaReport(
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
  address1: json['address1'] as String,
  agentName: json['agent_name'] as String,
  agree: AbuseReportsDmcaReportAgree.fromJson((json['agree'] as num).toInt()),
  city: json['city'] as String,
  country: json['country'] as String,
  hostNotification: AbuseReportsDmcaReportHostNotification.fromJson(json['host_notification'] as String),
  originalWork: json['original_work'] as String,
  ownerNotification: AbuseReportsDmcaReportOwnerNotification.fromJson(json['owner_notification'] as String),
  signature: json['signature'] as String,
  state: json['state'] as String,
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

/// Text not exceeding 100 characters. This field may be released by Cloudflare to third parties such as the Lumen Database (https://lumendatabase.org/).
final String address1;

/// The name of the copyright holder. Text not exceeding 60 characters. This field may be released by Cloudflare to third parties such as the Lumen Database (https://lumendatabase.org/).
final String agentName;

/// Can be `0` for false or `1` for true. Must be value: 1 for DMCA reports
final AbuseReportsDmcaReportAgree agree;

/// Text not exceeding 255 characters. This field may be released by Cloudflare to third parties such as the Lumen Database (https://lumendatabase.org/).
final String city;

/// Text not exceeding 255 characters. This field may be released by Cloudflare to third parties such as the Lumen Database (https://lumendatabase.org/).
/// 
final String country;

/// Notification type based on the abuse type. NOTE: Copyright (DMCA) and Trademark reports cannot be anonymous.
/// 
final AbuseReportsDmcaReportHostNotification hostNotification;

/// Text not exceeding 255 characters. This field may be released by Cloudflare to third parties such as the Lumen Database (https://lumendatabase.org/).
/// 
final String originalWork;

/// Notification type based on the abuse type. NOTE: Copyright (DMCA) and Trademark reports cannot be anonymous.
/// 
final AbuseReportsDmcaReportOwnerNotification ownerNotification;

/// Required for DMCA reports, should be same as Name. An affirmation that all information in the report is true and accurate while agreeing to the policies of Cloudflare's abuse reports
final String signature;

/// Text not exceeding 255 characters. This field may be released by Cloudflare to third parties such as the Lumen Database (https://lumendatabase.org/).
final String state;

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
  'address1': address1,
  'agent_name': agentName,
  'agree': agree.toJson(),
  'city': city,
  'country': country,
  'host_notification': hostNotification.toJson(),
  'original_work': originalWork,
  'owner_notification': ownerNotification.toJson(),
  'signature': signature,
  'state': state,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('act') &&
      json.containsKey('email') && json['email'] is String &&
      json.containsKey('email2') && json['email2'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('urls') && json['urls'] is String &&
      json.containsKey('address1') && json['address1'] is String &&
      json.containsKey('agent_name') && json['agent_name'] is String &&
      json.containsKey('agree') &&
      json.containsKey('city') && json['city'] is String &&
      json.containsKey('country') && json['country'] is String &&
      json.containsKey('host_notification') &&
      json.containsKey('original_work') && json['original_work'] is String &&
      json.containsKey('owner_notification') &&
      json.containsKey('signature') && json['signature'] is String &&
      json.containsKey('state') && json['state'] is String; } 
AbuseReportsDmcaReport copyWith({dynamic Function()? act, String Function()? comments, String Function()? company, String? email, String? email2, String? name, String Function()? reportedCountry, String Function()? reportedUserAgent, String Function()? tele, String Function()? title, String? urls, String? address1, String? agentName, AbuseReportsDmcaReportAgree? agree, String? city, String? country, AbuseReportsDmcaReportHostNotification? hostNotification, String? originalWork, AbuseReportsDmcaReportOwnerNotification? ownerNotification, String? signature, String? state, }) { return AbuseReportsDmcaReport(
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
  address1: address1 ?? this.address1,
  agentName: agentName ?? this.agentName,
  agree: agree ?? this.agree,
  city: city ?? this.city,
  country: country ?? this.country,
  hostNotification: hostNotification ?? this.hostNotification,
  originalWork: originalWork ?? this.originalWork,
  ownerNotification: ownerNotification ?? this.ownerNotification,
  signature: signature ?? this.signature,
  state: state ?? this.state,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AbuseReportsDmcaReport &&
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
          address1 == other.address1 &&
          agentName == other.agentName &&
          agree == other.agree &&
          city == other.city &&
          country == other.country &&
          hostNotification == other.hostNotification &&
          originalWork == other.originalWork &&
          ownerNotification == other.ownerNotification &&
          signature == other.signature &&
          state == other.state; } 
@override int get hashCode { return Object.hashAll([act, comments, company, email, email2, name, reportedCountry, reportedUserAgent, tele, title, urls, address1, agentName, agree, city, country, hostNotification, originalWork, ownerNotification, signature, state]); } 
@override String toString() { return 'AbuseReportsDmcaReport(act: $act, comments: $comments, company: $company, email: $email, email2: $email2, name: $name, reportedCountry: $reportedCountry, reportedUserAgent: $reportedUserAgent, tele: $tele, title: $title, urls: $urls, address1: $address1, agentName: $agentName, agree: $agree, city: $city, country: $country, hostNotification: $hostNotification, originalWork: $originalWork, ownerNotification: $ownerNotification, signature: $signature, state: $state)'; } 
 }
