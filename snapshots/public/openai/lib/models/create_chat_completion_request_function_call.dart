// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'chat_completion_function_call_option.dart';/// `none` means the model will not call a function and instead generates a message. `auto` means the model can pick between generating a message or calling a function.
/// 
@immutable final class CreateChatCompletionRequestFunctionCallVariant1 {const CreateChatCompletionRequestFunctionCallVariant1._(this.value);

factory CreateChatCompletionRequestFunctionCallVariant1.fromJson(String json) { return switch (json) {
  'none' => none,
  'auto' => auto,
  _ => CreateChatCompletionRequestFunctionCallVariant1._(json),
}; }

static const CreateChatCompletionRequestFunctionCallVariant1 none = CreateChatCompletionRequestFunctionCallVariant1._('none');

static const CreateChatCompletionRequestFunctionCallVariant1 auto = CreateChatCompletionRequestFunctionCallVariant1._('auto');

static const List<CreateChatCompletionRequestFunctionCallVariant1> values = [none, auto];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateChatCompletionRequestFunctionCallVariant1 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CreateChatCompletionRequestFunctionCallVariant1($value)'; } 
 }
typedef CreateChatCompletionRequestFunctionCall = OneOf2<CreateChatCompletionRequestFunctionCallVariant1,ChatCompletionFunctionCallOption>;
