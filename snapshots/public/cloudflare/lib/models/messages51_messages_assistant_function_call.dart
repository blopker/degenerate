// GENERATED CODE - DO NOT MODIFY BY HAND

import 'messages51_messages_assistant_function_call_variant1.dart';final class Messages51MessagesAssistantFunctionCall {const Messages51MessagesAssistantFunctionCall({this.messages51MessagesAssistantFunctionCallVariant1});

factory Messages51MessagesAssistantFunctionCall.fromJson(Map<String, dynamic> json) { return Messages51MessagesAssistantFunctionCall(
  messages51MessagesAssistantFunctionCallVariant1: Messages51MessagesAssistantFunctionCallVariant1.canParse(json) ? Messages51MessagesAssistantFunctionCallVariant1.fromJson(json) : null,
); }

final Messages51MessagesAssistantFunctionCallVariant1? messages51MessagesAssistantFunctionCallVariant1;

/// At least one variant must be present.
bool get isValid { return messages51MessagesAssistantFunctionCallVariant1 != null; } 
Map<String, dynamic> toJson() { return {
  ...?messages51MessagesAssistantFunctionCallVariant1?.toJson(),
}; } 
 }
