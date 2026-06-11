// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Notification type based on the abuse type. NOTE: Copyright (DMCA) and Trademark reports cannot be anonymous.
/// 
@immutable final class AbuseReportsTrademarkReportHostNotification {const AbuseReportsTrademarkReportHostNotification._(this.value);

factory AbuseReportsTrademarkReportHostNotification.fromJson(String json) { return switch (json) {
  'send' => send,
  _ => AbuseReportsTrademarkReportHostNotification._(json),
}; }

static const AbuseReportsTrademarkReportHostNotification send = AbuseReportsTrademarkReportHostNotification._('send');

static const List<AbuseReportsTrademarkReportHostNotification> values = [send];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AbuseReportsTrademarkReportHostNotification && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AbuseReportsTrademarkReportHostNotification($value)'; } 
 }
/// Notification type based on the abuse type. NOTE: Copyright (DMCA) and Trademark reports cannot be anonymous.
/// 
@immutable final class AbuseReportsTrademarkReportOwnerNotification {const AbuseReportsTrademarkReportOwnerNotification._(this.value);

factory AbuseReportsTrademarkReportOwnerNotification.fromJson(String json) { return switch (json) {
  'send' => send,
  _ => AbuseReportsTrademarkReportOwnerNotification._(json),
}; }

static const AbuseReportsTrademarkReportOwnerNotification send = AbuseReportsTrademarkReportOwnerNotification._('send');

static const List<AbuseReportsTrademarkReportOwnerNotification> values = [send];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AbuseReportsTrademarkReportOwnerNotification && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AbuseReportsTrademarkReportOwnerNotification($value)'; } 
 }
@immutable final class AbuseReportsTrademarkReport {const AbuseReportsTrademarkReport({required this.act, required this.email, required this.email2, required this.name, required this.urls, required this.hostNotification, required this.justification, required this.ownerNotification, required this.trademarkNumber, required this.trademarkOffice, required this.trademarkSymbol, this.comments, this.company, this.reportedCountry, this.reportedUserAgent, this.tele, this.title, });

factory AbuseReportsTrademarkReport.fromJson(Map<String, dynamic> json) { return AbuseReportsTrademarkReport(
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
  hostNotification: AbuseReportsTrademarkReportHostNotification.fromJson(json['host_notification'] as String),
  justification: json['justification'] as String,
  ownerNotification: AbuseReportsTrademarkReportOwnerNotification.fromJson(json['owner_notification'] as String),
  trademarkNumber: json['trademark_number'] as String,
  trademarkOffice: json['trademark_office'] as String,
  trademarkSymbol: json['trademark_symbol'] as String,
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
final AbuseReportsTrademarkReportHostNotification hostNotification;

/// A detailed description of the infringement, including any necessary access details and the exact steps needed to view the content, not exceeding 5000 characters.
/// 
final String justification;

/// Notification type based on the abuse type. NOTE: Copyright (DMCA) and Trademark reports cannot be anonymous.
/// 
final AbuseReportsTrademarkReportOwnerNotification ownerNotification;

/// Text not exceeding 1000 characters
final String trademarkNumber;

/// Text not exceeding 1000 characters
final String trademarkOffice;

/// Text not exceeding 1000 characters
final String trademarkSymbol;

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
  'owner_notification': ownerNotification.toJson(),
  'trademark_number': trademarkNumber,
  'trademark_office': trademarkOffice,
  'trademark_symbol': trademarkSymbol,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('act') &&
      json.containsKey('email') && json['email'] is String &&
      json.containsKey('email2') && json['email2'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('urls') && json['urls'] is String &&
      json.containsKey('host_notification') &&
      json.containsKey('justification') && json['justification'] is String &&
      json.containsKey('owner_notification') &&
      json.containsKey('trademark_number') && json['trademark_number'] is String &&
      json.containsKey('trademark_office') && json['trademark_office'] is String &&
      json.containsKey('trademark_symbol') && json['trademark_symbol'] is String; } 
AbuseReportsTrademarkReport copyWith({dynamic Function()? act, String Function()? comments, String Function()? company, String? email, String? email2, String? name, String Function()? reportedCountry, String Function()? reportedUserAgent, String Function()? tele, String Function()? title, String? urls, AbuseReportsTrademarkReportHostNotification? hostNotification, String? justification, AbuseReportsTrademarkReportOwnerNotification? ownerNotification, String? trademarkNumber, String? trademarkOffice, String? trademarkSymbol, }) { return AbuseReportsTrademarkReport(
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
  ownerNotification: ownerNotification ?? this.ownerNotification,
  trademarkNumber: trademarkNumber ?? this.trademarkNumber,
  trademarkOffice: trademarkOffice ?? this.trademarkOffice,
  trademarkSymbol: trademarkSymbol ?? this.trademarkSymbol,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AbuseReportsTrademarkReport &&
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
          ownerNotification == other.ownerNotification &&
          trademarkNumber == other.trademarkNumber &&
          trademarkOffice == other.trademarkOffice &&
          trademarkSymbol == other.trademarkSymbol; } 
@override int get hashCode { return Object.hash(act, comments, company, email, email2, name, reportedCountry, reportedUserAgent, tele, title, urls, hostNotification, justification, ownerNotification, trademarkNumber, trademarkOffice, trademarkSymbol); } 
@override String toString() { return 'AbuseReportsTrademarkReport(act: $act, comments: $comments, company: $company, email: $email, email2: $email2, name: $name, reportedCountry: $reportedCountry, reportedUserAgent: $reportedUserAgent, tele: $tele, title: $title, urls: $urls, hostNotification: $hostNotification, justification: $justification, ownerNotification: $ownerNotification, trademarkNumber: $trademarkNumber, trademarkOffice: $trademarkOffice, trademarkSymbol: $trademarkSymbol)'; } 
 }
