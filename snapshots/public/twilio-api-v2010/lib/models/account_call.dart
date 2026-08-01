// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'call_enum_status.dart';@immutable final class AccountCall {const AccountCall({this.sid = const Omittable.absent(), this.dateCreated = const Omittable.absent(), this.dateUpdated = const Omittable.absent(), this.parentCallSid = const Omittable.absent(), this.accountSid = const Omittable.absent(), this.to = const Omittable.absent(), this.toFormatted = const Omittable.absent(), this.from = const Omittable.absent(), this.fromFormatted = const Omittable.absent(), this.phoneNumberSid = const Omittable.absent(), this.status, this.startTime = const Omittable.absent(), this.endTime = const Omittable.absent(), this.duration = const Omittable.absent(), this.price = const Omittable.absent(), this.priceUnit = const Omittable.absent(), this.direction = const Omittable.absent(), this.answeredBy = const Omittable.absent(), this.apiVersion = const Omittable.absent(), this.forwardedFrom = const Omittable.absent(), this.groupSid = const Omittable.absent(), this.callerName = const Omittable.absent(), this.queueTime = const Omittable.absent(), this.trunkSid = const Omittable.absent(), this.uri = const Omittable.absent(), this.subresourceUris = const Omittable.absent(), });

factory AccountCall.fromJson(Map<String, dynamic> json) { return AccountCall(
  sid: json.containsKey('sid') ? Omittable(json['sid'] as String?) : const Omittable.absent(),
  dateCreated: json.containsKey('date_created') ? Omittable(json['date_created'] as String?) : const Omittable.absent(),
  dateUpdated: json.containsKey('date_updated') ? Omittable(json['date_updated'] as String?) : const Omittable.absent(),
  parentCallSid: json.containsKey('parent_call_sid') ? Omittable(json['parent_call_sid'] as String?) : const Omittable.absent(),
  accountSid: json.containsKey('account_sid') ? Omittable(json['account_sid'] as String?) : const Omittable.absent(),
  to: json.containsKey('to') ? Omittable(json['to'] as String?) : const Omittable.absent(),
  toFormatted: json.containsKey('to_formatted') ? Omittable(json['to_formatted'] as String?) : const Omittable.absent(),
  from: json.containsKey('from') ? Omittable(json['from'] as String?) : const Omittable.absent(),
  fromFormatted: json.containsKey('from_formatted') ? Omittable(json['from_formatted'] as String?) : const Omittable.absent(),
  phoneNumberSid: json.containsKey('phone_number_sid') ? Omittable(json['phone_number_sid'] as String?) : const Omittable.absent(),
  status: json['status'] != null ? CallEnumStatus.fromJson(json['status'] as String) : null,
  startTime: json.containsKey('start_time') ? Omittable(json['start_time'] as String?) : const Omittable.absent(),
  endTime: json.containsKey('end_time') ? Omittable(json['end_time'] as String?) : const Omittable.absent(),
  duration: json.containsKey('duration') ? Omittable(json['duration'] as String?) : const Omittable.absent(),
  price: json.containsKey('price') ? Omittable(json['price'] as String?) : const Omittable.absent(),
  priceUnit: json.containsKey('price_unit') ? Omittable(json['price_unit'] as String?) : const Omittable.absent(),
  direction: json.containsKey('direction') ? Omittable(json['direction'] as String?) : const Omittable.absent(),
  answeredBy: json.containsKey('answered_by') ? Omittable(json['answered_by'] as String?) : const Omittable.absent(),
  apiVersion: json.containsKey('api_version') ? Omittable(json['api_version'] as String?) : const Omittable.absent(),
  forwardedFrom: json.containsKey('forwarded_from') ? Omittable(json['forwarded_from'] as String?) : const Omittable.absent(),
  groupSid: json.containsKey('group_sid') ? Omittable(json['group_sid'] as String?) : const Omittable.absent(),
  callerName: json.containsKey('caller_name') ? Omittable(json['caller_name'] as String?) : const Omittable.absent(),
  queueTime: json.containsKey('queue_time') ? Omittable(json['queue_time'] as String?) : const Omittable.absent(),
  trunkSid: json.containsKey('trunk_sid') ? Omittable(json['trunk_sid'] as String?) : const Omittable.absent(),
  uri: json.containsKey('uri') ? Omittable(json['uri'] as String?) : const Omittable.absent(),
  subresourceUris: json.containsKey('subresource_uris') ? Omittable(json['subresource_uris'] as Map<String, dynamic>?) : const Omittable.absent(),
); }

/// The unique string that we created to identify this Call resource.
final Omittable<String?> sid;

/// The date and time in UTC that this resource was created specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final Omittable<String?> dateCreated;

/// The date and time in UTC that this resource was last updated, specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final Omittable<String?> dateUpdated;

/// The SID that identifies the call that created this leg.
final Omittable<String?> parentCallSid;

/// The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created this Call resource.
final Omittable<String?> accountSid;

/// The phone number, SIP address, Client identifier or SIM SID that received this call. Phone numbers are in [E.164](https://www.twilio.com/docs/glossary/what-e164) format (e.g., +16175551212). SIP addresses are formatted as `name@company.com`. Client identifiers are formatted `client:name`. SIM SIDs are formatted as `sim:sid`.
final Omittable<String?> to;

/// The phone number, SIP address or Client identifier that received this call. Formatted for display. Non-North American phone numbers are in [E.164](https://www.twilio.com/docs/glossary/what-e164) format (e.g., +442071838750).
final Omittable<String?> toFormatted;

/// The phone number, SIP address, Client identifier or SIM SID that made this call. Phone numbers are in [E.164](https://www.twilio.com/docs/glossary/what-e164) format (e.g., +16175551212). SIP addresses are formatted as `name@company.com`. Client identifiers are formatted `client:name`. SIM SIDs are formatted as `sim:sid`.
final Omittable<String?> from;

/// The calling phone number, SIP address, or Client identifier formatted for display. Non-North American phone numbers are in [E.164](https://www.twilio.com/docs/glossary/what-e164) format (e.g., +442071838750).
final Omittable<String?> fromFormatted;

/// If the call was inbound, this is the SID of the IncomingPhoneNumber resource that received the call. If the call was outbound, it is the SID of the OutgoingCallerId resource from which the call was placed.
final Omittable<String?> phoneNumberSid;

final CallEnumStatus? status;

/// The start time of the call, given as UTC in [RFC 2822](https://www.php.net/manual/en/class.datetime.php#datetime.constants.rfc2822) format. Empty if the call has not yet been dialed.
final Omittable<String?> startTime;

/// The time the call ended, given as UTC in [RFC 2822](https://www.php.net/manual/en/class.datetime.php#datetime.constants.rfc2822) format. Empty if the call did not complete successfully.
final Omittable<String?> endTime;

/// The length of the call in seconds. This value is empty for busy, failed, unanswered, or ongoing calls.
final Omittable<String?> duration;

/// The charge for this call, in the currency associated with the account. Populated after the call is completed. May not be immediately available. The price associated with a call only reflects the charge for connectivity.  Charges for other call-related features such as Answering Machine Detection, Text-To-Speech, and SIP REFER are not included in this value.
final Omittable<String?> price;

/// The currency in which `Price` is measured, in [ISO 4127](https://www.iso.org/iso/home/standards/currency_codes.htm) format (e.g., `USD`, `EUR`, `JPY`). Always capitalized for calls.
final Omittable<String?> priceUnit;

/// A string describing the direction of the call. Can be: `inbound` for inbound calls, `outbound-api` for calls initiated via the REST API or `outbound-dial` for calls initiated by a `<Dial>` verb. Using [Elastic SIP Trunking](https://www.twilio.com/docs/sip-trunking), the values can be [`trunking-terminating`](https://www.twilio.com/docs/sip-trunking#termination) for outgoing calls from your communications infrastructure to the PSTN or [`trunking-originating`](https://www.twilio.com/docs/sip-trunking#origination) for incoming calls to your communications infrastructure from the PSTN.
final Omittable<String?> direction;

/// Either `human` or `machine` if this call was initiated with answering machine detection. Empty otherwise.
final Omittable<String?> answeredBy;

/// The API version used to create the call.
final Omittable<String?> apiVersion;

/// The forwarding phone number if this call was an incoming call forwarded from another number (depends on carrier supporting forwarding). Otherwise, empty.
final Omittable<String?> forwardedFrom;

/// The Group SID associated with this call. If no Group is associated with the call, the field is empty.
final Omittable<String?> groupSid;

/// The caller's name if this call was an incoming call to a phone number with caller ID Lookup enabled. Otherwise, empty.
final Omittable<String?> callerName;

/// The wait time in milliseconds before the call is placed.
final Omittable<String?> queueTime;

/// The unique identifier of the trunk resource that was used for this call. The field is empty if the call was not made using a SIP trunk or if the call is not terminated.
final Omittable<String?> trunkSid;

/// The URI of this resource, relative to `https://api.twilio.com`.
final Omittable<String?> uri;

/// A list of subresources available to this call, identified by their URIs relative to `https://api.twilio.com`.
final Omittable<Map<String,dynamic>?> subresourceUris;

Map<String, dynamic> toJson() { return {
  if (sid.isPresent) 'sid': sid.value,
  if (dateCreated.isPresent) 'date_created': dateCreated.value,
  if (dateUpdated.isPresent) 'date_updated': dateUpdated.value,
  if (parentCallSid.isPresent) 'parent_call_sid': parentCallSid.value,
  if (accountSid.isPresent) 'account_sid': accountSid.value,
  if (to.isPresent) 'to': to.value,
  if (toFormatted.isPresent) 'to_formatted': toFormatted.value,
  if (from.isPresent) 'from': from.value,
  if (fromFormatted.isPresent) 'from_formatted': fromFormatted.value,
  if (phoneNumberSid.isPresent) 'phone_number_sid': phoneNumberSid.value,
  if (status != null) 'status': status?.toJson(),
  if (startTime.isPresent) 'start_time': startTime.value,
  if (endTime.isPresent) 'end_time': endTime.value,
  if (duration.isPresent) 'duration': duration.value,
  if (price.isPresent) 'price': price.value,
  if (priceUnit.isPresent) 'price_unit': priceUnit.value,
  if (direction.isPresent) 'direction': direction.value,
  if (answeredBy.isPresent) 'answered_by': answeredBy.value,
  if (apiVersion.isPresent) 'api_version': apiVersion.value,
  if (forwardedFrom.isPresent) 'forwarded_from': forwardedFrom.value,
  if (groupSid.isPresent) 'group_sid': groupSid.value,
  if (callerName.isPresent) 'caller_name': callerName.value,
  if (queueTime.isPresent) 'queue_time': queueTime.value,
  if (trunkSid.isPresent) 'trunk_sid': trunkSid.value,
  if (uri.isPresent) 'uri': uri.value,
  if (subresourceUris.isPresent) 'subresource_uris': subresourceUris.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'sid', 'date_created', 'date_updated', 'parent_call_sid', 'account_sid', 'to', 'to_formatted', 'from', 'from_formatted', 'phone_number_sid', 'status', 'start_time', 'end_time', 'duration', 'price', 'price_unit', 'direction', 'answered_by', 'api_version', 'forwarded_from', 'group_sid', 'caller_name', 'queue_time', 'trunk_sid', 'uri', 'subresource_uris'}.contains(key)); } 
AccountCall copyWith({Omittable<String?>? sid, Omittable<String?>? dateCreated, Omittable<String?>? dateUpdated, Omittable<String?>? parentCallSid, Omittable<String?>? accountSid, Omittable<String?>? to, Omittable<String?>? toFormatted, Omittable<String?>? from, Omittable<String?>? fromFormatted, Omittable<String?>? phoneNumberSid, CallEnumStatus? Function()? status, Omittable<String?>? startTime, Omittable<String?>? endTime, Omittable<String?>? duration, Omittable<String?>? price, Omittable<String?>? priceUnit, Omittable<String?>? direction, Omittable<String?>? answeredBy, Omittable<String?>? apiVersion, Omittable<String?>? forwardedFrom, Omittable<String?>? groupSid, Omittable<String?>? callerName, Omittable<String?>? queueTime, Omittable<String?>? trunkSid, Omittable<String?>? uri, Omittable<Map<String,dynamic>?>? subresourceUris, }) { return AccountCall(
  sid: sid ?? this.sid,
  dateCreated: dateCreated ?? this.dateCreated,
  dateUpdated: dateUpdated ?? this.dateUpdated,
  parentCallSid: parentCallSid ?? this.parentCallSid,
  accountSid: accountSid ?? this.accountSid,
  to: to ?? this.to,
  toFormatted: toFormatted ?? this.toFormatted,
  from: from ?? this.from,
  fromFormatted: fromFormatted ?? this.fromFormatted,
  phoneNumberSid: phoneNumberSid ?? this.phoneNumberSid,
  status: status != null ? status() : this.status,
  startTime: startTime ?? this.startTime,
  endTime: endTime ?? this.endTime,
  duration: duration ?? this.duration,
  price: price ?? this.price,
  priceUnit: priceUnit ?? this.priceUnit,
  direction: direction ?? this.direction,
  answeredBy: answeredBy ?? this.answeredBy,
  apiVersion: apiVersion ?? this.apiVersion,
  forwardedFrom: forwardedFrom ?? this.forwardedFrom,
  groupSid: groupSid ?? this.groupSid,
  callerName: callerName ?? this.callerName,
  queueTime: queueTime ?? this.queueTime,
  trunkSid: trunkSid ?? this.trunkSid,
  uri: uri ?? this.uri,
  subresourceUris: subresourceUris ?? this.subresourceUris,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountCall &&
          sid == other.sid &&
          dateCreated == other.dateCreated &&
          dateUpdated == other.dateUpdated &&
          parentCallSid == other.parentCallSid &&
          accountSid == other.accountSid &&
          to == other.to &&
          toFormatted == other.toFormatted &&
          from == other.from &&
          fromFormatted == other.fromFormatted &&
          phoneNumberSid == other.phoneNumberSid &&
          status == other.status &&
          startTime == other.startTime &&
          endTime == other.endTime &&
          duration == other.duration &&
          price == other.price &&
          priceUnit == other.priceUnit &&
          direction == other.direction &&
          answeredBy == other.answeredBy &&
          apiVersion == other.apiVersion &&
          forwardedFrom == other.forwardedFrom &&
          groupSid == other.groupSid &&
          callerName == other.callerName &&
          queueTime == other.queueTime &&
          trunkSid == other.trunkSid &&
          uri == other.uri &&
          subresourceUris == other.subresourceUris; } 
@override int get hashCode { return Object.hashAll([sid, dateCreated, dateUpdated, parentCallSid, accountSid, to, toFormatted, from, fromFormatted, phoneNumberSid, status, startTime, endTime, duration, price, priceUnit, direction, answeredBy, apiVersion, forwardedFrom, groupSid, callerName, queueTime, trunkSid, uri, subresourceUris]); } 
@override String toString() { return 'AccountCall(sid: $sid, dateCreated: $dateCreated, dateUpdated: $dateUpdated, parentCallSid: $parentCallSid, accountSid: $accountSid, to: $to, toFormatted: $toFormatted, from: $from, fromFormatted: $fromFormatted, phoneNumberSid: $phoneNumberSid, status: $status, startTime: $startTime, endTime: $endTime, duration: $duration, price: $price, priceUnit: $priceUnit, direction: $direction, answeredBy: $answeredBy, apiVersion: $apiVersion, forwardedFrom: $forwardedFrom, groupSid: $groupSid, callerName: $callerName, queueTime: $queueTime, trunkSid: $trunkSid, uri: $uri, subresourceUris: $subresourceUris)'; } 
 }
