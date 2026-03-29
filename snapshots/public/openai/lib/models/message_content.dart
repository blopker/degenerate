// GENERATED CODE - DO NOT MODIFY BY HAND

import 'computer_screenshot_content.dart';import 'input_file_content.dart';import 'input_image_content.dart';import 'input_text_content.dart';import 'output_text_content.dart';import 'reasoning_text_content.dart';import 'refusal_content.dart';import 'summary_text_content.dart';import 'text_content.dart';/// A content part that makes up an input or output item.
sealed class MessageContent {const MessageContent();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory MessageContent.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'InputTextContent' => MessageContentInputTextContent.fromJson(json),
  'OutputTextContent' => MessageContentOutputTextContent.fromJson(json),
  'TextContent' => MessageContentTextContent.fromJson(json),
  'SummaryTextContent' => MessageContentSummaryTextContent.fromJson(json),
  'ReasoningTextContent' => MessageContentReasoningTextContent.fromJson(json),
  'RefusalContent' => MessageContentRefusalContent.fromJson(json),
  'InputImageContent' => MessageContentInputImageContent.fromJson(json),
  'ComputerScreenshotContent' => MessageContentComputerScreenshotContent.fromJson(json),
  'InputFileContent' => MessageContentInputFileContent.fromJson(json),
  _ => MessageContent$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is MessageContent$Unknown; } 
 }
final class MessageContentInputTextContent extends MessageContent {const MessageContentInputTextContent(this.inputTextContent);

factory MessageContentInputTextContent.fromJson(Map<String, dynamic> json) { return MessageContentInputTextContent(InputTextContent.fromJson(json)); }

final InputTextContent inputTextContent;

@override String get type { return 'InputTextContent'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...inputTextContent.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MessageContentInputTextContent && inputTextContent == other.inputTextContent; } 
@override int get hashCode { return inputTextContent.hashCode; } 
@override String toString() { return 'MessageContentInputTextContent(inputTextContent: $inputTextContent)'; } 
 }
final class MessageContentOutputTextContent extends MessageContent {const MessageContentOutputTextContent(this.outputTextContent);

factory MessageContentOutputTextContent.fromJson(Map<String, dynamic> json) { return MessageContentOutputTextContent(OutputTextContent.fromJson(json)); }

final OutputTextContent outputTextContent;

@override String get type { return 'OutputTextContent'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...outputTextContent.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MessageContentOutputTextContent && outputTextContent == other.outputTextContent; } 
@override int get hashCode { return outputTextContent.hashCode; } 
@override String toString() { return 'MessageContentOutputTextContent(outputTextContent: $outputTextContent)'; } 
 }
final class MessageContentTextContent extends MessageContent {const MessageContentTextContent(this.textContent);

factory MessageContentTextContent.fromJson(Map<String, dynamic> json) { return MessageContentTextContent(TextContent.fromJson(json)); }

final TextContent textContent;

@override String get type { return 'TextContent'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...textContent.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MessageContentTextContent && textContent == other.textContent; } 
@override int get hashCode { return textContent.hashCode; } 
@override String toString() { return 'MessageContentTextContent(textContent: $textContent)'; } 
 }
final class MessageContentSummaryTextContent extends MessageContent {const MessageContentSummaryTextContent(this.summaryTextContent);

factory MessageContentSummaryTextContent.fromJson(Map<String, dynamic> json) { return MessageContentSummaryTextContent(SummaryTextContent.fromJson(json)); }

final SummaryTextContent summaryTextContent;

@override String get type { return 'SummaryTextContent'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...summaryTextContent.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MessageContentSummaryTextContent && summaryTextContent == other.summaryTextContent; } 
@override int get hashCode { return summaryTextContent.hashCode; } 
@override String toString() { return 'MessageContentSummaryTextContent(summaryTextContent: $summaryTextContent)'; } 
 }
final class MessageContentReasoningTextContent extends MessageContent {const MessageContentReasoningTextContent(this.reasoningTextContent);

factory MessageContentReasoningTextContent.fromJson(Map<String, dynamic> json) { return MessageContentReasoningTextContent(ReasoningTextContent.fromJson(json)); }

final ReasoningTextContent reasoningTextContent;

@override String get type { return 'ReasoningTextContent'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...reasoningTextContent.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MessageContentReasoningTextContent && reasoningTextContent == other.reasoningTextContent; } 
@override int get hashCode { return reasoningTextContent.hashCode; } 
@override String toString() { return 'MessageContentReasoningTextContent(reasoningTextContent: $reasoningTextContent)'; } 
 }
final class MessageContentRefusalContent extends MessageContent {const MessageContentRefusalContent(this.refusalContent);

factory MessageContentRefusalContent.fromJson(Map<String, dynamic> json) { return MessageContentRefusalContent(RefusalContent.fromJson(json)); }

final RefusalContent refusalContent;

@override String get type { return 'RefusalContent'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...refusalContent.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MessageContentRefusalContent && refusalContent == other.refusalContent; } 
@override int get hashCode { return refusalContent.hashCode; } 
@override String toString() { return 'MessageContentRefusalContent(refusalContent: $refusalContent)'; } 
 }
final class MessageContentInputImageContent extends MessageContent {const MessageContentInputImageContent(this.inputImageContent);

factory MessageContentInputImageContent.fromJson(Map<String, dynamic> json) { return MessageContentInputImageContent(InputImageContent.fromJson(json)); }

final InputImageContent inputImageContent;

@override String get type { return 'InputImageContent'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...inputImageContent.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MessageContentInputImageContent && inputImageContent == other.inputImageContent; } 
@override int get hashCode { return inputImageContent.hashCode; } 
@override String toString() { return 'MessageContentInputImageContent(inputImageContent: $inputImageContent)'; } 
 }
final class MessageContentComputerScreenshotContent extends MessageContent {const MessageContentComputerScreenshotContent(this.computerScreenshotContent);

factory MessageContentComputerScreenshotContent.fromJson(Map<String, dynamic> json) { return MessageContentComputerScreenshotContent(ComputerScreenshotContent.fromJson(json)); }

final ComputerScreenshotContent computerScreenshotContent;

@override String get type { return 'ComputerScreenshotContent'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...computerScreenshotContent.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MessageContentComputerScreenshotContent && computerScreenshotContent == other.computerScreenshotContent; } 
@override int get hashCode { return computerScreenshotContent.hashCode; } 
@override String toString() { return 'MessageContentComputerScreenshotContent(computerScreenshotContent: $computerScreenshotContent)'; } 
 }
final class MessageContentInputFileContent extends MessageContent {const MessageContentInputFileContent(this.inputFileContent);

factory MessageContentInputFileContent.fromJson(Map<String, dynamic> json) { return MessageContentInputFileContent(InputFileContent.fromJson(json)); }

final InputFileContent inputFileContent;

@override String get type { return 'InputFileContent'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...inputFileContent.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MessageContentInputFileContent && inputFileContent == other.inputFileContent; } 
@override int get hashCode { return inputFileContent.hashCode; } 
@override String toString() { return 'MessageContentInputFileContent(inputFileContent: $inputFileContent)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
final class MessageContent$Unknown extends MessageContent {const MessageContent$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MessageContent$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'MessageContent.unknown($json)'; } 
 }
