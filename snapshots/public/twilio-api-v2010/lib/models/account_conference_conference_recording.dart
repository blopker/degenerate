// GENERATED CODE - DO NOT MODIFY BY HAND

import 'conference_recording_enum_status.dart';/// How the recording was created. Can be: `DialVerb`, `Conference`, `OutboundAPI`, `Trunking`, `RecordVerb`, `StartCallRecordingAPI`, `StartConferenceRecordingAPI`.
final class ConferenceRecordingEnumSource {const ConferenceRecordingEnumSource._(this.value);

factory ConferenceRecordingEnumSource.fromJson(String json) { return switch (json) {
  'DialVerb' => dialVerb,
  'Conference' => conference,
  'OutboundAPI' => outboundApi,
  'Trunking' => trunking,
  'RecordVerb' => recordVerb,
  'StartCallRecordingAPI' => startCallRecordingApi,
  'StartConferenceRecordingAPI' => startConferenceRecordingApi,
  _ => ConferenceRecordingEnumSource._(json),
}; }

static const ConferenceRecordingEnumSource dialVerb = ConferenceRecordingEnumSource._('DialVerb');

static const ConferenceRecordingEnumSource conference = ConferenceRecordingEnumSource._('Conference');

static const ConferenceRecordingEnumSource outboundApi = ConferenceRecordingEnumSource._('OutboundAPI');

static const ConferenceRecordingEnumSource trunking = ConferenceRecordingEnumSource._('Trunking');

static const ConferenceRecordingEnumSource recordVerb = ConferenceRecordingEnumSource._('RecordVerb');

static const ConferenceRecordingEnumSource startCallRecordingApi = ConferenceRecordingEnumSource._('StartCallRecordingAPI');

static const ConferenceRecordingEnumSource startConferenceRecordingApi = ConferenceRecordingEnumSource._('StartConferenceRecordingAPI');

static const List<ConferenceRecordingEnumSource> values = [dialVerb, conference, outboundApi, trunking, recordVerb, startCallRecordingApi, startConferenceRecordingApi];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ConferenceRecordingEnumSource && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ConferenceRecordingEnumSource($value)'; } 
 }
final class AccountConferenceConferenceRecording {const AccountConferenceConferenceRecording({this.accountSid, this.apiVersion, this.callSid, this.conferenceSid, this.dateCreated, this.dateUpdated, this.startTime, this.duration, this.sid, this.price, this.priceUnit, this.status, this.channels = 0, this.source, this.errorCode, this.encryptionDetails, this.uri, });

factory AccountConferenceConferenceRecording.fromJson(Map<String, dynamic> json) { return AccountConferenceConferenceRecording(
  accountSid: json['account_sid'] as String?,
  apiVersion: json['api_version'] as String?,
  callSid: json['call_sid'] as String?,
  conferenceSid: json['conference_sid'] as String?,
  dateCreated: json['date_created'] as String?,
  dateUpdated: json['date_updated'] as String?,
  startTime: json['start_time'] as String?,
  duration: json['duration'] as String?,
  sid: json['sid'] as String?,
  price: json['price'] as String?,
  priceUnit: json['price_unit'] as String?,
  status: json['status'] != null ? ConferenceRecordingEnumStatus.fromJson(json['status'] as String) : null,
  channels: json.containsKey('channels') ? (json['channels'] as num).toInt() : 0,
  source: json['source'] != null ? ConferenceRecordingEnumSource.fromJson(json['source'] as String) : null,
  errorCode: json['error_code'] != null ? (json['error_code'] as num).toInt() : null,
  encryptionDetails: json['encryption_details'],
  uri: json['uri'] as String?,
); }

/// The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Conference Recording resource.
final String? accountSid;

/// The API version used to create the recording.
final String? apiVersion;

/// The SID of the [Call](https://www.twilio.com/docs/voice/api/call-resource) the Conference Recording resource is associated with.
final String? callSid;

/// The Conference SID that identifies the conference associated with the recording.
final String? conferenceSid;

/// The date and time in GMT that the resource was created specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final String? dateCreated;

/// The date and time in GMT that the resource was last updated, specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final String? dateUpdated;

/// The start time of the recording in GMT and in [RFC 2822](https://www.php.net/manual/en/class.datetime.php#datetime.constants.rfc2822) format.
final String? startTime;

/// The length of the recording in seconds.
final String? duration;

/// The unique string that that we created to identify the Conference Recording resource.
final String? sid;

/// The one-time cost of creating the recording in the `price_unit` currency.
final String? price;

/// The currency used in the `price` property. Example: `USD`.
final String? priceUnit;

final ConferenceRecordingEnumStatus? status;

/// The number of channels in the final recording file.  Can be: `1`, or `2`. Separating a two leg call into two separate channels of the recording file is supported in [Dial](https://www.twilio.com/docs/voice/twiml/dial#attributes-record) and [Outbound Rest API](https://www.twilio.com/docs/voice/make-calls) record options.
final int channels;

final ConferenceRecordingEnumSource? source;

/// The error code that describes why the recording is `absent`. The error code is described in our [Error Dictionary](https://www.twilio.com/docs/api/errors). This value is null if the recording `status` is not `absent`.
final int? errorCode;

/// How to decrypt the recording if it was encrypted using [Call Recording Encryption](https://www.twilio.com/docs/voice/tutorials/voice-recording-encryption) feature.
final dynamic encryptionDetails;

/// The URI of the resource, relative to `https://api.twilio.com`.
final String? uri;

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
  'price_unit': ?priceUnit,
  if (status != null) 'status': status?.toJson(),
  'channels': channels,
  if (source != null) 'source': source?.toJson(),
  'error_code': ?errorCode,
  'encryption_details': ?encryptionDetails,
  'uri': ?uri,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
AccountConferenceConferenceRecording copyWith({String? Function()? accountSid, String? Function()? apiVersion, String? Function()? callSid, String? Function()? conferenceSid, String? Function()? dateCreated, String? Function()? dateUpdated, String? Function()? startTime, String? Function()? duration, String? Function()? sid, String? Function()? price, String? Function()? priceUnit, ConferenceRecordingEnumStatus Function()? status, int Function()? channels, ConferenceRecordingEnumSource Function()? source, int? Function()? errorCode, dynamic Function()? encryptionDetails, String? Function()? uri, }) { return AccountConferenceConferenceRecording(
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
  priceUnit: priceUnit != null ? priceUnit() : this.priceUnit,
  status: status != null ? status() : this.status,
  channels: channels != null ? channels() : this.channels,
  source: source != null ? source() : this.source,
  errorCode: errorCode != null ? errorCode() : this.errorCode,
  encryptionDetails: encryptionDetails != null ? encryptionDetails() : this.encryptionDetails,
  uri: uri != null ? uri() : this.uri,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountConferenceConferenceRecording &&
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
          priceUnit == other.priceUnit &&
          status == other.status &&
          channels == other.channels &&
          source == other.source &&
          errorCode == other.errorCode &&
          encryptionDetails == other.encryptionDetails &&
          uri == other.uri; } 
@override int get hashCode { return Object.hash(accountSid, apiVersion, callSid, conferenceSid, dateCreated, dateUpdated, startTime, duration, sid, price, priceUnit, status, channels, source, errorCode, encryptionDetails, uri); } 
@override String toString() { return 'AccountConferenceConferenceRecording(accountSid: $accountSid, apiVersion: $apiVersion, callSid: $callSid, conferenceSid: $conferenceSid, dateCreated: $dateCreated, dateUpdated: $dateUpdated, startTime: $startTime, duration: $duration, sid: $sid, price: $price, priceUnit: $priceUnit, status: $status, channels: $channels, source: $source, errorCode: $errorCode, encryptionDetails: $encryptionDetails, uri: $uri)'; } 
 }
