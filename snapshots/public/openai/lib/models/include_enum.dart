// GENERATED CODE - DO NOT MODIFY BY HAND

/// Specify additional output data to include in the model response. Currently supported values are:
/// - `web_search_call.action.sources`: Include the sources of the web search tool call.
/// - `code_interpreter_call.outputs`: Includes the outputs of python code execution in code interpreter tool call items.
/// - `computer_call_output.output.image_url`: Include image urls from the computer call output.
/// - `file_search_call.results`: Include the search results of the file search tool call.
/// - `message.input_image.image_url`: Include image urls from the input message.
/// - `message.output_text.logprobs`: Include logprobs with assistant messages.
/// - `reasoning.encrypted_content`: Includes an encrypted version of reasoning tokens in reasoning item outputs. This enables reasoning items to be used in multi-turn conversations when using the Responses API statelessly (like when the `store` parameter is set to `false`, or when an organization is enrolled in the zero data retention program).
final class IncludeEnum {const IncludeEnum._(this.value);

factory IncludeEnum.fromJson(String json) { return switch (json) {
  'file_search_call.results' => fileSearchCallResults,
  'web_search_call.results' => webSearchCallResults,
  'web_search_call.action.sources' => webSearchCallActionSources,
  'message.input_image.image_url' => messageInputImageImageUrl,
  'computer_call_output.output.image_url' => computerCallOutputOutputImageUrl,
  'code_interpreter_call.outputs' => codeInterpreterCallOutputs,
  'reasoning.encrypted_content' => reasoningEncryptedContent,
  'message.output_text.logprobs' => messageOutputTextLogprobs,
  _ => IncludeEnum._(json),
}; }

static const IncludeEnum fileSearchCallResults = IncludeEnum._('file_search_call.results');

static const IncludeEnum webSearchCallResults = IncludeEnum._('web_search_call.results');

static const IncludeEnum webSearchCallActionSources = IncludeEnum._('web_search_call.action.sources');

static const IncludeEnum messageInputImageImageUrl = IncludeEnum._('message.input_image.image_url');

static const IncludeEnum computerCallOutputOutputImageUrl = IncludeEnum._('computer_call_output.output.image_url');

static const IncludeEnum codeInterpreterCallOutputs = IncludeEnum._('code_interpreter_call.outputs');

static const IncludeEnum reasoningEncryptedContent = IncludeEnum._('reasoning.encrypted_content');

static const IncludeEnum messageOutputTextLogprobs = IncludeEnum._('message.output_text.logprobs');

static const List<IncludeEnum> values = [fileSearchCallResults, webSearchCallResults, webSearchCallActionSources, messageInputImageImageUrl, computerCallOutputOutputImageUrl, codeInterpreterCallOutputs, reasoningEncryptedContent, messageOutputTextLogprobs];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IncludeEnum && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IncludeEnum($value)'; } 
 }
