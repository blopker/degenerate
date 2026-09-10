// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'conference_enum_status.dart';/// The reason why a conference ended. When a conference is in progress, will be `null`. When conference is completed, can be: `conference-ended-via-api`, `participant-with-end-conference-on-exit-left`, `participant-with-end-conference-on-exit-kicked`, `last-participant-kicked`, or `last-participant-left`.
@immutable final class ConferenceEnumReasonConferenceEnded {const ConferenceEnumReasonConferenceEnded._(this.value);

factory ConferenceEnumReasonConferenceEnded.fromJson(String json) { return switch (json) {
  'conference-ended-via-api' => conferenceEndedViaApi,
  'participant-with-end-conference-on-exit-left' => participantWithEndConferenceOnExitLeft,
  'participant-with-end-conference-on-exit-kicked' => participantWithEndConferenceOnExitKicked,
  'last-participant-kicked' => lastParticipantKicked,
  'last-participant-left' => lastParticipantLeft,
  _ => ConferenceEnumReasonConferenceEnded._(json),
}; }

static const ConferenceEnumReasonConferenceEnded conferenceEndedViaApi = ConferenceEnumReasonConferenceEnded._('conference-ended-via-api');

static const ConferenceEnumReasonConferenceEnded participantWithEndConferenceOnExitLeft = ConferenceEnumReasonConferenceEnded._('participant-with-end-conference-on-exit-left');

static const ConferenceEnumReasonConferenceEnded participantWithEndConferenceOnExitKicked = ConferenceEnumReasonConferenceEnded._('participant-with-end-conference-on-exit-kicked');

static const ConferenceEnumReasonConferenceEnded lastParticipantKicked = ConferenceEnumReasonConferenceEnded._('last-participant-kicked');

static const ConferenceEnumReasonConferenceEnded lastParticipantLeft = ConferenceEnumReasonConferenceEnded._('last-participant-left');

static const List<ConferenceEnumReasonConferenceEnded> values = [conferenceEndedViaApi, participantWithEndConferenceOnExitLeft, participantWithEndConferenceOnExitKicked, lastParticipantKicked, lastParticipantLeft];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ConferenceEnumReasonConferenceEnded && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ConferenceEnumReasonConferenceEnded($value)'; } 
 }
@immutable final class AccountConference {const AccountConference({this.accountSid = const Omittable.absent(), this.dateCreated = const Omittable.absent(), this.dateUpdated = const Omittable.absent(), this.apiVersion = const Omittable.absent(), this.friendlyName = const Omittable.absent(), this.region = const Omittable.absent(), this.sid = const Omittable.absent(), this.status, this.uri = const Omittable.absent(), this.subresourceUris = const Omittable.absent(), this.reasonConferenceEnded, this.callSidEndingConference = const Omittable.absent(), });

factory AccountConference.fromJson(Map<String, dynamic> json) { return AccountConference(
  accountSid: json.containsKey('account_sid') ? Omittable(json['account_sid'] as String?) : const Omittable.absent(),
  dateCreated: json.containsKey('date_created') ? Omittable(json['date_created'] as String?) : const Omittable.absent(),
  dateUpdated: json.containsKey('date_updated') ? Omittable(json['date_updated'] as String?) : const Omittable.absent(),
  apiVersion: json.containsKey('api_version') ? Omittable(json['api_version'] as String?) : const Omittable.absent(),
  friendlyName: json.containsKey('friendly_name') ? Omittable(json['friendly_name'] as String?) : const Omittable.absent(),
  region: json.containsKey('region') ? Omittable(json['region'] as String?) : const Omittable.absent(),
  sid: json.containsKey('sid') ? Omittable(json['sid'] as String?) : const Omittable.absent(),
  status: json['status'] != null ? ConferenceEnumStatus.fromJson(json['status'] as String) : null,
  uri: json.containsKey('uri') ? Omittable(json['uri'] as String?) : const Omittable.absent(),
  subresourceUris: json.containsKey('subresource_uris') ? Omittable(json['subresource_uris'] as Map<String, dynamic>?) : const Omittable.absent(),
  reasonConferenceEnded: json['reason_conference_ended'] != null ? ConferenceEnumReasonConferenceEnded.fromJson(json['reason_conference_ended'] as String) : null,
  callSidEndingConference: json.containsKey('call_sid_ending_conference') ? Omittable(json['call_sid_ending_conference'] as String?) : const Omittable.absent(),
); }

/// The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created this Conference resource.
final Omittable<String?> accountSid;

/// The date and time in UTC that this resource was created specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final Omittable<String?> dateCreated;

/// The date and time in UTC that this resource was last updated, specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final Omittable<String?> dateUpdated;

/// The API version used to create this conference.
final Omittable<String?> apiVersion;

/// A string that you assigned to describe this conference room. Maximum length is 128 characters.
final Omittable<String?> friendlyName;

/// A string that represents the Twilio Region where the conference audio was mixed. May be `us1`, `us2`, `ie1`,  `de1`, `sg1`, `br1`, `au1`, and `jp1`. Basic conference audio will always be mixed in `us1`. Global Conference audio will be mixed nearest to the majority of participants.
final Omittable<String?> region;

/// The unique, Twilio-provided string used to identify this Conference resource.
final Omittable<String?> sid;

final ConferenceEnumStatus? status;

/// The URI of this resource, relative to `https://api.twilio.com`.
final Omittable<String?> uri;

/// A list of related resources identified by their URIs relative to `https://api.twilio.com`.
final Omittable<Map<String,dynamic>?> subresourceUris;

final ConferenceEnumReasonConferenceEnded? reasonConferenceEnded;

/// The call SID that caused the conference to end.
final Omittable<String?> callSidEndingConference;

Map<String, dynamic> toJson() { return {
  if (accountSid.isPresent) 'account_sid': accountSid.value,
  if (dateCreated.isPresent) 'date_created': dateCreated.value,
  if (dateUpdated.isPresent) 'date_updated': dateUpdated.value,
  if (apiVersion.isPresent) 'api_version': apiVersion.value,
  if (friendlyName.isPresent) 'friendly_name': friendlyName.value,
  if (region.isPresent) 'region': region.value,
  if (sid.isPresent) 'sid': sid.value,
  if (status != null) 'status': status?.toJson(),
  if (uri.isPresent) 'uri': uri.value,
  if (subresourceUris.isPresent) 'subresource_uris': subresourceUris.value,
  if (reasonConferenceEnded != null) 'reason_conference_ended': reasonConferenceEnded?.toJson(),
  if (callSidEndingConference.isPresent) 'call_sid_ending_conference': callSidEndingConference.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_sid', 'date_created', 'date_updated', 'api_version', 'friendly_name', 'region', 'sid', 'status', 'uri', 'subresource_uris', 'reason_conference_ended', 'call_sid_ending_conference'}.contains(key)); } 
AccountConference copyWith({Omittable<String?>? accountSid, Omittable<String?>? dateCreated, Omittable<String?>? dateUpdated, Omittable<String?>? apiVersion, Omittable<String?>? friendlyName, Omittable<String?>? region, Omittable<String?>? sid, ConferenceEnumStatus? Function()? status, Omittable<String?>? uri, Omittable<Map<String,dynamic>?>? subresourceUris, ConferenceEnumReasonConferenceEnded? Function()? reasonConferenceEnded, Omittable<String?>? callSidEndingConference, }) { return AccountConference(
  accountSid: accountSid ?? this.accountSid,
  dateCreated: dateCreated ?? this.dateCreated,
  dateUpdated: dateUpdated ?? this.dateUpdated,
  apiVersion: apiVersion ?? this.apiVersion,
  friendlyName: friendlyName ?? this.friendlyName,
  region: region ?? this.region,
  sid: sid ?? this.sid,
  status: status != null ? status() : this.status,
  uri: uri ?? this.uri,
  subresourceUris: subresourceUris ?? this.subresourceUris,
  reasonConferenceEnded: reasonConferenceEnded != null ? reasonConferenceEnded() : this.reasonConferenceEnded,
  callSidEndingConference: callSidEndingConference ?? this.callSidEndingConference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountConference &&
          accountSid == other.accountSid &&
          dateCreated == other.dateCreated &&
          dateUpdated == other.dateUpdated &&
          apiVersion == other.apiVersion &&
          friendlyName == other.friendlyName &&
          region == other.region &&
          sid == other.sid &&
          status == other.status &&
          uri == other.uri &&
          subresourceUris == other.subresourceUris &&
          reasonConferenceEnded == other.reasonConferenceEnded &&
          callSidEndingConference == other.callSidEndingConference; } 
@override int get hashCode { return Object.hash(accountSid, dateCreated, dateUpdated, apiVersion, friendlyName, region, sid, status, uri, subresourceUris, reasonConferenceEnded, callSidEndingConference); } 
@override String toString() { return 'AccountConference(accountSid: $accountSid, dateCreated: $dateCreated, dateUpdated: $dateUpdated, apiVersion: $apiVersion, friendlyName: $friendlyName, region: $region, sid: $sid, status: $status, uri: $uri, subresourceUris: $subresourceUris, reasonConferenceEnded: $reasonConferenceEnded, callSidEndingConference: $callSidEndingConference)'; } 
 }
