// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Data about a previous audio response from the model.
/// [Learn more](/docs/guides/audio).
/// 
@immutable final class FineTuneChatCompletionRequestAssistantMessageAudio {const FineTuneChatCompletionRequestAssistantMessageAudio({required this.id});

factory FineTuneChatCompletionRequestAssistantMessageAudio.fromJson(Map<String, dynamic> json) { return FineTuneChatCompletionRequestAssistantMessageAudio(
  id: json['id'] as String,
); }

/// Unique identifier for a previous audio response from the model.
/// 
final String id;

Map<String, dynamic> toJson() { return {
  'id': id,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String; } 
FineTuneChatCompletionRequestAssistantMessageAudio copyWith({String? id}) { return FineTuneChatCompletionRequestAssistantMessageAudio(
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FineTuneChatCompletionRequestAssistantMessageAudio &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'FineTuneChatCompletionRequestAssistantMessageAudio(id: $id)'; } 
 }
