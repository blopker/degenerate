// GENERATED CODE - DO NOT MODIFY BY HAND

final class MessageEnumUpdateStatus {const MessageEnumUpdateStatus._(this.value);

factory MessageEnumUpdateStatus.fromJson(String json) { return switch (json) {
  'canceled' => canceled,
  _ => MessageEnumUpdateStatus._(json),
}; }

static const MessageEnumUpdateStatus canceled = MessageEnumUpdateStatus._('canceled');

static const List<MessageEnumUpdateStatus> values = [canceled];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MessageEnumUpdateStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MessageEnumUpdateStatus($value)'; } 
 }
final class UpdateMessageRequest {const UpdateMessageRequest({this.body, this.status, });

factory UpdateMessageRequest.fromJson(Map<String, dynamic> json) { return UpdateMessageRequest(
  body: json['Body'] as String?,
  status: json['Status'] != null ? MessageEnumUpdateStatus.fromJson(json['Status'] as String) : null,
); }

/// The new `body` of the Message resource. To redact the text content of a Message, this parameter's value must be an empty string
final String? body;

final MessageEnumUpdateStatus? status;

Map<String, dynamic> toJson() { return {
  'Body': ?body,
  if (status != null) 'Status': status?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'Body', 'Status'}.contains(key)); } 
UpdateMessageRequest copyWith({String Function()? body, MessageEnumUpdateStatus Function()? status, }) { return UpdateMessageRequest(
  body: body != null ? body() : this.body,
  status: status != null ? status() : this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UpdateMessageRequest &&
          body == other.body &&
          status == other.status; } 
@override int get hashCode { return Object.hash(body, status); } 
@override String toString() { return 'UpdateMessageRequest(body: $body, status: $status)'; } 
 }
