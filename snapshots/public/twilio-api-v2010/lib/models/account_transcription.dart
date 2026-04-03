// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The status of the transcription. Can be: `in-progress`, `completed`, `failed`.
@immutable final class TranscriptionEnumStatus {const TranscriptionEnumStatus._(this.value);

factory TranscriptionEnumStatus.fromJson(String json) { return switch (json) {
  'in-progress' => inProgress,
  'completed' => completed,
  'failed' => failed,
  _ => TranscriptionEnumStatus._(json),
}; }

static const TranscriptionEnumStatus inProgress = TranscriptionEnumStatus._('in-progress');

static const TranscriptionEnumStatus completed = TranscriptionEnumStatus._('completed');

static const TranscriptionEnumStatus failed = TranscriptionEnumStatus._('failed');

static const List<TranscriptionEnumStatus> values = [inProgress, completed, failed];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TranscriptionEnumStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TranscriptionEnumStatus($value)'; } 
 }
@immutable final class AccountTranscription {const AccountTranscription({this.accountSid, this.apiVersion, this.dateCreated, this.dateUpdated, this.duration, this.price, this.priceUnit, this.recordingSid, this.sid, this.status, this.transcriptionText, this.type, this.uri, });

factory AccountTranscription.fromJson(Map<String, dynamic> json) { return AccountTranscription(
  accountSid: json['account_sid'] as String?,
  apiVersion: json['api_version'] as String?,
  dateCreated: json['date_created'] as String?,
  dateUpdated: json['date_updated'] as String?,
  duration: json['duration'] as String?,
  price: json['price'] != null ? (json['price'] as num).toDouble() : null,
  priceUnit: json['price_unit'] as String?,
  recordingSid: json['recording_sid'] as String?,
  sid: json['sid'] as String?,
  status: json['status'] != null ? TranscriptionEnumStatus.fromJson(json['status'] as String) : null,
  transcriptionText: json['transcription_text'] as String?,
  type: json['type'] as String?,
  uri: json['uri'] as String?,
); }

/// The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Transcription resource.
final String? accountSid;

/// The API version used to create the transcription.
final String? apiVersion;

/// The date and time in GMT that the resource was created specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final String? dateCreated;

/// The date and time in GMT that the resource was last updated specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final String? dateUpdated;

/// The duration of the transcribed audio in seconds.
final String? duration;

/// The charge for the transcript in the currency associated with the account. This value is populated after the transcript is complete so it may not be available immediately.
final double? price;

/// The currency in which `price` is measured, in [ISO 4127](https://www.iso.org/iso/home/standards/currency_codes.htm) format (e.g. `usd`, `eur`, `jpy`).
final String? priceUnit;

/// The SID of the [Recording](https://www.twilio.com/docs/voice/api/recording) from which the transcription was created.
final String? recordingSid;

/// The unique string that that we created to identify the Transcription resource.
final String? sid;

final TranscriptionEnumStatus? status;

/// The text content of the transcription.
final String? transcriptionText;

/// The transcription type. Can only be: `fast`.
final String? type;

/// The URI of the resource, relative to `https://api.twilio.com`.
final String? uri;

Map<String, dynamic> toJson() { return {
  'account_sid': ?accountSid,
  'api_version': ?apiVersion,
  'date_created': ?dateCreated,
  'date_updated': ?dateUpdated,
  'duration': ?duration,
  'price': ?price,
  'price_unit': ?priceUnit,
  'recording_sid': ?recordingSid,
  'sid': ?sid,
  if (status != null) 'status': status?.toJson(),
  'transcription_text': ?transcriptionText,
  'type': ?type,
  'uri': ?uri,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_sid', 'api_version', 'date_created', 'date_updated', 'duration', 'price', 'price_unit', 'recording_sid', 'sid', 'status', 'transcription_text', 'type', 'uri'}.contains(key)); } 
AccountTranscription copyWith({String? Function()? accountSid, String? Function()? apiVersion, String? Function()? dateCreated, String? Function()? dateUpdated, String? Function()? duration, double? Function()? price, String? Function()? priceUnit, String? Function()? recordingSid, String? Function()? sid, TranscriptionEnumStatus Function()? status, String? Function()? transcriptionText, String? Function()? type, String? Function()? uri, }) { return AccountTranscription(
  accountSid: accountSid != null ? accountSid() : this.accountSid,
  apiVersion: apiVersion != null ? apiVersion() : this.apiVersion,
  dateCreated: dateCreated != null ? dateCreated() : this.dateCreated,
  dateUpdated: dateUpdated != null ? dateUpdated() : this.dateUpdated,
  duration: duration != null ? duration() : this.duration,
  price: price != null ? price() : this.price,
  priceUnit: priceUnit != null ? priceUnit() : this.priceUnit,
  recordingSid: recordingSid != null ? recordingSid() : this.recordingSid,
  sid: sid != null ? sid() : this.sid,
  status: status != null ? status() : this.status,
  transcriptionText: transcriptionText != null ? transcriptionText() : this.transcriptionText,
  type: type != null ? type() : this.type,
  uri: uri != null ? uri() : this.uri,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountTranscription &&
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
@override String toString() { return 'AccountTranscription(accountSid: $accountSid, apiVersion: $apiVersion, dateCreated: $dateCreated, dateUpdated: $dateUpdated, duration: $duration, price: $price, priceUnit: $priceUnit, recordingSid: $recordingSid, sid: $sid, status: $status, transcriptionText: $transcriptionText, type: $type, uri: $uri)'; } 
 }
