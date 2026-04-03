// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'webhooks_sponsorship_maintainer.dart';import 'webhooks_sponsorship_sponsor.dart';import 'webhooks_sponsorship_sponsorable.dart';import 'webhooks_sponsorship_tier.dart';@immutable final class WebhooksSponsorship {const WebhooksSponsorship({required this.createdAt, required this.nodeId, required this.privacyLevel, required this.sponsor, required this.sponsorable, required this.tier, this.maintainer, });

factory WebhooksSponsorship.fromJson(Map<String, dynamic> json) { return WebhooksSponsorship(
  createdAt: json['created_at'] as String,
  maintainer: json['maintainer'] != null ? WebhooksSponsorshipMaintainer.fromJson(json['maintainer'] as Map<String, dynamic>) : null,
  nodeId: json['node_id'] as String,
  privacyLevel: json['privacy_level'] as String,
  sponsor: json['sponsor'] != null ? WebhooksSponsorshipSponsor.fromJson(json['sponsor'] as Map<String, dynamic>) : null,
  sponsorable: json['sponsorable'] != null ? WebhooksSponsorshipSponsorable.fromJson(json['sponsorable'] as Map<String, dynamic>) : null,
  tier: WebhooksSponsorshipTier.fromJson(json['tier'] as Map<String, dynamic>),
); }

final String createdAt;

final WebhooksSponsorshipMaintainer? maintainer;

final String nodeId;

final String privacyLevel;

final WebhooksSponsorshipSponsor? sponsor;

final WebhooksSponsorshipSponsorable? sponsorable;

/// The `tier_changed` and `pending_tier_change` will include the original tier before the change or pending change. For more information, see the pending tier change payload.
final WebhooksSponsorshipTier tier;

Map<String, dynamic> toJson() { return {
  'created_at': createdAt,
  if (maintainer != null) 'maintainer': maintainer?.toJson(),
  'node_id': nodeId,
  'privacy_level': privacyLevel,
  if (sponsor != null) 'sponsor': sponsor?.toJson(),
  if (sponsorable != null) 'sponsorable': sponsorable?.toJson(),
  'tier': tier.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('node_id') && json['node_id'] is String &&
      json.containsKey('privacy_level') && json['privacy_level'] is String &&
      json.containsKey('sponsor') &&
      json.containsKey('sponsorable') &&
      json.containsKey('tier'); } 
WebhooksSponsorship copyWith({String? createdAt, WebhooksSponsorshipMaintainer Function()? maintainer, String? nodeId, String? privacyLevel, WebhooksSponsorshipSponsor? Function()? sponsor, WebhooksSponsorshipSponsorable? Function()? sponsorable, WebhooksSponsorshipTier? tier, }) { return WebhooksSponsorship(
  createdAt: createdAt ?? this.createdAt,
  maintainer: maintainer != null ? maintainer() : this.maintainer,
  nodeId: nodeId ?? this.nodeId,
  privacyLevel: privacyLevel ?? this.privacyLevel,
  sponsor: sponsor != null ? sponsor() : this.sponsor,
  sponsorable: sponsorable != null ? sponsorable() : this.sponsorable,
  tier: tier ?? this.tier,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhooksSponsorship &&
          createdAt == other.createdAt &&
          maintainer == other.maintainer &&
          nodeId == other.nodeId &&
          privacyLevel == other.privacyLevel &&
          sponsor == other.sponsor &&
          sponsorable == other.sponsorable &&
          tier == other.tier; } 
@override int get hashCode { return Object.hash(createdAt, maintainer, nodeId, privacyLevel, sponsor, sponsorable, tier); } 
@override String toString() { return 'WebhooksSponsorship(createdAt: $createdAt, maintainer: $maintainer, nodeId: $nodeId, privacyLevel: $privacyLevel, sponsor: $sponsor, sponsorable: $sponsorable, tier: $tier)'; } 
 }
