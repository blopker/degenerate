// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The status of the transcription. Can be: `in-progress`, `completed`, `failed`.
@immutable final class RecordingTranscriptionEnumStatus {const RecordingTranscriptionEnumStatus._(this.value);

factory RecordingTranscriptionEnumStatus.fromJson(String json) { return switch (json) {
  'in-progress' => inProgress,
  'completed' => completed,
  'failed' => failed,
  _ => RecordingTranscriptionEnumStatus._(json),
}; }

static const RecordingTranscriptionEnumStatus inProgress = RecordingTranscriptionEnumStatus._('in-progress');

static const RecordingTranscriptionEnumStatus completed = RecordingTranscriptionEnumStatus._('completed');

static const RecordingTranscriptionEnumStatus failed = RecordingTranscriptionEnumStatus._('failed');

static const List<RecordingTranscriptionEnumStatus> values = [inProgress, completed, failed];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RecordingTranscriptionEnumStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RecordingTranscriptionEnumStatus($value)'; } 
 }
@immutable final class AccountRecordingRecordingTranscription {const AccountRecordingRecordingTranscription({this.accountSid = const Omittable.absent(), this.apiVersion = const Omittable.absent(), this.dateCreated = const Omittable.absent(), this.dateUpdated = const Omittable.absent(), this.duration = const Omittable.absent(), this.price = const Omittable.absent(), this.priceUnit = const Omittable.absent(), this.recordingSid = const Omittable.absent(), this.sid = const Omittable.absent(), this.status, this.transcriptionText = const Omittable.absent(), this.type = const Omittable.absent(), this.uri = const Omittable.absent(), });

factory AccountRecordingRecordingTranscription.fromJson(Map<String, dynamic> json) { return AccountRecordingRecordingTranscription(
  accountSid: json.containsKey('account_sid') ? Omittable(json['account_sid'] as String?) : const Omittable.absent(),
  apiVersion: json.containsKey('api_version') ? Omittable(json['api_version'] as String?) : const Omittable.absent(),
  dateCreated: json.containsKey('date_created') ? Omittable(json['date_created'] as String?) : const Omittable.absent(),
  dateUpdated: json.containsKey('date_updated') ? Omittable(json['date_updated'] as String?) : const Omittable.absent(),
  duration: json.containsKey('duration') ? Omittable(json['duration'] as String?) : const Omittable.absent(),
  price: json.containsKey('price') ? Omittable(json['price'] != null ? (json['price'] as num).toDouble() : null) : const Omittable.absent(),
  priceUnit: json.containsKey('price_unit') ? Omittable(json['price_unit'] as String?) : const Omittable.absent(),
  recordingSid: json.containsKey('recording_sid') ? Omittable(json['recording_sid'] as String?) : const Omittable.absent(),
  sid: json.containsKey('sid') ? Omittable(json['sid'] as String?) : const Omittable.absent(),
  status: json['status'] != null ? RecordingTranscriptionEnumStatus.fromJson(json['status'] as String) : null,
  transcriptionText: json.containsKey('transcription_text') ? Omittable(json['transcription_text'] as String?) : const Omittable.absent(),
  type: json.containsKey('type') ? Omittable(json['type'] as String?) : const Omittable.absent(),
  uri: json.containsKey('uri') ? Omittable(json['uri'] as String?) : const Omittable.absent(),
); }

/// The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Transcription resource.
final Omittable<String?> accountSid;

/// The API version used to create the transcription.
final Omittable<String?> apiVersion;

/// The date and time in GMT that the resource was created specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final Omittable<String?> dateCreated;

/// The date and time in GMT that the resource was last updated specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final Omittable<String?> dateUpdated;

/// The duration of the transcribed audio in seconds.
final Omittable<String?> duration;

/// The charge for the transcript in the currency associated with the account. This value is populated after the transcript is complete so it may not be available immediately.
final Omittable<double?> price;

/// The currency in which `price` is measured, in [ISO 4127](https://www.iso.org/iso/home/standards/currency_codes.htm) format (e.g. `usd`, `eur`, `jpy`).
final Omittable<String?> priceUnit;

/// The SID of the [Recording](https://www.twilio.com/docs/voice/api/recording) from which the transcription was created.
final Omittable<String?> recordingSid;

/// The unique string that that we created to identify the Transcription resource.
final Omittable<String?> sid;

final RecordingTranscriptionEnumStatus? status;

/// The text content of the transcription.
final Omittable<String?> transcriptionText;

/// The transcription type.
final Omittable<String?> type;

/// The URI of the resource, relative to `https://api.twilio.com`.
final Omittable<String?> uri;

Map<String, dynamic> toJson() { return {
  if (accountSid.isPresent) 'account_sid': accountSid.value,
  if (apiVersion.isPresent) 'api_version': apiVersion.value,
  if (dateCreated.isPresent) 'date_created': dateCreated.value,
  if (dateUpdated.isPresent) 'date_updated': dateUpdated.value,
  if (duration.isPresent) 'duration': duration.value,
  if (price.isPresent) 'price': price.value,
  if (priceUnit.isPresent) 'price_unit': priceUnit.value,
  if (recordingSid.isPresent) 'recording_sid': recordingSid.value,
  if (sid.isPresent) 'sid': sid.value,
  if (status != null) 'status': status?.toJson(),
  if (transcriptionText.isPresent) 'transcription_text': transcriptionText.value,
  if (type.isPresent) 'type': type.value,
  if (uri.isPresent) 'uri': uri.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_sid', 'api_version', 'date_created', 'date_updated', 'duration', 'price', 'price_unit', 'recording_sid', 'sid', 'status', 'transcription_text', 'type', 'uri'}.contains(key)); } 
AccountRecordingRecordingTranscription copyWith({Omittable<String?>? accountSid, Omittable<String?>? apiVersion, Omittable<String?>? dateCreated, Omittable<String?>? dateUpdated, Omittable<String?>? duration, Omittable<double?>? price, Omittable<String?>? priceUnit, Omittable<String?>? recordingSid, Omittable<String?>? sid, RecordingTranscriptionEnumStatus? Function()? status, Omittable<String?>? transcriptionText, Omittable<String?>? type, Omittable<String?>? uri, }) { return AccountRecordingRecordingTranscription(
  accountSid: accountSid ?? this.accountSid,
  apiVersion: apiVersion ?? this.apiVersion,
  dateCreated: dateCreated ?? this.dateCreated,
  dateUpdated: dateUpdated ?? this.dateUpdated,
  duration: duration ?? this.duration,
  price: price ?? this.price,
  priceUnit: priceUnit ?? this.priceUnit,
  recordingSid: recordingSid ?? this.recordingSid,
  sid: sid ?? this.sid,
  status: status != null ? status() : this.status,
  transcriptionText: transcriptionText ?? this.transcriptionText,
  type: type ?? this.type,
  uri: uri ?? this.uri,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountRecordingRecordingTranscription &&
          accountSid == other.accountSid &&
          apiVersion == other.apiVersion &&
          dateCreated == other.dateCreated &&
          dateUpdated == other.dateUpdated &&
          duration == other.duration &&
          price == other.price &&
          priceUnit == other.priceUnit &&
          recordingSid == other.recordingSid &&
          sid == other.sid &&
          status == other.status &&
          transcriptionText == other.transcriptionText &&
          type == other.type &&
          uri == other.uri; } 
@override int get hashCode { return Object.hash(accountSid, apiVersion, dateCreated, dateUpdated, duration, price, priceUnit, recordingSid, sid, status, transcriptionText, type, uri); } 
@override String toString() { return 'AccountRecordingRecordingTranscription(accountSid: $accountSid, apiVersion: $apiVersion, dateCreated: $dateCreated, dateUpdated: $dateUpdated, duration: $duration, price: $price, priceUnit: $priceUnit, recordingSid: $recordingSid, sid: $sid, status: $status, transcriptionText: $transcriptionText, type: $type, uri: $uri)'; } 
 }
