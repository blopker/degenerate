// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AccountQueue {const AccountQueue({this.dateUpdated = const Omittable.absent(), this.currentSize = 0, this.friendlyName = const Omittable.absent(), this.uri = const Omittable.absent(), this.accountSid = const Omittable.absent(), this.averageWaitTime = 0, this.sid = const Omittable.absent(), this.dateCreated = const Omittable.absent(), this.maxSize = 0, });

factory AccountQueue.fromJson(Map<String, dynamic> json) { return AccountQueue(
  dateUpdated: json.containsKey('date_updated') ? Omittable(json['date_updated'] as String?) : const Omittable.absent(),
  currentSize: json.containsKey('current_size') ? (json['current_size'] as num).toInt() : 0,
  friendlyName: json.containsKey('friendly_name') ? Omittable(json['friendly_name'] as String?) : const Omittable.absent(),
  uri: json.containsKey('uri') ? Omittable(json['uri'] as String?) : const Omittable.absent(),
  accountSid: json.containsKey('account_sid') ? Omittable(json['account_sid'] as String?) : const Omittable.absent(),
  averageWaitTime: json.containsKey('average_wait_time') ? (json['average_wait_time'] as num).toInt() : 0,
  sid: json.containsKey('sid') ? Omittable(json['sid'] as String?) : const Omittable.absent(),
  dateCreated: json.containsKey('date_created') ? Omittable(json['date_created'] as String?) : const Omittable.absent(),
  maxSize: json.containsKey('max_size') ? (json['max_size'] as num).toInt() : 0,
); }

/// The date and time in GMT that this resource was last updated, specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final Omittable<String?> dateUpdated;

/// The number of calls currently in the queue.
final int currentSize;

/// A string that you assigned to describe this resource.
final Omittable<String?> friendlyName;

/// The URI of this resource, relative to `https://api.twilio.com`.
final Omittable<String?> uri;

/// The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created this Queue resource.
final Omittable<String?> accountSid;

///  The average wait time in seconds of the members in this queue. This is calculated at the time of the request.
final int averageWaitTime;

/// The unique string that that we created to identify this Queue resource.
final Omittable<String?> sid;

/// The date and time in GMT that this resource was created specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final Omittable<String?> dateCreated;

///  The maximum number of calls that can be in the queue. The default is 1000 and the maximum is 5000.
final int maxSize;

Map<String, dynamic> toJson() { return {
  if (dateUpdated.isPresent) 'date_updated': dateUpdated.value,
  'current_size': currentSize,
  if (friendlyName.isPresent) 'friendly_name': friendlyName.value,
  if (uri.isPresent) 'uri': uri.value,
  if (accountSid.isPresent) 'account_sid': accountSid.value,
  'average_wait_time': averageWaitTime,
  if (sid.isPresent) 'sid': sid.value,
  if (dateCreated.isPresent) 'date_created': dateCreated.value,
  'max_size': maxSize,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'date_updated', 'current_size', 'friendly_name', 'uri', 'account_sid', 'average_wait_time', 'sid', 'date_created', 'max_size'}.contains(key)); } 
AccountQueue copyWith({Omittable<String?>? dateUpdated, int Function()? currentSize, Omittable<String?>? friendlyName, Omittable<String?>? uri, Omittable<String?>? accountSid, int Function()? averageWaitTime, Omittable<String?>? sid, Omittable<String?>? dateCreated, int Function()? maxSize, }) { return AccountQueue(
  dateUpdated: dateUpdated ?? this.dateUpdated,
  currentSize: currentSize != null ? currentSize() : this.currentSize,
  friendlyName: friendlyName ?? this.friendlyName,
  uri: uri ?? this.uri,
  accountSid: accountSid ?? this.accountSid,
  averageWaitTime: averageWaitTime != null ? averageWaitTime() : this.averageWaitTime,
  sid: sid ?? this.sid,
  dateCreated: dateCreated ?? this.dateCreated,
  maxSize: maxSize != null ? maxSize() : this.maxSize,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountQueue &&
          dateUpdated == other.dateUpdated &&
          currentSize == other.currentSize &&
          friendlyName == other.friendlyName &&
          uri == other.uri &&
          accountSid == other.accountSid &&
          averageWaitTime == other.averageWaitTime &&
          sid == other.sid &&
          dateCreated == other.dateCreated &&
          maxSize == other.maxSize; } 
@override int get hashCode { return Object.hash(dateUpdated, currentSize, friendlyName, uri, accountSid, averageWaitTime, sid, dateCreated, maxSize); } 
@override String toString() { return 'AccountQueue(dateUpdated: $dateUpdated, currentSize: $currentSize, friendlyName: $friendlyName, uri: $uri, accountSid: $accountSid, averageWaitTime: $averageWaitTime, sid: $sid, dateCreated: $dateCreated, maxSize: $maxSize)'; } 
 }
