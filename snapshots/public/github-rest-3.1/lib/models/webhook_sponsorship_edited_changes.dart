// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'webhook_sponsorship_edited_changes_privacy_level.dart';@immutable final class WebhookSponsorshipEditedChanges {const WebhookSponsorshipEditedChanges({this.privacyLevel});

factory WebhookSponsorshipEditedChanges.fromJson(Map<String, dynamic> json) { return WebhookSponsorshipEditedChanges(
  privacyLevel: json['privacy_level'] != null ? WebhookSponsorshipEditedChangesPrivacyLevel.fromJson(json['privacy_level'] as Map<String, dynamic>) : null,
); }

final WebhookSponsorshipEditedChangesPrivacyLevel? privacyLevel;

Map<String, dynamic> toJson() { return {
  if (privacyLevel != null) 'privacy_level': privacyLevel?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'privacy_level'}.contains(key)); } 
WebhookSponsorshipEditedChanges copyWith({WebhookSponsorshipEditedChangesPrivacyLevel Function()? privacyLevel}) { return WebhookSponsorshipEditedChanges(
  privacyLevel: privacyLevel != null ? privacyLevel() : this.privacyLevel,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookSponsorshipEditedChanges &&
          privacyLevel == other.privacyLevel; } 
@override int get hashCode { return privacyLevel.hashCode; } 
@override String toString() { return 'WebhookSponsorshipEditedChanges(privacyLevel: $privacyLevel)'; } 
 }
