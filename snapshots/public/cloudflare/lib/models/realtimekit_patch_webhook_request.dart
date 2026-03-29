// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class RealtimekitPatchWebhookRequestEvents {const RealtimekitPatchWebhookRequestEvents._(this.value);

factory RealtimekitPatchWebhookRequestEvents.fromJson(String json) { return switch (json) {
  'meeting.started' => meetingStarted,
  'meeting.ended' => meetingEnded,
  'meeting.participantJoined' => meetingParticipantJoined,
  'meeting.participantLeft' => meetingParticipantLeft,
  'recording.statusUpdate' => recordingStatusUpdate,
  'livestreaming.statusUpdate' => livestreamingStatusUpdate,
  'meeting.chatSynced' => meetingChatSynced,
  'meeting.transcript' => meetingTranscript,
  'meeting.summary' => meetingSummary,
  _ => RealtimekitPatchWebhookRequestEvents._(json),
}; }

static const RealtimekitPatchWebhookRequestEvents meetingStarted = RealtimekitPatchWebhookRequestEvents._('meeting.started');

static const RealtimekitPatchWebhookRequestEvents meetingEnded = RealtimekitPatchWebhookRequestEvents._('meeting.ended');

static const RealtimekitPatchWebhookRequestEvents meetingParticipantJoined = RealtimekitPatchWebhookRequestEvents._('meeting.participantJoined');

static const RealtimekitPatchWebhookRequestEvents meetingParticipantLeft = RealtimekitPatchWebhookRequestEvents._('meeting.participantLeft');

static const RealtimekitPatchWebhookRequestEvents recordingStatusUpdate = RealtimekitPatchWebhookRequestEvents._('recording.statusUpdate');

static const RealtimekitPatchWebhookRequestEvents livestreamingStatusUpdate = RealtimekitPatchWebhookRequestEvents._('livestreaming.statusUpdate');

static const RealtimekitPatchWebhookRequestEvents meetingChatSynced = RealtimekitPatchWebhookRequestEvents._('meeting.chatSynced');

static const RealtimekitPatchWebhookRequestEvents meetingTranscript = RealtimekitPatchWebhookRequestEvents._('meeting.transcript');

static const RealtimekitPatchWebhookRequestEvents meetingSummary = RealtimekitPatchWebhookRequestEvents._('meeting.summary');

static const List<RealtimekitPatchWebhookRequestEvents> values = [meetingStarted, meetingEnded, meetingParticipantJoined, meetingParticipantLeft, recordingStatusUpdate, livestreamingStatusUpdate, meetingChatSynced, meetingTranscript, meetingSummary];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimekitPatchWebhookRequestEvents && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimekitPatchWebhookRequestEvents($value)'; } 
 }
final class RealtimekitPatchWebhookRequest {const RealtimekitPatchWebhookRequest({this.enabled = true, this.events, this.name, this.url, });

factory RealtimekitPatchWebhookRequest.fromJson(Map<String, dynamic> json) { return RealtimekitPatchWebhookRequest(
  enabled: json.containsKey('enabled') ? json['enabled'] as bool : true,
  events: (json['events'] as List<dynamic>?)?.map((e) => RealtimekitPatchWebhookRequestEvents.fromJson(e as String)).toList(),
  name: json['name'] as String?,
  url: json['url'] != null ? Uri.parse(json['url'] as String) : null,
); }

final bool enabled;

/// Events that the webhook will get triggered by
final List<RealtimekitPatchWebhookRequestEvents>? events;

/// Name of the webhook
final String? name;

/// URL the webhook will send events to
final Uri? url;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  if (events != null) 'events': events?.map((e) => e.toJson()).toList(),
  'name': ?name,
  if (url != null) 'url': url?.toString(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
RealtimekitPatchWebhookRequest copyWith({bool Function()? enabled, List<RealtimekitPatchWebhookRequestEvents> Function()? events, String Function()? name, Uri Function()? url, }) { return RealtimekitPatchWebhookRequest(
  enabled: enabled != null ? enabled() : this.enabled,
  events: events != null ? events() : this.events,
  name: name != null ? name() : this.name,
  url: url != null ? url() : this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimekitPatchWebhookRequest &&
          enabled == other.enabled &&
          listEquals(events, other.events) &&
          name == other.name &&
          url == other.url; } 
@override int get hashCode { return Object.hash(enabled, Object.hashAll(events ?? const []), name, url); } 
@override String toString() { return 'RealtimekitPatchWebhookRequest(enabled: $enabled, events: $events, name: $name, url: $url)'; } 
 }
