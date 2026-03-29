// GENERATED CODE - DO NOT MODIFY BY HAND

final class AccountQueue {const AccountQueue({this.dateUpdated, this.currentSize = 0, this.friendlyName, this.uri, this.accountSid, this.averageWaitTime = 0, this.sid, this.dateCreated, this.maxSize = 0, });

factory AccountQueue.fromJson(Map<String, dynamic> json) { return AccountQueue(
  dateUpdated: json['date_updated'] as String?,
  currentSize: json.containsKey('current_size') ? (json['current_size'] as num).toInt() : 0,
  friendlyName: json['friendly_name'] as String?,
  uri: json['uri'] as String?,
  accountSid: json['account_sid'] as String?,
  averageWaitTime: json.containsKey('average_wait_time') ? (json['average_wait_time'] as num).toInt() : 0,
  sid: json['sid'] as String?,
  dateCreated: json['date_created'] as String?,
  maxSize: json.containsKey('max_size') ? (json['max_size'] as num).toInt() : 0,
); }

/// The date and time in GMT that this resource was last updated, specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final String? dateUpdated;

/// The number of calls currently in the queue.
final int currentSize;

/// A string that you assigned to describe this resource.
final String? friendlyName;

/// The URI of this resource, relative to `https://api.twilio.com`.
final String? uri;

/// The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created this Queue resource.
final String? accountSid;

///  The average wait time in seconds of the members in this queue. This is calculated at the time of the request.
final int averageWaitTime;

/// The unique string that that we created to identify this Queue resource.
final String? sid;

/// The date and time in GMT that this resource was created specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final String? dateCreated;

///  The maximum number of calls that can be in the queue. The default is 1000 and the maximum is 5000.
final int maxSize;

Map<String, dynamic> toJson() { return {
  'date_updated': ?dateUpdated,
  'current_size': currentSize,
  'friendly_name': ?friendlyName,
  'uri': ?uri,
  'account_sid': ?accountSid,
  'average_wait_time': averageWaitTime,
  'sid': ?sid,
  'date_created': ?dateCreated,
  'max_size': maxSize,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
AccountQueue copyWith({String? Function()? dateUpdated, int Function()? currentSize, String? Function()? friendlyName, String? Function()? uri, String? Function()? accountSid, int Function()? averageWaitTime, String? Function()? sid, String? Function()? dateCreated, int Function()? maxSize, }) { return AccountQueue(
  dateUpdated: dateUpdated != null ? dateUpdated() : this.dateUpdated,
  currentSize: currentSize != null ? currentSize() : this.currentSize,
  friendlyName: friendlyName != null ? friendlyName() : this.friendlyName,
  uri: uri != null ? uri() : this.uri,
  accountSid: accountSid != null ? accountSid() : this.accountSid,
  averageWaitTime: averageWaitTime != null ? averageWaitTime() : this.averageWaitTime,
  sid: sid != null ? sid() : this.sid,
  dateCreated: dateCreated != null ? dateCreated() : this.dateCreated,
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
