// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'call_recording_enum_status.dart';/// How the recording was created. Can be: `DialVerb`, `Conference`, `OutboundAPI`, `Trunking`, `RecordVerb`, `StartCallRecordingAPI`, and `StartConferenceRecordingAPI`.
@immutable final class CallRecordingEnumSource {const CallRecordingEnumSource._(this.value);

factory CallRecordingEnumSource.fromJson(String json) { return switch (json) {
  'DialVerb' => dialVerb,
  'Conference' => conference,
  'OutboundAPI' => outboundApi,
  'Trunking' => trunking,
  'RecordVerb' => recordVerb,
  'StartCallRecordingAPI' => startCallRecordingApi,
  'StartConferenceRecordingAPI' => startConferenceRecordingApi,
  _ => CallRecordingEnumSource._(json),
}; }

static const CallRecordingEnumSource dialVerb = CallRecordingEnumSource._('DialVerb');

static const CallRecordingEnumSource conference = CallRecordingEnumSource._('Conference');

static const CallRecordingEnumSource outboundApi = CallRecordingEnumSource._('OutboundAPI');

static const CallRecordingEnumSource trunking = CallRecordingEnumSource._('Trunking');

static const CallRecordingEnumSource recordVerb = CallRecordingEnumSource._('RecordVerb');

static const CallRecordingEnumSource startCallRecordingApi = CallRecordingEnumSource._('StartCallRecordingAPI');

static const CallRecordingEnumSource startConferenceRecordingApi = CallRecordingEnumSource._('StartConferenceRecordingAPI');

static const List<CallRecordingEnumSource> values = [dialVerb, conference, outboundApi, trunking, recordVerb, startCallRecordingApi, startConferenceRecordingApi];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CallRecordingEnumSource && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CallRecordingEnumSource($value)'; } 
 }
@immutable final class AccountCallCallRecording {const AccountCallCallRecording({this.accountSid, this.apiVersion, this.callSid, this.conferenceSid, this.dateCreated, this.dateUpdated, this.startTime, this.duration, this.sid, this.price, this.uri, this.encryptionDetails, this.priceUnit, this.status, this.channels = 0, this.source, this.errorCode, this.track, });

factory AccountCallCallRecording.fromJson(Map<String, dynamic> json) { return AccountCallCallRecording(
  accountSid: json['account_sid'] as String?,
  apiVersion: json['api_version'] as String?,
  callSid: json['call_sid'] as String?,
  conferenceSid: json['conference_sid'] as String?,
  dateCreated: json['date_created'] as String?,
  dateUpdated: json['date_updated'] as String?,
  startTime: json['start_time'] as String?,
  duration: json['duration'] as String?,
  sid: json['sid'] as String?,
  price: json['price'] != null ? (json['price'] as num).toDouble() : null,
  uri: json['uri'] as String?,
  encryptionDetails: json['encryption_details'],
  priceUnit: json['price_unit'] as String?,
  status: json['status'] != null ? CallRecordingEnumStatus.fromJson(json['status'] as String) : null,
  channels: json.containsKey('channels') ? (json['channels'] as num).toInt() : 0,
  source: json['source'] != null ? CallRecordingEnumSource.fromJson(json['source'] as String) : null,
  errorCode: json['error_code'] != null ? (json['error_code'] as num).toInt() : null,
  track: json['track'] as String?,
); }

/// The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Recording resource.
final String? accountSid;

/// The API version used to make the recording.
final String? apiVersion;

/// The SID of the [Call](https://www.twilio.com/docs/voice/api/call-resource) the Recording resource is associated with.
final String? callSid;

/// The Conference SID that identifies the conference associated with the recording, if a conference recording.
final String? conferenceSid;

/// The date and time in GMT that the resource was created specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final String? dateCreated;

/// The date and time in GMT that the resource was last updated, specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final String? dateUpdated;

/// The start time of the recording in GMT and in [RFC 2822](https://www.php.net/manual/en/class.datetime.php#datetime.constants.rfc2822) format.
final String? startTime;

/// The length of the recording in seconds.
final String? duration;

/// The unique string that that we created to identify the Recording resource.
final String? sid;

/// The one-time cost of creating the recording in the `price_unit` currency.
final double? price;

/// The URI of the resource, relative to `https://api.twilio.com`.
final String? uri;

/// How to decrypt the recording if it was encrypted using [Call Recording Encryption](https://www.twilio.com/docs/voice/tutorials/voice-recording-encryption) feature.
final dynamic encryptionDetails;

/// The currency used in the `price` property. Example: `USD`.
final String? priceUnit;

final CallRecordingEnumStatus? status;

/// The number of channels in the final recording file.  Can be: `1`, or `2`. Separating a two leg call into two separate channels of the recording file is supported in [Dial](https://www.twilio.com/docs/voice/twiml/dial#attributes-record) and [Outbound Rest API](https://www.twilio.com/docs/voice/make-calls) record options.
final int channels;

final CallRecordingEnumSource? source;

/// The error code that describes why the recording is `absent`. The error code is described in our [Error Dictionary](https://www.twilio.com/docs/api/errors). This value is null if the recording `status` is not `absent`.
final int? errorCode;

/// The recorded track. Can be: `inbound`, `outbound`, or `both`.
final String? track;

Map<String, dynamic> toJson() { return {
  'account_sid': ?accountSid,
  'api_version': ?apiVersion,
  'call_sid': ?callSid,
  'conference_sid': ?conferenceSid,
  'date_created': ?dateCreated,
  'date_updated': ?dateUpdated,
  'start_time': ?startTime,
  'duration': ?duration,
  'sid': ?sid,
  'price': ?price,
  'uri': ?uri,
  'encryption_details': ?encryptionDetails,
  'price_unit': ?priceUnit,
  if (status != null) 'status': status?.toJson(),
  'channels': channels,
  if (source != null) 'source': source?.toJson(),
  'error_code': ?errorCode,
  'track': ?track,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_sid', 'api_version', 'call_sid', 'conference_sid', 'date_created', 'date_updated', 'start_time', 'duration', 'sid', 'price', 'uri', 'encryption_details', 'price_unit', 'status', 'channels', 'source', 'error_code', 'track'}.contains(key)); } 
AccountCallCallRecording copyWith({String? Function()? accountSid, String? Function()? apiVersion, String? Function()? callSid, String? Function()? conferenceSid, String? Function()? dateCreated, String? Function()? dateUpdated, String? Function()? startTime, String? Function()? duration, String? Function()? sid, double? Function()? price, String? Function()? uri, dynamic Function()? encryptionDetails, String? Function()? priceUnit, CallRecordingEnumStatus Function()? status, int Function()? channels, CallRecordingEnumSource Function()? source, int? Function()? errorCode, String? Function()? track, }) { return AccountCallCallRecording(
  accountSid: accountSid != null ? accountSid() : this.accountSid,
  apiVersion: apiVersion != null ? apiVersion() : this.apiVersion,
  callSid: callSid != null ? callSid() : this.callSid,
  conferenceSid: conferenceSid != null ? conferenceSid() : this.conferenceSid,
  dateCreated: dateCreated != null ? dateCreated() : this.dateCreated,
  dateUpdated: dateUpdated != null ? dateUpdated() : this.dateUpdated,
  startTime: startTime != null ? startTime() : this.startTime,
  duration: duration != null ? duration() : this.duration,
  sid: sid != null ? sid() : this.sid,
  price: price != null ? price() : this.price,
  uri: uri != null ? uri() : this.uri,
  encryptionDetails: encryptionDetails != null ? encryptionDetails() : this.encryptionDetails,
  priceUnit: priceUnit != null ? priceUnit() : this.priceUnit,
  status: status != null ? status() : this.status,
  channels: channels != null ? channels() : this.channels,
  source: source != null ? source() : this.source,
  errorCode: errorCode != null ? errorCode() : this.errorCode,
  track: track != null ? track() : this.track,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountCallCallRecording &&
          accountSid == other.accountSid &&
          apiVersion == other.apiVersion &&
          callSid == other.callSid &&
          conferenceSid == other.conferenceSid &&
          dateCreated == other.dateCreated &&
          dateUpdated == other.dateUpdated &&
          startTime == other.startTime &&
          duration == other.duration &&
          sid == other.sid &&
          price == other.price &&
          uri == other.uri &&
          encryptionDetails == other.encryptionDetails &&
          priceUnit == other.priceUnit &&
          status == other.status &&
          channels == other.channels &&
          source == other.source &&
          errorCode == other.errorCode &&
          track == other.track; } 
@override int get hashCode { return Object.hash(accountSid, apiVersion, callSid, conferenceSid, dateCreated, dateUpdated, startTime, duration, sid, price, uri, encryptionDetails, priceUnit, status, channels, source, errorCode, track); } 
@override String toString() { return 'AccountCallCallRecording(accountSid: $accountSid, apiVersion: $apiVersion, callSid: $callSid, conferenceSid: $conferenceSid, dateCreated: $dateCreated, dateUpdated: $dateUpdated, startTime: $startTime, duration: $duration, sid: $sid, price: $price, uri: $uri, encryptionDetails: $encryptionDetails, priceUnit: $priceUnit, status: $status, channels: $channels, source: $source, errorCode: $errorCode, track: $track)'; } 
 }
