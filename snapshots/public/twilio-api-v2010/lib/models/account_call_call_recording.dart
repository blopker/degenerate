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
@immutable final class AccountCallCallRecording {const AccountCallCallRecording({this.accountSid = const Omittable.absent(), this.apiVersion = const Omittable.absent(), this.callSid = const Omittable.absent(), this.conferenceSid = const Omittable.absent(), this.dateCreated = const Omittable.absent(), this.dateUpdated = const Omittable.absent(), this.startTime = const Omittable.absent(), this.duration = const Omittable.absent(), this.sid = const Omittable.absent(), this.price = const Omittable.absent(), this.uri = const Omittable.absent(), this.encryptionDetails = const Omittable.absent(), this.priceUnit = const Omittable.absent(), this.status, this.channels = 0, this.source, this.errorCode = const Omittable.absent(), this.track = const Omittable.absent(), });

factory AccountCallCallRecording.fromJson(Map<String, dynamic> json) { return AccountCallCallRecording(
  accountSid: json.containsKey('account_sid') ? Omittable(json['account_sid'] as String?) : const Omittable.absent(),
  apiVersion: json.containsKey('api_version') ? Omittable(json['api_version'] as String?) : const Omittable.absent(),
  callSid: json.containsKey('call_sid') ? Omittable(json['call_sid'] as String?) : const Omittable.absent(),
  conferenceSid: json.containsKey('conference_sid') ? Omittable(json['conference_sid'] as String?) : const Omittable.absent(),
  dateCreated: json.containsKey('date_created') ? Omittable(json['date_created'] as String?) : const Omittable.absent(),
  dateUpdated: json.containsKey('date_updated') ? Omittable(json['date_updated'] as String?) : const Omittable.absent(),
  startTime: json.containsKey('start_time') ? Omittable(json['start_time'] as String?) : const Omittable.absent(),
  duration: json.containsKey('duration') ? Omittable(json['duration'] as String?) : const Omittable.absent(),
  sid: json.containsKey('sid') ? Omittable(json['sid'] as String?) : const Omittable.absent(),
  price: json.containsKey('price') ? Omittable(json['price'] != null ? (json['price'] as num).toDouble() : null) : const Omittable.absent(),
  uri: json.containsKey('uri') ? Omittable(json['uri'] as String?) : const Omittable.absent(),
  encryptionDetails: json.containsKey('encryption_details') ? Omittable(json['encryption_details']) : const Omittable.absent(),
  priceUnit: json.containsKey('price_unit') ? Omittable(json['price_unit'] as String?) : const Omittable.absent(),
  status: json['status'] != null ? CallRecordingEnumStatus.fromJson(json['status'] as String) : null,
  channels: json.containsKey('channels') ? (json['channels'] as num).toInt() : 0,
  source: json['source'] != null ? CallRecordingEnumSource.fromJson(json['source'] as String) : null,
  errorCode: json.containsKey('error_code') ? Omittable(json['error_code'] != null ? (json['error_code'] as num).toInt() : null) : const Omittable.absent(),
  track: json.containsKey('track') ? Omittable(json['track'] as String?) : const Omittable.absent(),
); }

/// The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Recording resource.
final Omittable<String?> accountSid;

/// The API version used to make the recording.
final Omittable<String?> apiVersion;

/// The SID of the [Call](https://www.twilio.com/docs/voice/api/call-resource) the Recording resource is associated with.
final Omittable<String?> callSid;

/// The Conference SID that identifies the conference associated with the recording, if a conference recording.
final Omittable<String?> conferenceSid;

/// The date and time in GMT that the resource was created specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final Omittable<String?> dateCreated;

/// The date and time in GMT that the resource was last updated, specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final Omittable<String?> dateUpdated;

/// The start time of the recording in GMT and in [RFC 2822](https://www.php.net/manual/en/class.datetime.php#datetime.constants.rfc2822) format.
final Omittable<String?> startTime;

/// The length of the recording in seconds.
final Omittable<String?> duration;

/// The unique string that that we created to identify the Recording resource.
final Omittable<String?> sid;

/// The one-time cost of creating the recording in the `price_unit` currency.
final Omittable<double?> price;

/// The URI of the resource, relative to `https://api.twilio.com`.
final Omittable<String?> uri;

/// How to decrypt the recording if it was encrypted using [Call Recording Encryption](https://www.twilio.com/docs/voice/tutorials/voice-recording-encryption) feature.
final Omittable<dynamic> encryptionDetails;

/// The currency used in the `price` property. Example: `USD`.
final Omittable<String?> priceUnit;

final CallRecordingEnumStatus? status;

/// The number of channels in the final recording file.  Can be: `1`, or `2`. Separating a two leg call into two separate channels of the recording file is supported in [Dial](https://www.twilio.com/docs/voice/twiml/dial#attributes-record) and [Outbound Rest API](https://www.twilio.com/docs/voice/make-calls) record options.
final int channels;

final CallRecordingEnumSource? source;

/// The error code that describes why the recording is `absent`. The error code is described in our [Error Dictionary](https://www.twilio.com/docs/api/errors). This value is null if the recording `status` is not `absent`.
final Omittable<int?> errorCode;

/// The recorded track. Can be: `inbound`, `outbound`, or `both`.
final Omittable<String?> track;

Map<String, dynamic> toJson() { return {
  if (accountSid.isPresent) 'account_sid': accountSid.value,
  if (apiVersion.isPresent) 'api_version': apiVersion.value,
  if (callSid.isPresent) 'call_sid': callSid.value,
  if (conferenceSid.isPresent) 'conference_sid': conferenceSid.value,
  if (dateCreated.isPresent) 'date_created': dateCreated.value,
  if (dateUpdated.isPresent) 'date_updated': dateUpdated.value,
  if (startTime.isPresent) 'start_time': startTime.value,
  if (duration.isPresent) 'duration': duration.value,
  if (sid.isPresent) 'sid': sid.value,
  if (price.isPresent) 'price': price.value,
  if (uri.isPresent) 'uri': uri.value,
  if (encryptionDetails.isPresent) 'encryption_details': encryptionDetails.value,
  if (priceUnit.isPresent) 'price_unit': priceUnit.value,
  if (status != null) 'status': status?.toJson(),
  'channels': channels,
  if (source != null) 'source': source?.toJson(),
  if (errorCode.isPresent) 'error_code': errorCode.value,
  if (track.isPresent) 'track': track.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_sid', 'api_version', 'call_sid', 'conference_sid', 'date_created', 'date_updated', 'start_time', 'duration', 'sid', 'price', 'uri', 'encryption_details', 'price_unit', 'status', 'channels', 'source', 'error_code', 'track'}.contains(key)); } 
AccountCallCallRecording copyWith({Omittable<String?>? accountSid, Omittable<String?>? apiVersion, Omittable<String?>? callSid, Omittable<String?>? conferenceSid, Omittable<String?>? dateCreated, Omittable<String?>? dateUpdated, Omittable<String?>? startTime, Omittable<String?>? duration, Omittable<String?>? sid, Omittable<double?>? price, Omittable<String?>? uri, Omittable<dynamic>? encryptionDetails, Omittable<String?>? priceUnit, CallRecordingEnumStatus? Function()? status, int Function()? channels, CallRecordingEnumSource? Function()? source, Omittable<int?>? errorCode, Omittable<String?>? track, }) { return AccountCallCallRecording(
  accountSid: accountSid ?? this.accountSid,
  apiVersion: apiVersion ?? this.apiVersion,
  callSid: callSid ?? this.callSid,
  conferenceSid: conferenceSid ?? this.conferenceSid,
  dateCreated: dateCreated ?? this.dateCreated,
  dateUpdated: dateUpdated ?? this.dateUpdated,
  startTime: startTime ?? this.startTime,
  duration: duration ?? this.duration,
  sid: sid ?? this.sid,
  price: price ?? this.price,
  uri: uri ?? this.uri,
  encryptionDetails: encryptionDetails ?? this.encryptionDetails,
  priceUnit: priceUnit ?? this.priceUnit,
  status: status != null ? status() : this.status,
  channels: channels != null ? channels() : this.channels,
  source: source != null ? source() : this.source,
  errorCode: errorCode ?? this.errorCode,
  track: track ?? this.track,
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
