// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The status of the recording. Can be: `processing`, `completed`, `absent` or `deleted`. For information about more detailed statuses on in-progress recordings, check out how to [Update a Recording Resource](https://www.twilio.com/docs/voice/api/recording#update-a-recording-resource).
@immutable final class RecordingEnumStatus {const RecordingEnumStatus._(this.value);

factory RecordingEnumStatus.fromJson(String json) { return switch (json) {
  'in-progress' => inProgress,
  'paused' => paused,
  'stopped' => stopped,
  'processing' => processing,
  'completed' => completed,
  'absent' => absent,
  'deleted' => deleted,
  _ => RecordingEnumStatus._(json),
}; }

static const RecordingEnumStatus inProgress = RecordingEnumStatus._('in-progress');

static const RecordingEnumStatus paused = RecordingEnumStatus._('paused');

static const RecordingEnumStatus stopped = RecordingEnumStatus._('stopped');

static const RecordingEnumStatus processing = RecordingEnumStatus._('processing');

static const RecordingEnumStatus completed = RecordingEnumStatus._('completed');

static const RecordingEnumStatus absent = RecordingEnumStatus._('absent');

static const RecordingEnumStatus deleted = RecordingEnumStatus._('deleted');

static const List<RecordingEnumStatus> values = [inProgress, paused, stopped, processing, completed, absent, deleted];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RecordingEnumStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RecordingEnumStatus($value)'; } 
 }
/// How the recording was created. Can be: `DialVerb`, `Conference`, `OutboundAPI`, `Trunking`, `RecordVerb`, `StartCallRecordingAPI`, and `StartConferenceRecordingAPI`.
@immutable final class RecordingEnumSource {const RecordingEnumSource._(this.value);

factory RecordingEnumSource.fromJson(String json) { return switch (json) {
  'DialVerb' => dialVerb,
  'Conference' => conference,
  'OutboundAPI' => outboundApi,
  'Trunking' => trunking,
  'RecordVerb' => recordVerb,
  'StartCallRecordingAPI' => startCallRecordingApi,
  'StartConferenceRecordingAPI' => startConferenceRecordingApi,
  _ => RecordingEnumSource._(json),
}; }

static const RecordingEnumSource dialVerb = RecordingEnumSource._('DialVerb');

static const RecordingEnumSource conference = RecordingEnumSource._('Conference');

static const RecordingEnumSource outboundApi = RecordingEnumSource._('OutboundAPI');

static const RecordingEnumSource trunking = RecordingEnumSource._('Trunking');

static const RecordingEnumSource recordVerb = RecordingEnumSource._('RecordVerb');

static const RecordingEnumSource startCallRecordingApi = RecordingEnumSource._('StartCallRecordingAPI');

static const RecordingEnumSource startConferenceRecordingApi = RecordingEnumSource._('StartConferenceRecordingAPI');

static const List<RecordingEnumSource> values = [dialVerb, conference, outboundApi, trunking, recordVerb, startCallRecordingApi, startConferenceRecordingApi];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RecordingEnumSource && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RecordingEnumSource($value)'; } 
 }
@immutable final class AccountRecording {const AccountRecording({this.accountSid = const Omittable.absent(), this.apiVersion = const Omittable.absent(), this.callSid = const Omittable.absent(), this.conferenceSid = const Omittable.absent(), this.dateCreated = const Omittable.absent(), this.dateUpdated = const Omittable.absent(), this.startTime = const Omittable.absent(), this.duration = const Omittable.absent(), this.sid = const Omittable.absent(), this.price = const Omittable.absent(), this.priceUnit = const Omittable.absent(), this.status, this.channels = const Omittable.absent(), this.source, this.errorCode = const Omittable.absent(), this.uri = const Omittable.absent(), this.encryptionDetails = const Omittable.absent(), this.subresourceUris = const Omittable.absent(), this.mediaUrl = const Omittable.absent(), });

factory AccountRecording.fromJson(Map<String, dynamic> json) { return AccountRecording(
  accountSid: json.containsKey('account_sid') ? Omittable(json['account_sid'] as String?) : const Omittable.absent(),
  apiVersion: json.containsKey('api_version') ? Omittable(json['api_version'] as String?) : const Omittable.absent(),
  callSid: json.containsKey('call_sid') ? Omittable(json['call_sid'] as String?) : const Omittable.absent(),
  conferenceSid: json.containsKey('conference_sid') ? Omittable(json['conference_sid'] as String?) : const Omittable.absent(),
  dateCreated: json.containsKey('date_created') ? Omittable(json['date_created'] as String?) : const Omittable.absent(),
  dateUpdated: json.containsKey('date_updated') ? Omittable(json['date_updated'] as String?) : const Omittable.absent(),
  startTime: json.containsKey('start_time') ? Omittable(json['start_time'] as String?) : const Omittable.absent(),
  duration: json.containsKey('duration') ? Omittable(json['duration'] as String?) : const Omittable.absent(),
  sid: json.containsKey('sid') ? Omittable(json['sid'] as String?) : const Omittable.absent(),
  price: json.containsKey('price') ? Omittable(json['price'] as String?) : const Omittable.absent(),
  priceUnit: json.containsKey('price_unit') ? Omittable(json['price_unit'] as String?) : const Omittable.absent(),
  status: json['status'] != null ? RecordingEnumStatus.fromJson(json['status'] as String) : null,
  channels: json.containsKey('channels') ? Omittable(json['channels'] != null ? (json['channels'] as num).toInt() : null) : const Omittable.absent(),
  source: json['source'] != null ? RecordingEnumSource.fromJson(json['source'] as String) : null,
  errorCode: json.containsKey('error_code') ? Omittable(json['error_code'] != null ? (json['error_code'] as num).toInt() : null) : const Omittable.absent(),
  uri: json.containsKey('uri') ? Omittable(json['uri'] as String?) : const Omittable.absent(),
  encryptionDetails: json.containsKey('encryption_details') ? Omittable(json['encryption_details']) : const Omittable.absent(),
  subresourceUris: json.containsKey('subresource_uris') ? Omittable(json['subresource_uris'] as Map<String, dynamic>?) : const Omittable.absent(),
  mediaUrl: json.containsKey('media_url') ? Omittable(json['media_url'] != null ? Uri.parse(json['media_url'] as String) : null) : const Omittable.absent(),
); }

/// The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Recording resource.
final Omittable<String?> accountSid;

/// The API version used during the recording.
final Omittable<String?> apiVersion;

/// The SID of the [Call](https://www.twilio.com/docs/voice/api/call-resource) the Recording resource is associated with. This will always refer to the parent leg of a two-leg call.
final Omittable<String?> callSid;

/// The Conference SID that identifies the conference associated with the recording, if a conference recording.
final Omittable<String?> conferenceSid;

/// The date and time in GMT that the resource was created specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final Omittable<String?> dateCreated;

/// The date and time in GMT that the resource was last updated specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final Omittable<String?> dateUpdated;

/// The start time of the recording in GMT and in [RFC 2822](https://www.php.net/manual/en/class.datetime.php#datetime.constants.rfc2822) format.
final Omittable<String?> startTime;

/// The length of the recording in seconds.
final Omittable<String?> duration;

/// The unique string that that we created to identify the Recording resource.
final Omittable<String?> sid;

/// The one-time cost of creating the recording in the `price_unit` currency.
final Omittable<String?> price;

/// The currency used in the `price` property. Example: `USD`.
final Omittable<String?> priceUnit;

final RecordingEnumStatus? status;

/// The number of channels in the recording resource. For information on specifying the number of channels in the downloaded recording file, check out [Fetch a Recording’s media file](https://www.twilio.com/docs/voice/api/recording#download-dual-channel-media-file).
final Omittable<int?> channels;

final RecordingEnumSource? source;

/// The error code that describes why the recording is `absent`. The error code is described in our [Error Dictionary](https://www.twilio.com/docs/api/errors). This value is null if the recording `status` is not `absent`.
final Omittable<int?> errorCode;

/// The URI of the resource, relative to `https://api.twilio.com`.
final Omittable<String?> uri;

/// How to decrypt the recording if it was encrypted using [Call Recording Encryption](https://www.twilio.com/docs/voice/tutorials/voice-recording-encryption) feature.
final Omittable<dynamic> encryptionDetails;

/// A list of related resources identified by their relative URIs.
final Omittable<Map<String,dynamic>?> subresourceUris;

/// The URL of the media file associated with this recording resource. When stored externally, this is the full URL location of the media file.
final Omittable<Uri?> mediaUrl;

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
  if (priceUnit.isPresent) 'price_unit': priceUnit.value,
  if (status != null) 'status': status?.toJson(),
  if (channels.isPresent) 'channels': channels.value,
  if (source != null) 'source': source?.toJson(),
  if (errorCode.isPresent) 'error_code': errorCode.value,
  if (uri.isPresent) 'uri': uri.value,
  if (encryptionDetails.isPresent) 'encryption_details': encryptionDetails.value,
  if (subresourceUris.isPresent) 'subresource_uris': subresourceUris.value,
  if (mediaUrl.isPresent) 'media_url': mediaUrl.value?.toString(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_sid', 'api_version', 'call_sid', 'conference_sid', 'date_created', 'date_updated', 'start_time', 'duration', 'sid', 'price', 'price_unit', 'status', 'channels', 'source', 'error_code', 'uri', 'encryption_details', 'subresource_uris', 'media_url'}.contains(key)); } 
AccountRecording copyWith({Omittable<String?>? accountSid, Omittable<String?>? apiVersion, Omittable<String?>? callSid, Omittable<String?>? conferenceSid, Omittable<String?>? dateCreated, Omittable<String?>? dateUpdated, Omittable<String?>? startTime, Omittable<String?>? duration, Omittable<String?>? sid, Omittable<String?>? price, Omittable<String?>? priceUnit, RecordingEnumStatus? Function()? status, Omittable<int?>? channels, RecordingEnumSource? Function()? source, Omittable<int?>? errorCode, Omittable<String?>? uri, Omittable<dynamic>? encryptionDetails, Omittable<Map<String,dynamic>?>? subresourceUris, Omittable<Uri?>? mediaUrl, }) { return AccountRecording(
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
  priceUnit: priceUnit ?? this.priceUnit,
  status: status != null ? status() : this.status,
  channels: channels ?? this.channels,
  source: source != null ? source() : this.source,
  errorCode: errorCode ?? this.errorCode,
  uri: uri ?? this.uri,
  encryptionDetails: encryptionDetails ?? this.encryptionDetails,
  subresourceUris: subresourceUris ?? this.subresourceUris,
  mediaUrl: mediaUrl ?? this.mediaUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountRecording &&
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
          uri == other.uri &&
          encryptionDetails == other.encryptionDetails &&
          subresourceUris == other.subresourceUris &&
          mediaUrl == other.mediaUrl; } 
@override int get hashCode { return Object.hash(accountSid, apiVersion, callSid, conferenceSid, dateCreated, dateUpdated, startTime, duration, sid, price, priceUnit, status, channels, source, errorCode, uri, encryptionDetails, subresourceUris, mediaUrl); } 
@override String toString() { return 'AccountRecording(accountSid: $accountSid, apiVersion: $apiVersion, callSid: $callSid, conferenceSid: $conferenceSid, dateCreated: $dateCreated, dateUpdated: $dateUpdated, startTime: $startTime, duration: $duration, sid: $sid, price: $price, priceUnit: $priceUnit, status: $status, channels: $channels, source: $source, errorCode: $errorCode, uri: $uri, encryptionDetails: $encryptionDetails, subresourceUris: $subresourceUris, mediaUrl: $mediaUrl)'; } 
 }
