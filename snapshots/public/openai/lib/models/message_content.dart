// GENERATED CODE - DO NOT MODIFY BY HAND

import 'computer_screenshot_content.dart';import 'input_file_content.dart';import 'input_image_content.dart';import 'input_text_content.dart';import 'output_text_content.dart';import 'reasoning_text_content.dart';import 'refusal_content.dart';import 'summary_text_content.dart';import 'text_content.dart';/// A content part that makes up an input or output item.
sealed class MessageContent {const MessageContent();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory MessageContent.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'input_text' => MessageContentInputText.fromJson(json),
  'output_text' => MessageContentOutputText.fromJson(json),
  'text' => MessageContentText.fromJson(json),
  'summary_text' => MessageContentSummaryText.fromJson(json),
  'reasoning_text' => MessageContentReasoningText.fromJson(json),
  'refusal' => MessageContentRefusal.fromJson(json),
  'input_image' => MessageContentInputImage.fromJson(json),
  'computer_screenshot' => MessageContentComputerScreenshot.fromJson(json),
  'input_file' => MessageContentInputFile.fromJson(json),
  _ => MessageContent$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is MessageContent$Unknown; } 
 }
final class MessageContentInputText extends MessageContent {const MessageContentInputText(this.inputTextContent);

factory MessageContentInputText.fromJson(Map<String, dynamic> json) { return MessageContentInputText(InputTextContent.fromJson(json)); }

final InputTextContent inputTextContent;

@override String get type { return 'input_text'; } 
@override Map<String, dynamic> toJson() { return {...inputTextContent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MessageContentInputText && inputTextContent == other.inputTextContent; } 
@override int get hashCode { return inputTextContent.hashCode; } 
@override String toString() { return 'MessageContentInputText(inputTextContent: $inputTextContent)'; } 
 }
final class MessageContentOutputText extends MessageContent {const MessageContentOutputText(this.outputTextContent);

factory MessageContentOutputText.fromJson(Map<String, dynamic> json) { return MessageContentOutputText(OutputTextContent.fromJson(json)); }

final OutputTextContent outputTextContent;

@override String get type { return 'output_text'; } 
@override Map<String, dynamic> toJson() { return {...outputTextContent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MessageContentOutputText && outputTextContent == other.outputTextContent; } 
@override int get hashCode { return outputTextContent.hashCode; } 
@override String toString() { return 'MessageContentOutputText(outputTextContent: $outputTextContent)'; } 
 }
final class MessageContentText extends MessageContent {const MessageContentText(this.textContent);

factory MessageContentText.fromJson(Map<String, dynamic> json) { return MessageContentText(TextContent.fromJson(json)); }

final TextContent textContent;

@override String get type { return 'text'; } 
@override Map<String, dynamic> toJson() { return {...textContent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MessageContentText && textContent == other.textContent; } 
@override int get hashCode { return textContent.hashCode; } 
@override String toString() { return 'MessageContentText(textContent: $textContent)'; } 
 }
final class MessageContentSummaryText extends MessageContent {const MessageContentSummaryText(this.summaryTextContent);

factory MessageContentSummaryText.fromJson(Map<String, dynamic> json) { return MessageContentSummaryText(SummaryTextContent.fromJson(json)); }

final SummaryTextContent summaryTextContent;

@override String get type { return 'summary_text'; } 
@override Map<String, dynamic> toJson() { return {...summaryTextContent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MessageContentSummaryText && summaryTextContent == other.summaryTextContent; } 
@override int get hashCode { return summaryTextContent.hashCode; } 
@override String toString() { return 'MessageContentSummaryText(summaryTextContent: $summaryTextContent)'; } 
 }
final class MessageContentReasoningText extends MessageContent {const MessageContentReasoningText(this.reasoningTextContent);

factory MessageContentReasoningText.fromJson(Map<String, dynamic> json) { return MessageContentReasoningText(ReasoningTextContent.fromJson(json)); }

final ReasoningTextContent reasoningTextContent;

@override String get type { return 'reasoning_text'; } 
@override Map<String, dynamic> toJson() { return {...reasoningTextContent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MessageContentReasoningText && reasoningTextContent == other.reasoningTextContent; } 
@override int get hashCode { return reasoningTextContent.hashCode; } 
@override String toString() { return 'MessageContentReasoningText(reasoningTextContent: $reasoningTextContent)'; } 
 }
final class MessageContentRefusal extends MessageContent {const MessageContentRefusal(this.refusalContent);

factory MessageContentRefusal.fromJson(Map<String, dynamic> json) { return MessageContentRefusal(RefusalContent.fromJson(json)); }

final RefusalContent refusalContent;

@override String get type { return 'refusal'; } 
@override Map<String, dynamic> toJson() { return {...refusalContent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MessageContentRefusal && refusalContent == other.refusalContent; } 
@override int get hashCode { return refusalContent.hashCode; } 
@override String toString() { return 'MessageContentRefusal(refusalContent: $refusalContent)'; } 
 }
final class MessageContentInputImage extends MessageContent {const MessageContentInputImage(this.inputImageContent);

factory MessageContentInputImage.fromJson(Map<String, dynamic> json) { return MessageContentInputImage(InputImageContent.fromJson(json)); }

final InputImageContent inputImageContent;

@override String get type { return 'input_image'; } 
@override Map<String, dynamic> toJson() { return {...inputImageContent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MessageContentInputImage && inputImageContent == other.inputImageContent; } 
@override int get hashCode { return inputImageContent.hashCode; } 
@override String toString() { return 'MessageContentInputImage(inputImageContent: $inputImageContent)'; } 
 }
final class MessageContentComputerScreenshot extends MessageContent {const MessageContentComputerScreenshot(this.computerScreenshotContent);

factory MessageContentComputerScreenshot.fromJson(Map<String, dynamic> json) { return MessageContentComputerScreenshot(ComputerScreenshotContent.fromJson(json)); }

final ComputerScreenshotContent computerScreenshotContent;

@override String get type { return 'computer_screenshot'; } 
@override Map<String, dynamic> toJson() { return {...computerScreenshotContent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MessageContentComputerScreenshot && computerScreenshotContent == other.computerScreenshotContent; } 
@override int get hashCode { return computerScreenshotContent.hashCode; } 
@override String toString() { return 'MessageContentComputerScreenshot(computerScreenshotContent: $computerScreenshotContent)'; } 
 }
final class MessageContentInputFile extends MessageContent {const MessageContentInputFile(this.inputFileContent);

factory MessageContentInputFile.fromJson(Map<String, dynamic> json) { return MessageContentInputFile(InputFileContent.fromJson(json)); }

final InputFileContent inputFileContent;

@override String get type { return 'input_file'; } 
@override Map<String, dynamic> toJson() { return {...inputFileContent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MessageContentInputFile && inputFileContent == other.inputFileContent; } 
@override int get hashCode { return inputFileContent.hashCode; } 
@override String toString() { return 'MessageContentInputFile(inputFileContent: $inputFileContent)'; } 
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
