// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'message_feedback_enum_outcome.dart';@immutable final class AccountMessageMessageFeedback {const AccountMessageMessageFeedback({this.accountSid = const Omittable.absent(), this.messageSid = const Omittable.absent(), this.outcome, this.dateCreated = const Omittable.absent(), this.dateUpdated = const Omittable.absent(), this.uri = const Omittable.absent(), });

factory AccountMessageMessageFeedback.fromJson(Map<String, dynamic> json) { return AccountMessageMessageFeedback(
  accountSid: json.containsKey('account_sid') ? Omittable(json['account_sid'] as String?) : const Omittable.absent(),
  messageSid: json.containsKey('message_sid') ? Omittable(json['message_sid'] as String?) : const Omittable.absent(),
  outcome: json['outcome'] != null ? MessageFeedbackEnumOutcome.fromJson(json['outcome'] as String) : null,
  dateCreated: json.containsKey('date_created') ? Omittable(json['date_created'] as String?) : const Omittable.absent(),
  dateUpdated: json.containsKey('date_updated') ? Omittable(json['date_updated'] as String?) : const Omittable.absent(),
  uri: json.containsKey('uri') ? Omittable(json['uri'] as String?) : const Omittable.absent(),
); }

/// The SID of the [Account](https://www.twilio.com/docs/iam/api/account) associated with this MessageFeedback resource.
final Omittable<String?> accountSid;

/// The SID of the Message resource associated with this MessageFeedback resource.
final Omittable<String?> messageSid;

final MessageFeedbackEnumOutcome? outcome;

/// The date and time in GMT when this MessageFeedback resource was created, specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final Omittable<String?> dateCreated;

/// The date and time in GMT when this MessageFeedback resource was last updated, specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final Omittable<String?> dateUpdated;

/// The URI of the resource, relative to `https://api.twilio.com`.
final Omittable<String?> uri;

Map<String, dynamic> toJson() { return {
  if (accountSid.isPresent) 'account_sid': accountSid.value,
  if (messageSid.isPresent) 'message_sid': messageSid.value,
  if (outcome != null) 'outcome': outcome?.toJson(),
  if (dateCreated.isPresent) 'date_created': dateCreated.value,
  if (dateUpdated.isPresent) 'date_updated': dateUpdated.value,
  if (uri.isPresent) 'uri': uri.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_sid', 'message_sid', 'outcome', 'date_created', 'date_updated', 'uri'}.contains(key)); } 
AccountMessageMessageFeedback copyWith({Omittable<String?>? accountSid, Omittable<String?>? messageSid, MessageFeedbackEnumOutcome? Function()? outcome, Omittable<String?>? dateCreated, Omittable<String?>? dateUpdated, Omittable<String?>? uri, }) { return AccountMessageMessageFeedback(
  accountSid: accountSid ?? this.accountSid,
  messageSid: messageSid ?? this.messageSid,
  outcome: outcome != null ? outcome() : this.outcome,
  dateCreated: dateCreated ?? this.dateCreated,
  dateUpdated: dateUpdated ?? this.dateUpdated,
  uri: uri ?? this.uri,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountMessageMessageFeedback &&
          accountSid == other.accountSid &&
          messageSid == other.messageSid &&
          outcome == other.outcome &&
          dateCreated == other.dateCreated &&
          dateUpdated == other.dateUpdated &&
          uri == other.uri; } 
@override int get hashCode { return Object.hash(accountSid, messageSid, outcome, dateCreated, dateUpdated, uri); } 
@override String toString() { return 'AccountMessageMessageFeedback(accountSid: $accountSid, messageSid: $messageSid, outcome: $outcome, dateCreated: $dateCreated, dateUpdated: $dateUpdated, uri: $uri)'; } 
 }
