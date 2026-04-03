// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Determines if the message content can be stored or redacted based on privacy settings
@immutable final class MessageEnumContentRetention {const MessageEnumContentRetention._(this.value);

factory MessageEnumContentRetention.fromJson(String json) { return switch (json) {
  'retain' => retain,
  'discard' => discard,
  _ => MessageEnumContentRetention._(json),
}; }

static const MessageEnumContentRetention retain = MessageEnumContentRetention._('retain');

static const MessageEnumContentRetention discard = MessageEnumContentRetention._('discard');

static const List<MessageEnumContentRetention> values = [retain, discard];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MessageEnumContentRetention && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MessageEnumContentRetention($value)'; } 
 }
/// Determines if the address can be stored or obfuscated based on privacy settings
@immutable final class MessageEnumAddressRetention {const MessageEnumAddressRetention._(this.value);

factory MessageEnumAddressRetention.fromJson(String json) { return switch (json) {
  'retain' => retain,
  'obfuscate' => obfuscate,
  _ => MessageEnumAddressRetention._(json),
}; }

static const MessageEnumAddressRetention retain = MessageEnumAddressRetention._('retain');

static const MessageEnumAddressRetention obfuscate = MessageEnumAddressRetention._('obfuscate');

static const List<MessageEnumAddressRetention> values = [retain, obfuscate];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MessageEnumAddressRetention && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MessageEnumAddressRetention($value)'; } 
 }
@immutable final class MessageEnumTrafficType {const MessageEnumTrafficType._(this.value);

factory MessageEnumTrafficType.fromJson(String json) { return switch (json) {
  'free' => free,
  _ => MessageEnumTrafficType._(json),
}; }

static const MessageEnumTrafficType free = MessageEnumTrafficType._('free');

static const List<MessageEnumTrafficType> values = [free];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MessageEnumTrafficType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MessageEnumTrafficType($value)'; } 
 }
/// For Messaging Services only: Include this parameter with a value of `fixed` in conjuction with the `send_time` parameter in order to [schedule a Message](https://www.twilio.com/docs/messaging/features/message-scheduling).
@immutable final class MessageEnumScheduleType {const MessageEnumScheduleType._(this.value);

factory MessageEnumScheduleType.fromJson(String json) { return switch (json) {
  'fixed' => fixed,
  _ => MessageEnumScheduleType._(json),
}; }

static const MessageEnumScheduleType fixed = MessageEnumScheduleType._('fixed');

static const List<MessageEnumScheduleType> values = [fixed];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MessageEnumScheduleType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MessageEnumScheduleType($value)'; } 
 }
/// Include this parameter with a value of `disable` to skip any kind of risk check on the respective message request.
@immutable final class MessageEnumRiskCheck {const MessageEnumRiskCheck._(this.value);

factory MessageEnumRiskCheck.fromJson(String json) { return switch (json) {
  'enable' => enable,
  'disable' => disable,
  _ => MessageEnumRiskCheck._(json),
}; }

static const MessageEnumRiskCheck enable = MessageEnumRiskCheck._('enable');

static const MessageEnumRiskCheck disable = MessageEnumRiskCheck._('disable');

static const List<MessageEnumRiskCheck> values = [enable, disable];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MessageEnumRiskCheck && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MessageEnumRiskCheck($value)'; } 
 }
@immutable final class CreateMessageRequest {const CreateMessageRequest({required this.to, this.statusCallback, this.applicationSid, this.maxPrice, this.provideFeedback, this.attempt, this.validityPeriod, this.forceDelivery, this.contentRetention, this.addressRetention, this.smartEncoded, this.persistentAction, this.trafficType, this.shortenUrls, this.scheduleType, this.sendAt, this.sendAsMms, this.contentVariables, this.riskCheck, this.from, this.messagingServiceSid, this.body, this.mediaUrl, this.contentSid, });

factory CreateMessageRequest.fromJson(Map<String, dynamic> json) { return CreateMessageRequest(
  to: json['To'] as String,
  statusCallback: json['StatusCallback'] != null ? Uri.parse(json['StatusCallback'] as String) : null,
  applicationSid: json['ApplicationSid'] as String?,
  maxPrice: json['MaxPrice'] != null ? (json['MaxPrice'] as num).toDouble() : null,
  provideFeedback: json['ProvideFeedback'] as bool?,
  attempt: json['Attempt'] != null ? (json['Attempt'] as num).toInt() : null,
  validityPeriod: json['ValidityPeriod'] != null ? (json['ValidityPeriod'] as num).toInt() : null,
  forceDelivery: json['ForceDelivery'] as bool?,
  contentRetention: json['ContentRetention'] != null ? MessageEnumContentRetention.fromJson(json['ContentRetention'] as String) : null,
  addressRetention: json['AddressRetention'] != null ? MessageEnumAddressRetention.fromJson(json['AddressRetention'] as String) : null,
  smartEncoded: json['SmartEncoded'] as bool?,
  persistentAction: (json['PersistentAction'] as List<dynamic>?)?.map((e) => e as String).toList(),
  trafficType: json['TrafficType'] != null ? MessageEnumTrafficType.fromJson(json['TrafficType'] as String) : null,
  shortenUrls: json['ShortenUrls'] as bool?,
  scheduleType: json['ScheduleType'] != null ? MessageEnumScheduleType.fromJson(json['ScheduleType'] as String) : null,
  sendAt: json['SendAt'] != null ? DateTime.parse(json['SendAt'] as String) : null,
  sendAsMms: json['SendAsMms'] as bool?,
  contentVariables: json['ContentVariables'] as String?,
  riskCheck: json['RiskCheck'] != null ? MessageEnumRiskCheck.fromJson(json['RiskCheck'] as String) : null,
  from: json['From'] as String?,
  messagingServiceSid: json['MessagingServiceSid'] as String?,
  body: json['Body'] as String?,
  mediaUrl: (json['MediaUrl'] as List<dynamic>?)?.map((e) => Uri.parse(e as String)).toList(),
  contentSid: json['ContentSid'] as String?,
); }

/// The recipient's phone number in [E.164](https://www.twilio.com/docs/glossary/what-e164) format (for SMS/MMS) or [channel address](https://www.twilio.com/docs/messaging/channels), e.g. `whatsapp:+15552229999`.
final String to;

/// The URL of the endpoint to which Twilio sends [Message status callback requests](https://www.twilio.com/docs/sms/api/message-resource#twilios-request-to-the-statuscallback-url). URL must contain a valid hostname and underscores are not allowed. If you include this parameter with the `messaging_service_sid`, Twilio uses this URL instead of the Status Callback URL of the [Messaging Service](https://www.twilio.com/docs/messaging/api/service-resource).
final Uri? statusCallback;

/// The SID of the associated [TwiML Application](https://www.twilio.com/docs/usage/api/applications). [Message status callback requests](https://www.twilio.com/docs/sms/api/message-resource#twilios-request-to-the-statuscallback-url) are sent to the TwiML App's `message_status_callback` URL. Note that the `status_callback` parameter of a request takes priority over the `application_sid` parameter; if both are included `application_sid` is ignored.
final String? applicationSid;

/// `[OBSOLETE]` This parameter will no longer have any effect as of 2024-06-03.
final double? maxPrice;

/// Boolean indicating whether or not you intend to provide delivery confirmation feedback to Twilio (used in conjunction with the [Message Feedback subresource](https://www.twilio.com/docs/sms/api/message-feedback-resource)). Default value is `false`.
final bool? provideFeedback;

/// Total number of attempts made (including this request) to send the message regardless of the provider used
final int? attempt;

/// The maximum length in seconds that the Message can remain in Twilio's outgoing message queue. If a queued Message exceeds the `validity_period`, the Message is not sent. Accepted values are integers from `1` to `36000`. Default value is `36000`. A `validity_period` greater than `5` is recommended. [Learn more about the validity period](https://www.twilio.com/blog/take-more-control-of-outbound-messages-using-validity-period-html)
final int? validityPeriod;

/// Reserved
final bool? forceDelivery;

/// Determines if the message content can be stored or redacted based on privacy settings
final MessageEnumContentRetention? contentRetention;

/// Determines if the address can be stored or obfuscated based on privacy settings
final MessageEnumAddressRetention? addressRetention;

/// Whether to detect Unicode characters that have a similar GSM-7 character and replace them. Can be: `true` or `false`.
final bool? smartEncoded;

/// Rich actions for non-SMS/MMS channels. Used for [sending location in WhatsApp messages](https://www.twilio.com/docs/whatsapp/message-features#location-messages-with-whatsapp).
final List<String>? persistentAction;

final MessageEnumTrafficType? trafficType;

/// For Messaging Services with [Link Shortening configured](https://www.twilio.com/docs/messaging/features/link-shortening) only: A Boolean indicating whether or not Twilio should shorten links in the `body` of the Message. Default value is `false`. If `true`, the `messaging_service_sid` parameter must also be provided.
final bool? shortenUrls;

/// For Messaging Services only: Include this parameter with a value of `fixed` in conjuction with the `send_time` parameter in order to [schedule a Message](https://www.twilio.com/docs/messaging/features/message-scheduling).
final MessageEnumScheduleType? scheduleType;

/// The time that Twilio will send the message. Must be in ISO 8601 format.
final DateTime? sendAt;

/// If set to `true`, Twilio delivers the message as a single MMS message, regardless of the presence of media.
final bool? sendAsMms;

/// For [Content Editor/API](https://www.twilio.com/docs/content) only: Key-value pairs of [Template variables](https://www.twilio.com/docs/content/using-variables-with-content-api) and their substitution values. `content_sid` parameter must also be provided. If values are not defined in the `content_variables` parameter, the [Template's default placeholder values](https://www.twilio.com/docs/content/content-api-resources#create-templates) are used.
final String? contentVariables;

/// Include this parameter with a value of `disable` to skip any kind of risk check on the respective message request.
final MessageEnumRiskCheck? riskCheck;

/// The sender's Twilio phone number (in [E.164](https://en.wikipedia.org/wiki/E.164) format), [alphanumeric sender ID](https://www.twilio.com/docs/sms/quickstart), [Wireless SIM](https://www.twilio.com/docs/iot/wireless/programmable-wireless-send-machine-machine-sms-commands), [short code](https://www.twilio.com/en-us/messaging/channels/sms/short-codes), or [channel address](https://www.twilio.com/docs/messaging/channels) (e.g., `whatsapp:+15554449999`). The value of the `from` parameter must be a sender that is hosted within Twilio and belongs to the Account creating the Message. If you are using `messaging_service_sid`, this parameter can be empty (Twilio assigns a `from` value from the Messaging Service's Sender Pool) or you can provide a specific sender from your Sender Pool.
final String? from;

/// The SID of the [Messaging Service](https://www.twilio.com/docs/messaging/services) you want to associate with the Message. When this parameter is provided and the `from` parameter is omitted, Twilio selects the optimal sender from the Messaging Service's Sender Pool. You may also provide a `from` parameter if you want to use a specific Sender from the Sender Pool.
final String? messagingServiceSid;

/// The text content of the outgoing message. Can be up to 1,600 characters in length. SMS only: If the `body` contains more than 160 [GSM-7](https://www.twilio.com/docs/glossary/what-is-gsm-7-character-encoding) characters (or 70 [UCS-2](https://www.twilio.com/docs/glossary/what-is-ucs-2-character-encoding) characters), the message is segmented and charged accordingly. For long `body` text, consider using the [send_as_mms parameter](https://www.twilio.com/blog/mms-for-long-text-messages).
final String? body;

/// The URL of media to include in the Message content. `jpeg`, `jpg`, `gif`, and `png` file types are fully supported by Twilio and content is formatted for delivery on destination devices. The media size limit is 5 MB for supported file types (`jpeg`, `jpg`, `png`, `gif`) and 500 KB for [other types](https://www.twilio.com/docs/messaging/guides/accepted-mime-types) of accepted media. To send more than one image in the message, provide multiple `media_url` parameters in the POST request. You can include up to ten `media_url` parameters per message. [International](https://support.twilio.com/hc/en-us/articles/223179808-Sending-and-receiving-MMS-messages) and [carrier](https://support.twilio.com/hc/en-us/articles/223133707-Is-MMS-supported-for-all-carriers-in-US-and-Canada-) limits apply.
final List<Uri>? mediaUrl;

/// For [Content Editor/API](https://www.twilio.com/docs/content) only: The SID of the Content Template to be used with the Message, e.g., `HXXXXXXXXXXXXXXXXXXXXXXXXXXXXX`. If this parameter is not provided, a Content Template is not used. Find the SID in the Console on the Content Editor page. For Content API users, the SID is found in Twilio's response when [creating the Template](https://www.twilio.com/docs/content/content-api-resources#create-templates) or by [fetching your Templates](https://www.twilio.com/docs/content/content-api-resources#fetch-all-content-resources).
final String? contentSid;

Map<String, dynamic> toJson() { return {
  'To': to,
  if (statusCallback != null) 'StatusCallback': statusCallback?.toString(),
  'ApplicationSid': ?applicationSid,
  'MaxPrice': ?maxPrice,
  'ProvideFeedback': ?provideFeedback,
  'Attempt': ?attempt,
  'ValidityPeriod': ?validityPeriod,
  'ForceDelivery': ?forceDelivery,
  if (contentRetention != null) 'ContentRetention': contentRetention?.toJson(),
  if (addressRetention != null) 'AddressRetention': addressRetention?.toJson(),
  'SmartEncoded': ?smartEncoded,
  'PersistentAction': ?persistentAction,
  if (trafficType != null) 'TrafficType': trafficType?.toJson(),
  'ShortenUrls': ?shortenUrls,
  if (scheduleType != null) 'ScheduleType': scheduleType?.toJson(),
  if (sendAt != null) 'SendAt': sendAt?.toIso8601String(),
  'SendAsMms': ?sendAsMms,
  'ContentVariables': ?contentVariables,
  if (riskCheck != null) 'RiskCheck': riskCheck?.toJson(),
  'From': ?from,
  'MessagingServiceSid': ?messagingServiceSid,
  'Body': ?body,
  if (mediaUrl != null) 'MediaUrl': mediaUrl?.map((e) => e.toString()).toList(),
  'ContentSid': ?contentSid,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('To') && json['To'] is String; } 
CreateMessageRequest copyWith({String? to, Uri Function()? statusCallback, String Function()? applicationSid, double Function()? maxPrice, bool Function()? provideFeedback, int Function()? attempt, int Function()? validityPeriod, bool Function()? forceDelivery, MessageEnumContentRetention Function()? contentRetention, MessageEnumAddressRetention Function()? addressRetention, bool Function()? smartEncoded, List<String> Function()? persistentAction, MessageEnumTrafficType Function()? trafficType, bool Function()? shortenUrls, MessageEnumScheduleType Function()? scheduleType, DateTime Function()? sendAt, bool Function()? sendAsMms, String Function()? contentVariables, MessageEnumRiskCheck Function()? riskCheck, String Function()? from, String Function()? messagingServiceSid, String Function()? body, List<Uri> Function()? mediaUrl, String Function()? contentSid, }) { return CreateMessageRequest(
  to: to ?? this.to,
  statusCallback: statusCallback != null ? statusCallback() : this.statusCallback,
  applicationSid: applicationSid != null ? applicationSid() : this.applicationSid,
  maxPrice: maxPrice != null ? maxPrice() : this.maxPrice,
  provideFeedback: provideFeedback != null ? provideFeedback() : this.provideFeedback,
  attempt: attempt != null ? attempt() : this.attempt,
  validityPeriod: validityPeriod != null ? validityPeriod() : this.validityPeriod,
  forceDelivery: forceDelivery != null ? forceDelivery() : this.forceDelivery,
  contentRetention: contentRetention != null ? contentRetention() : this.contentRetention,
  addressRetention: addressRetention != null ? addressRetention() : this.addressRetention,
  smartEncoded: smartEncoded != null ? smartEncoded() : this.smartEncoded,
  persistentAction: persistentAction != null ? persistentAction() : this.persistentAction,
  trafficType: trafficType != null ? trafficType() : this.trafficType,
  shortenUrls: shortenUrls != null ? shortenUrls() : this.shortenUrls,
  scheduleType: scheduleType != null ? scheduleType() : this.scheduleType,
  sendAt: sendAt != null ? sendAt() : this.sendAt,
  sendAsMms: sendAsMms != null ? sendAsMms() : this.sendAsMms,
  contentVariables: contentVariables != null ? contentVariables() : this.contentVariables,
  riskCheck: riskCheck != null ? riskCheck() : this.riskCheck,
  from: from != null ? from() : this.from,
  messagingServiceSid: messagingServiceSid != null ? messagingServiceSid() : this.messagingServiceSid,
  body: body != null ? body() : this.body,
  mediaUrl: mediaUrl != null ? mediaUrl() : this.mediaUrl,
  contentSid: contentSid != null ? contentSid() : this.contentSid,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateMessageRequest &&
          to == other.to &&
          statusCallback == other.statusCallback &&
          applicationSid == other.applicationSid &&
          maxPrice == other.maxPrice &&
          provideFeedback == other.provideFeedback &&
          attempt == other.attempt &&
          validityPeriod == other.validityPeriod &&
          forceDelivery == other.forceDelivery &&
          contentRetention == other.contentRetention &&
          addressRetention == other.addressRetention &&
          smartEncoded == other.smartEncoded &&
          listEquals(persistentAction, other.persistentAction) &&
          trafficType == other.trafficType &&
          shortenUrls == other.shortenUrls &&
          scheduleType == other.scheduleType &&
          sendAt == other.sendAt &&
          sendAsMms == other.sendAsMms &&
          contentVariables == other.contentVariables &&
          riskCheck == other.riskCheck &&
          from == other.from &&
          messagingServiceSid == other.messagingServiceSid &&
          body == other.body &&
          listEquals(mediaUrl, other.mediaUrl) &&
          contentSid == other.contentSid; } 
@override int get hashCode { return Object.hashAll([to, statusCallback, applicationSid, maxPrice, provideFeedback, attempt, validityPeriod, forceDelivery, contentRetention, addressRetention, smartEncoded, Object.hashAll(persistentAction ?? const []), trafficType, shortenUrls, scheduleType, sendAt, sendAsMms, contentVariables, riskCheck, from, messagingServiceSid, body, Object.hashAll(mediaUrl ?? const []), contentSid]); } 
@override String toString() { return 'CreateMessageRequest(to: $to, statusCallback: $statusCallback, applicationSid: $applicationSid, maxPrice: $maxPrice, provideFeedback: $provideFeedback, attempt: $attempt, validityPeriod: $validityPeriod, forceDelivery: $forceDelivery, contentRetention: $contentRetention, addressRetention: $addressRetention, smartEncoded: $smartEncoded, persistentAction: $persistentAction, trafficType: $trafficType, shortenUrls: $shortenUrls, scheduleType: $scheduleType, sendAt: $sendAt, sendAsMms: $sendAsMms, contentVariables: $contentVariables, riskCheck: $riskCheck, from: $from, messagingServiceSid: $messagingServiceSid, body: $body, mediaUrl: $mediaUrl, contentSid: $contentSid)'; } 
 }
