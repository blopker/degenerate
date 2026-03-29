// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'campaign_state.dart';import 'campaign_summary_alert_stats.dart';import 'simple_user.dart';import 'team.dart';/// The campaign metadata and alert stats.
final class CampaignSummary {const CampaignSummary({required this.number, required this.createdAt, required this.updatedAt, this.name, required this.description, required this.managers, this.teamManagers, this.publishedAt, required this.endsAt, this.closedAt, required this.state, required this.contactLink, this.alertStats, });

factory CampaignSummary.fromJson(Map<String, dynamic> json) { return CampaignSummary(
  number: (json['number'] as num).toInt(),
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
  name: json['name'] as String?,
  description: json['description'] as String,
  managers: (json['managers'] as List<dynamic>).map((e) => SimpleUser.fromJson(e as Map<String, dynamic>)).toList(),
  teamManagers: (json['team_managers'] as List<dynamic>?)?.map((e) => Team.fromJson(e as Map<String, dynamic>)).toList(),
  publishedAt: json['published_at'] != null ? DateTime.parse(json['published_at'] as String) : null,
  endsAt: DateTime.parse(json['ends_at'] as String),
  closedAt: json['closed_at'] != null ? DateTime.parse(json['closed_at'] as String) : null,
  state: CampaignState.fromJson(json['state'] as String),
  contactLink: json['contact_link'] != null ? Uri.parse(json['contact_link'] as String) : null,
  alertStats: json['alert_stats'] != null ? CampaignSummaryAlertStats.fromJson(json['alert_stats'] as Map<String, dynamic>) : null,
); }

/// The number of the newly created campaign
final int number;

/// The date and time the campaign was created, in ISO 8601 format':' YYYY-MM-DDTHH:MM:SSZ.
final DateTime createdAt;

/// The date and time the campaign was last updated, in ISO 8601 format':' YYYY-MM-DDTHH:MM:SSZ.
final DateTime updatedAt;

/// The campaign name
final String? name;

/// The campaign description
final String description;

/// The campaign managers
final List<SimpleUser> managers;

/// The campaign team managers
final List<Team>? teamManagers;

/// The date and time the campaign was published, in ISO 8601 format':' YYYY-MM-DDTHH:MM:SSZ.
final DateTime? publishedAt;

/// The date and time the campaign has ended, in ISO 8601 format':' YYYY-MM-DDTHH:MM:SSZ.
final DateTime endsAt;

/// The date and time the campaign was closed, in ISO 8601 format':' YYYY-MM-DDTHH:MM:SSZ. Will be null if the campaign is still open.
final DateTime? closedAt;

/// Indicates whether a campaign is open or closed
final CampaignState state;

/// The contact link of the campaign.
final Uri? contactLink;

final CampaignSummaryAlertStats? alertStats;

Map<String, dynamic> toJson() { return {
  'number': number,
  'created_at': createdAt.toIso8601String(),
  'updated_at': updatedAt.toIso8601String(),
  'name': ?name,
  'description': description,
  'managers': managers.map((e) => e.toJson()).toList(),
  if (teamManagers != null) 'team_managers': teamManagers?.map((e) => e.toJson()).toList(),
  if (publishedAt != null) 'published_at': publishedAt?.toIso8601String(),
  'ends_at': endsAt.toIso8601String(),
  if (closedAt != null) 'closed_at': closedAt?.toIso8601String(),
  'state': state.toJson(),
  if (contactLink != null) 'contact_link': contactLink?.toString(),
  if (alertStats != null) 'alert_stats': alertStats?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('number') && json['number'] is num &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('updated_at') && json['updated_at'] is String &&
      json.containsKey('description') && json['description'] is String &&
      json.containsKey('managers') &&
      json.containsKey('ends_at') && json['ends_at'] is String &&
      json.containsKey('state') &&
      json.containsKey('contact_link') && json['contact_link'] is String; } 
CampaignSummary copyWith({int? number, DateTime? createdAt, DateTime? updatedAt, String Function()? name, String? description, List<SimpleUser>? managers, List<Team> Function()? teamManagers, DateTime Function()? publishedAt, DateTime? endsAt, DateTime? Function()? closedAt, CampaignState? state, Uri? Function()? contactLink, CampaignSummaryAlertStats Function()? alertStats, }) { return CampaignSummary(
  number: number ?? this.number,
  createdAt: createdAt ?? this.createdAt,
  updatedAt: updatedAt ?? this.updatedAt,
  name: name != null ? name() : this.name,
  description: description ?? this.description,
  managers: managers ?? this.managers,
  teamManagers: teamManagers != null ? teamManagers() : this.teamManagers,
  publishedAt: publishedAt != null ? publishedAt() : this.publishedAt,
  endsAt: endsAt ?? this.endsAt,
  closedAt: closedAt != null ? closedAt() : this.closedAt,
  state: state ?? this.state,
  contactLink: contactLink != null ? contactLink() : this.contactLink,
  alertStats: alertStats != null ? alertStats() : this.alertStats,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CampaignSummary &&
          number == other.number &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          name == other.name &&
          description == other.description &&
          listEquals(managers, other.managers) &&
          listEquals(teamManagers, other.teamManagers) &&
          publishedAt == other.publishedAt &&
          endsAt == other.endsAt &&
          closedAt == other.closedAt &&
          state == other.state &&
          contactLink == other.contactLink &&
          alertStats == other.alertStats; } 
@override int get hashCode { return Object.hash(number, createdAt, updatedAt, name, description, Object.hashAll(managers), Object.hashAll(teamManagers ?? const []), publishedAt, endsAt, closedAt, state, contactLink, alertStats); } 
@override String toString() { return 'CampaignSummary(number: $number, createdAt: $createdAt, updatedAt: $updatedAt, name: $name, description: $description, managers: $managers, teamManagers: $teamManagers, publishedAt: $publishedAt, endsAt: $endsAt, closedAt: $closedAt, state: $state, contactLink: $contactLink, alertStats: $alertStats)'; } 
 }
