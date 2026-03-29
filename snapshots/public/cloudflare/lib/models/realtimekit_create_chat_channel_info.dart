// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class RealtimekitCreateChatChannelInfoVisibility {const RealtimekitCreateChatChannelInfoVisibility._(this.value);

factory RealtimekitCreateChatChannelInfoVisibility.fromJson(String json) { return switch (json) {
  'public' => public,
  'private' => private,
  _ => RealtimekitCreateChatChannelInfoVisibility._(json),
}; }

static const RealtimekitCreateChatChannelInfoVisibility public = RealtimekitCreateChatChannelInfoVisibility._('public');

static const RealtimekitCreateChatChannelInfoVisibility private = RealtimekitCreateChatChannelInfoVisibility._('private');

static const List<RealtimekitCreateChatChannelInfoVisibility> values = [public, private];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimekitCreateChatChannelInfoVisibility && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimekitCreateChatChannelInfoVisibility($value)'; } 
 }
final class RealtimekitCreateChatChannelInfo {const RealtimekitCreateChatChannelInfo({this.customParticipantIds, this.displayName, this.visibility, });

factory RealtimekitCreateChatChannelInfo.fromJson(Map<String, dynamic> json) { return RealtimekitCreateChatChannelInfo(
  customParticipantIds: (json['custom_participant_ids'] as List<dynamic>?)?.map((e) => e as String).toList(),
  displayName: json['display_name'] as String?,
  visibility: json['visibility'] != null ? RealtimekitCreateChatChannelInfoVisibility.fromJson(json['visibility'] as String) : null,
); }

final List<String>? customParticipantIds;

final String? displayName;

final RealtimekitCreateChatChannelInfoVisibility? visibility;

Map<String, dynamic> toJson() { return {
  'custom_participant_ids': ?customParticipantIds,
  'display_name': ?displayName,
  if (visibility != null) 'visibility': visibility?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
RealtimekitCreateChatChannelInfo copyWith({List<String> Function()? customParticipantIds, String Function()? displayName, RealtimekitCreateChatChannelInfoVisibility Function()? visibility, }) { return RealtimekitCreateChatChannelInfo(
  customParticipantIds: customParticipantIds != null ? customParticipantIds() : this.customParticipantIds,
  displayName: displayName != null ? displayName() : this.displayName,
  visibility: visibility != null ? visibility() : this.visibility,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimekitCreateChatChannelInfo &&
          listEquals(customParticipantIds, other.customParticipantIds) &&
          displayName == other.displayName &&
          visibility == other.visibility; } 
@override int get hashCode { return Object.hash(Object.hashAll(customParticipantIds ?? const []), displayName, visibility); } 
@override String toString() { return 'RealtimekitCreateChatChannelInfo(customParticipantIds: $customParticipantIds, displayName: $displayName, visibility: $visibility)'; } 
 }
