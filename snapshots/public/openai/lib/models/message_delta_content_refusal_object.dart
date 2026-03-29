// GENERATED CODE - DO NOT MODIFY BY HAND

/// Always `refusal`.
final class MessageDeltaContentRefusalObjectType {const MessageDeltaContentRefusalObjectType._(this.value);

factory MessageDeltaContentRefusalObjectType.fromJson(String json) { return switch (json) {
  'refusal' => refusal,
  _ => MessageDeltaContentRefusalObjectType._(json),
}; }

static const MessageDeltaContentRefusalObjectType refusal = MessageDeltaContentRefusalObjectType._('refusal');

static const List<MessageDeltaContentRefusalObjectType> values = [refusal];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MessageDeltaContentRefusalObjectType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MessageDeltaContentRefusalObjectType($value)'; } 
 }
/// The refusal content that is part of a message.
final class MessageDeltaContentRefusalObject {const MessageDeltaContentRefusalObject({required this.index, required this.type, this.refusal, });

factory MessageDeltaContentRefusalObject.fromJson(Map<String, dynamic> json) { return MessageDeltaContentRefusalObject(
  index: (json['index'] as num).toInt(),
  type: MessageDeltaContentRefusalObjectType.fromJson(json['type'] as String),
  refusal: json['refusal'] as String?,
); }

/// The index of the refusal part in the message.
final int index;

/// Always `refusal`.
final MessageDeltaContentRefusalObjectType type;

final String? refusal;

Map<String, dynamic> toJson() { return {
  'index': index,
  'type': type.toJson(),
  'refusal': ?refusal,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('index') && json['index'] is num &&
      json.containsKey('type'); } 
MessageDeltaContentRefusalObject copyWith({int? index, MessageDeltaContentRefusalObjectType? type, String Function()? refusal, }) { return MessageDeltaContentRefusalObject(
  index: index ?? this.index,
  type: type ?? this.type,
  refusal: refusal != null ? refusal() : this.refusal,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MessageDeltaContentRefusalObject &&
          index == other.index &&
          type == other.type &&
          refusal == other.refusal; } 
@override int get hashCode { return Object.hash(index, type, refusal); } 
@override String toString() { return 'MessageDeltaContentRefusalObject(index: $index, type: $type, refusal: $refusal)'; } 
 }
