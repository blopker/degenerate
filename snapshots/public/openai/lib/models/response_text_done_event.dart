// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'response_log_prob.dart';/// The type of the event. Always `response.output_text.done`.
/// 
@immutable final class ResponseTextDoneEventType {const ResponseTextDoneEventType._(this.value);

factory ResponseTextDoneEventType.fromJson(String json) { return switch (json) {
  'response.output_text.done' => responseOutputTextDone,
  _ => ResponseTextDoneEventType._(json),
}; }

static const ResponseTextDoneEventType responseOutputTextDone = ResponseTextDoneEventType._('response.output_text.done');

static const List<ResponseTextDoneEventType> values = [responseOutputTextDone];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseTextDoneEventType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ResponseTextDoneEventType($value)'; } 
 }
/// Emitted when text content is finalized.
@immutable final class ResponseTextDoneEvent {const ResponseTextDoneEvent({required this.type, required this.itemId, required this.outputIndex, required this.contentIndex, required this.text, required this.sequenceNumber, required this.logprobs, });

factory ResponseTextDoneEvent.fromJson(Map<String, dynamic> json) { return ResponseTextDoneEvent(
  type: ResponseTextDoneEventType.fromJson(json['type'] as String),
  itemId: json['item_id'] as String,
  outputIndex: (json['output_index'] as num).toInt(),
  contentIndex: (json['content_index'] as num).toInt(),
  text: json['text'] as String,
  sequenceNumber: (json['sequence_number'] as num).toInt(),
  logprobs: (json['logprobs'] as List<dynamic>).map((e) => ResponseLogProb.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The type of the event. Always `response.output_text.done`.
/// 
final ResponseTextDoneEventType type;

/// The ID of the output item that the text content is finalized.
/// 
final String itemId;

/// The index of the output item that the text content is finalized.
/// 
final int outputIndex;

/// The index of the content part that the text content is finalized.
/// 
final int contentIndex;

/// The text content that is finalized.
/// 
final String text;

/// The sequence number for this event.
final int sequenceNumber;

/// The log probabilities of the tokens in the delta.
/// 
final List<ResponseLogProb> logprobs;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'item_id': itemId,
  'output_index': outputIndex,
  'content_index': contentIndex,
  'text': text,
  'sequence_number': sequenceNumber,
  'logprobs': logprobs.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('item_id') && json['item_id'] is String &&
      json.containsKey('output_index') && json['output_index'] is num &&
      json.containsKey('content_index') && json['content_index'] is num &&
      json.containsKey('text') && json['text'] is String &&
      json.containsKey('sequence_number') && json['sequence_number'] is num &&
      json.containsKey('logprobs'); } 
ResponseTextDoneEvent copyWith({ResponseTextDoneEventType? type, String? itemId, int? outputIndex, int? contentIndex, String? text, int? sequenceNumber, List<ResponseLogProb>? logprobs, }) { return ResponseTextDoneEvent(
  type: type ?? this.type,
  itemId: itemId ?? this.itemId,
  outputIndex: outputIndex ?? this.outputIndex,
  contentIndex: contentIndex ?? this.contentIndex,
  text: text ?? this.text,
  sequenceNumber: sequenceNumber ?? this.sequenceNumber,
  logprobs: logprobs ?? this.logprobs,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseTextDoneEvent &&
          type == other.type &&
          itemId == other.itemId &&
          outputIndex == other.outputIndex &&
          contentIndex == other.contentIndex &&
          text == other.text &&
          sequenceNumber == other.sequenceNumber &&
          listEquals(logprobs, other.logprobs); } 
@override int get hashCode { return Object.hash(type, itemId, outputIndex, contentIndex, text, sequenceNumber, Object.hashAll(logprobs)); } 
@override String toString() { return 'ResponseTextDoneEvent(type: $type, itemId: $itemId, outputIndex: $outputIndex, contentIndex: $contentIndex, text: $text, sequenceNumber: $sequenceNumber, logprobs: $logprobs)'; } 
 }
