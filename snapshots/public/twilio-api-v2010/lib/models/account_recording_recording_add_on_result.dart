// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The status of the result. Can be: `canceled`, `completed`, `deleted`, `failed`, `in-progress`, `init`, `processing`, `queued`.
@immutable final class RecordingAddOnResultEnumStatus {const RecordingAddOnResultEnumStatus._(this.value);

factory RecordingAddOnResultEnumStatus.fromJson(String json) { return switch (json) {
  'canceled' => canceled,
  'completed' => completed,
  'deleted' => deleted,
  'failed' => failed,
  'in-progress' => inProgress,
  'init' => init,
  'processing' => processing,
  'queued' => queued,
  _ => RecordingAddOnResultEnumStatus._(json),
}; }

static const RecordingAddOnResultEnumStatus canceled = RecordingAddOnResultEnumStatus._('canceled');

static const RecordingAddOnResultEnumStatus completed = RecordingAddOnResultEnumStatus._('completed');

static const RecordingAddOnResultEnumStatus deleted = RecordingAddOnResultEnumStatus._('deleted');

static const RecordingAddOnResultEnumStatus failed = RecordingAddOnResultEnumStatus._('failed');

static const RecordingAddOnResultEnumStatus inProgress = RecordingAddOnResultEnumStatus._('in-progress');

static const RecordingAddOnResultEnumStatus init = RecordingAddOnResultEnumStatus._('init');

static const RecordingAddOnResultEnumStatus processing = RecordingAddOnResultEnumStatus._('processing');

static const RecordingAddOnResultEnumStatus queued = RecordingAddOnResultEnumStatus._('queued');

static const List<RecordingAddOnResultEnumStatus> values = [canceled, completed, deleted, failed, inProgress, init, processing, queued];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RecordingAddOnResultEnumStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RecordingAddOnResultEnumStatus($value)'; } 
 }
@immutable final class AccountRecordingRecordingAddOnResult {const AccountRecordingRecordingAddOnResult({this.sid = const Omittable.absent(), this.accountSid = const Omittable.absent(), this.status, this.addOnSid = const Omittable.absent(), this.addOnConfigurationSid = const Omittable.absent(), this.dateCreated = const Omittable.absent(), this.dateUpdated = const Omittable.absent(), this.dateCompleted = const Omittable.absent(), this.referenceSid = const Omittable.absent(), this.subresourceUris = const Omittable.absent(), });

factory AccountRecordingRecordingAddOnResult.fromJson(Map<String, dynamic> json) { return AccountRecordingRecordingAddOnResult(
  sid: json.containsKey('sid') ? Omittable(json['sid'] as String?) : const Omittable.absent(),
  accountSid: json.containsKey('account_sid') ? Omittable(json['account_sid'] as String?) : const Omittable.absent(),
  status: json['status'] != null ? RecordingAddOnResultEnumStatus.fromJson(json['status'] as String) : null,
  addOnSid: json.containsKey('add_on_sid') ? Omittable(json['add_on_sid'] as String?) : const Omittable.absent(),
  addOnConfigurationSid: json.containsKey('add_on_configuration_sid') ? Omittable(json['add_on_configuration_sid'] as String?) : const Omittable.absent(),
  dateCreated: json.containsKey('date_created') ? Omittable(json['date_created'] as String?) : const Omittable.absent(),
  dateUpdated: json.containsKey('date_updated') ? Omittable(json['date_updated'] as String?) : const Omittable.absent(),
  dateCompleted: json.containsKey('date_completed') ? Omittable(json['date_completed'] as String?) : const Omittable.absent(),
  referenceSid: json.containsKey('reference_sid') ? Omittable(json['reference_sid'] as String?) : const Omittable.absent(),
  subresourceUris: json.containsKey('subresource_uris') ? Omittable(json['subresource_uris'] as Map<String, dynamic>?) : const Omittable.absent(),
); }

/// The unique string that that we created to identify the Recording AddOnResult resource.
final Omittable<String?> sid;

/// The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Recording AddOnResult resource.
final Omittable<String?> accountSid;

final RecordingAddOnResultEnumStatus? status;

/// The SID of the Add-on to which the result belongs.
final Omittable<String?> addOnSid;

/// The SID of the Add-on configuration.
final Omittable<String?> addOnConfigurationSid;

/// The date and time in GMT that the resource was created specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final Omittable<String?> dateCreated;

/// The date and time in GMT that the resource was last updated specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final Omittable<String?> dateUpdated;

/// The date and time in GMT that the result was completed specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final Omittable<String?> dateCompleted;

/// The SID of the recording to which the AddOnResult resource belongs.
final Omittable<String?> referenceSid;

/// A list of related resources identified by their relative URIs.
final Omittable<Map<String,dynamic>?> subresourceUris;

Map<String, dynamic> toJson() { return {
  if (sid.isPresent) 'sid': sid.value,
  if (accountSid.isPresent) 'account_sid': accountSid.value,
  if (status != null) 'status': status?.toJson(),
  if (addOnSid.isPresent) 'add_on_sid': addOnSid.value,
  if (addOnConfigurationSid.isPresent) 'add_on_configuration_sid': addOnConfigurationSid.value,
  if (dateCreated.isPresent) 'date_created': dateCreated.value,
  if (dateUpdated.isPresent) 'date_updated': dateUpdated.value,
  if (dateCompleted.isPresent) 'date_completed': dateCompleted.value,
  if (referenceSid.isPresent) 'reference_sid': referenceSid.value,
  if (subresourceUris.isPresent) 'subresource_uris': subresourceUris.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'sid', 'account_sid', 'status', 'add_on_sid', 'add_on_configuration_sid', 'date_created', 'date_updated', 'date_completed', 'reference_sid', 'subresource_uris'}.contains(key)); } 
AccountRecordingRecordingAddOnResult copyWith({Omittable<String?>? sid, Omittable<String?>? accountSid, RecordingAddOnResultEnumStatus? Function()? status, Omittable<String?>? addOnSid, Omittable<String?>? addOnConfigurationSid, Omittable<String?>? dateCreated, Omittable<String?>? dateUpdated, Omittable<String?>? dateCompleted, Omittable<String?>? referenceSid, Omittable<Map<String,dynamic>?>? subresourceUris, }) { return AccountRecordingRecordingAddOnResult(
  sid: sid ?? this.sid,
  accountSid: accountSid ?? this.accountSid,
  status: status != null ? status() : this.status,
  addOnSid: addOnSid ?? this.addOnSid,
  addOnConfigurationSid: addOnConfigurationSid ?? this.addOnConfigurationSid,
  dateCreated: dateCreated ?? this.dateCreated,
  dateUpdated: dateUpdated ?? this.dateUpdated,
  dateCompleted: dateCompleted ?? this.dateCompleted,
  referenceSid: referenceSid ?? this.referenceSid,
  subresourceUris: subresourceUris ?? this.subresourceUris,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountRecordingRecordingAddOnResult &&
          sid == other.sid &&
          accountSid == other.accountSid &&
          status == other.status &&
          addOnSid == other.addOnSid &&
          addOnConfigurationSid == other.addOnConfigurationSid &&
          dateCreated == other.dateCreated &&
          dateUpdated == other.dateUpdated &&
          dateCompleted == other.dateCompleted &&
          referenceSid == other.referenceSid &&
          subresourceUris == other.subresourceUris; } 
@override int get hashCode { return Object.hash(sid, accountSid, status, addOnSid, addOnConfigurationSid, dateCreated, dateUpdated, dateCompleted, referenceSid, subresourceUris); } 
@override String toString() { return 'AccountRecordingRecordingAddOnResult(sid: $sid, accountSid: $accountSid, status: $status, addOnSid: $addOnSid, addOnConfigurationSid: $addOnConfigurationSid, dateCreated: $dateCreated, dateUpdated: $dateUpdated, dateCompleted: $dateCompleted, referenceSid: $referenceSid, subresourceUris: $subresourceUris)'; } 
 }
