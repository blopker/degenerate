// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'apply_patch_tool_call.dart';import 'apply_patch_tool_call_output.dart';import 'code_interpreter_tool_call.dart';import 'compaction_body.dart';import 'computer_tool_call.dart';import 'custom_tool_call.dart';import 'file_search_tool_call.dart';import 'function_shell_call.dart';import 'function_shell_call_output.dart';import 'function_tool_call.dart';import 'image_gen_tool_call.dart';import 'local_shell_tool_call.dart';import 'mcp_approval_request.dart';import 'mcp_list_tools.dart';import 'mcp_tool_call.dart';import 'output_message.dart';import 'reasoning_item.dart';import 'tool_search_call.dart';import 'tool_search_output.dart';import 'web_search_tool_call.dart';sealed class OutputItem {const OutputItem();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory OutputItem.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'message' => OutputItemMessage.fromJson(json),
  'file_search_call' => OutputItemFileSearchCall.fromJson(json),
  'function_call' => OutputItemFunctionCall.fromJson(json),
  'web_search_call' => OutputItemWebSearchCall.fromJson(json),
  'computer_call' => OutputItemComputerCall.fromJson(json),
  'reasoning' => OutputItemReasoning.fromJson(json),
  'tool_search_call' => OutputItemToolSearchCall.fromJson(json),
  'tool_search_output' => OutputItemToolSearchOutput.fromJson(json),
  'compaction' => OutputItemCompaction.fromJson(json),
  'image_generation_call' => OutputItemImageGenerationCall.fromJson(json),
  'code_interpreter_call' => OutputItemCodeInterpreterCall.fromJson(json),
  'local_shell_call' => OutputItemLocalShellCall.fromJson(json),
  'shell_call' => OutputItemShellCall.fromJson(json),
  'shell_call_output' => OutputItemShellCallOutput.fromJson(json),
  'apply_patch_call' => OutputItemApplyPatchCall.fromJson(json),
  'apply_patch_call_output' => OutputItemApplyPatchCallOutput.fromJson(json),
  'mcp_call' => OutputItemMcpCall.fromJson(json),
  'mcp_list_tools' => OutputItemMcpListTools.fromJson(json),
  'mcp_approval_request' => OutputItemMcpApprovalRequest.fromJson(json),
  'custom_tool_call' => OutputItemCustomToolCall.fromJson(json),
  _ => OutputItem$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is OutputItem$Unknown; } 
 }
@immutable final class OutputItemMessage extends OutputItem {const OutputItemMessage(this.outputMessage);

factory OutputItemMessage.fromJson(Map<String, dynamic> json) { return OutputItemMessage(OutputMessage.fromJson(json)); }

final OutputMessage outputMessage;

@override String get type { return 'message'; } 
@override Map<String, dynamic> toJson() { return {...outputMessage.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OutputItemMessage && outputMessage == other.outputMessage; } 
@override int get hashCode { return outputMessage.hashCode; } 
@override String toString() { return 'OutputItemMessage(outputMessage: $outputMessage)'; } 
 }
@immutable final class OutputItemFileSearchCall extends OutputItem {const OutputItemFileSearchCall(this.fileSearchToolCall);

factory OutputItemFileSearchCall.fromJson(Map<String, dynamic> json) { return OutputItemFileSearchCall(FileSearchToolCall.fromJson(json)); }

final FileSearchToolCall fileSearchToolCall;

@override String get type { return 'file_search_call'; } 
@override Map<String, dynamic> toJson() { return {...fileSearchToolCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OutputItemFileSearchCall && fileSearchToolCall == other.fileSearchToolCall; } 
@override int get hashCode { return fileSearchToolCall.hashCode; } 
@override String toString() { return 'OutputItemFileSearchCall(fileSearchToolCall: $fileSearchToolCall)'; } 
 }
@immutable final class OutputItemFunctionCall extends OutputItem {const OutputItemFunctionCall(this.functionToolCall);

factory OutputItemFunctionCall.fromJson(Map<String, dynamic> json) { return OutputItemFunctionCall(FunctionToolCall.fromJson(json)); }

final FunctionToolCall functionToolCall;

@override String get type { return 'function_call'; } 
@override Map<String, dynamic> toJson() { return {...functionToolCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OutputItemFunctionCall && functionToolCall == other.functionToolCall; } 
@override int get hashCode { return functionToolCall.hashCode; } 
@override String toString() { return 'OutputItemFunctionCall(functionToolCall: $functionToolCall)'; } 
 }
@immutable final class OutputItemWebSearchCall extends OutputItem {const OutputItemWebSearchCall(this.webSearchToolCall);

factory OutputItemWebSearchCall.fromJson(Map<String, dynamic> json) { return OutputItemWebSearchCall(WebSearchToolCall.fromJson(json)); }

final WebSearchToolCall webSearchToolCall;

@override String get type { return 'web_search_call'; } 
@override Map<String, dynamic> toJson() { return {...webSearchToolCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OutputItemWebSearchCall && webSearchToolCall == other.webSearchToolCall; } 
@override int get hashCode { return webSearchToolCall.hashCode; } 
@override String toString() { return 'OutputItemWebSearchCall(webSearchToolCall: $webSearchToolCall)'; } 
 }
@immutable final class OutputItemComputerCall extends OutputItem {const OutputItemComputerCall(this.computerToolCall);

factory OutputItemComputerCall.fromJson(Map<String, dynamic> json) { return OutputItemComputerCall(ComputerToolCall.fromJson(json)); }

final ComputerToolCall computerToolCall;

@override String get type { return 'computer_call'; } 
@override Map<String, dynamic> toJson() { return {...computerToolCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OutputItemComputerCall && computerToolCall == other.computerToolCall; } 
@override int get hashCode { return computerToolCall.hashCode; } 
@override String toString() { return 'OutputItemComputerCall(computerToolCall: $computerToolCall)'; } 
 }
@immutable final class OutputItemReasoning extends OutputItem {const OutputItemReasoning(this.reasoningItem);

factory OutputItemReasoning.fromJson(Map<String, dynamic> json) { return OutputItemReasoning(ReasoningItem.fromJson(json)); }

final ReasoningItem reasoningItem;

@override String get type { return 'reasoning'; } 
@override Map<String, dynamic> toJson() { return {...reasoningItem.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OutputItemReasoning && reasoningItem == other.reasoningItem; } 
@override int get hashCode { return reasoningItem.hashCode; } 
@override String toString() { return 'OutputItemReasoning(reasoningItem: $reasoningItem)'; } 
 }
@immutable final class OutputItemToolSearchCall extends OutputItem {const OutputItemToolSearchCall(this.toolSearchCall);

factory OutputItemToolSearchCall.fromJson(Map<String, dynamic> json) { return OutputItemToolSearchCall(ToolSearchCall.fromJson(json)); }

final ToolSearchCall toolSearchCall;

@override String get type { return 'tool_search_call'; } 
@override Map<String, dynamic> toJson() { return {...toolSearchCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OutputItemToolSearchCall && toolSearchCall == other.toolSearchCall; } 
@override int get hashCode { return toolSearchCall.hashCode; } 
@override String toString() { return 'OutputItemToolSearchCall(toolSearchCall: $toolSearchCall)'; } 
 }
@immutable final class OutputItemToolSearchOutput extends OutputItem {const OutputItemToolSearchOutput(this.toolSearchOutput);

factory OutputItemToolSearchOutput.fromJson(Map<String, dynamic> json) { return OutputItemToolSearchOutput(ToolSearchOutput.fromJson(json)); }

final ToolSearchOutput toolSearchOutput;

@override String get type { return 'tool_search_output'; } 
@override Map<String, dynamic> toJson() { return {...toolSearchOutput.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OutputItemToolSearchOutput && toolSearchOutput == other.toolSearchOutput; } 
@override int get hashCode { return toolSearchOutput.hashCode; } 
@override String toString() { return 'OutputItemToolSearchOutput(toolSearchOutput: $toolSearchOutput)'; } 
 }
@immutable final class OutputItemCompaction extends OutputItem {const OutputItemCompaction(this.compactionBody);

factory OutputItemCompaction.fromJson(Map<String, dynamic> json) { return OutputItemCompaction(CompactionBody.fromJson(json)); }

final CompactionBody compactionBody;

@override String get type { return 'compaction'; } 
@override Map<String, dynamic> toJson() { return {...compactionBody.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OutputItemCompaction && compactionBody == other.compactionBody; } 
@override int get hashCode { return compactionBody.hashCode; } 
@override String toString() { return 'OutputItemCompaction(compactionBody: $compactionBody)'; } 
 }
@immutable final class OutputItemImageGenerationCall extends OutputItem {const OutputItemImageGenerationCall(this.imageGenToolCall);

factory OutputItemImageGenerationCall.fromJson(Map<String, dynamic> json) { return OutputItemImageGenerationCall(ImageGenToolCall.fromJson(json)); }

final ImageGenToolCall imageGenToolCall;

@override String get type { return 'image_generation_call'; } 
@override Map<String, dynamic> toJson() { return {...imageGenToolCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OutputItemImageGenerationCall && imageGenToolCall == other.imageGenToolCall; } 
@override int get hashCode { return imageGenToolCall.hashCode; } 
@override String toString() { return 'OutputItemImageGenerationCall(imageGenToolCall: $imageGenToolCall)'; } 
 }
@immutable final class OutputItemCodeInterpreterCall extends OutputItem {const OutputItemCodeInterpreterCall(this.codeInterpreterToolCall);

factory OutputItemCodeInterpreterCall.fromJson(Map<String, dynamic> json) { return OutputItemCodeInterpreterCall(CodeInterpreterToolCall.fromJson(json)); }

final CodeInterpreterToolCall codeInterpreterToolCall;

@override String get type { return 'code_interpreter_call'; } 
@override Map<String, dynamic> toJson() { return {...codeInterpreterToolCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OutputItemCodeInterpreterCall && codeInterpreterToolCall == other.codeInterpreterToolCall; } 
@override int get hashCode { return codeInterpreterToolCall.hashCode; } 
@override String toString() { return 'OutputItemCodeInterpreterCall(codeInterpreterToolCall: $codeInterpreterToolCall)'; } 
 }
@immutable final class OutputItemLocalShellCall extends OutputItem {const OutputItemLocalShellCall(this.localShellToolCall);

factory OutputItemLocalShellCall.fromJson(Map<String, dynamic> json) { return OutputItemLocalShellCall(LocalShellToolCall.fromJson(json)); }

final LocalShellToolCall localShellToolCall;

@override String get type { return 'local_shell_call'; } 
@override Map<String, dynamic> toJson() { return {...localShellToolCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OutputItemLocalShellCall && localShellToolCall == other.localShellToolCall; } 
@override int get hashCode { return localShellToolCall.hashCode; } 
@override String toString() { return 'OutputItemLocalShellCall(localShellToolCall: $localShellToolCall)'; } 
 }
@immutable final class OutputItemShellCall extends OutputItem {const OutputItemShellCall(this.functionShellCall);

factory OutputItemShellCall.fromJson(Map<String, dynamic> json) { return OutputItemShellCall(FunctionShellCall.fromJson(json)); }

final FunctionShellCall functionShellCall;

@override String get type { return 'shell_call'; } 
@override Map<String, dynamic> toJson() { return {...functionShellCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OutputItemShellCall && functionShellCall == other.functionShellCall; } 
@override int get hashCode { return functionShellCall.hashCode; } 
@override String toString() { return 'OutputItemShellCall(functionShellCall: $functionShellCall)'; } 
 }
@immutable final class OutputItemShellCallOutput extends OutputItem {const OutputItemShellCallOutput(this.functionShellCallOutput);

factory OutputItemShellCallOutput.fromJson(Map<String, dynamic> json) { return OutputItemShellCallOutput(FunctionShellCallOutput.fromJson(json)); }

final FunctionShellCallOutput functionShellCallOutput;

@override String get type { return 'shell_call_output'; } 
@override Map<String, dynamic> toJson() { return {...functionShellCallOutput.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OutputItemShellCallOutput && functionShellCallOutput == other.functionShellCallOutput; } 
@override int get hashCode { return functionShellCallOutput.hashCode; } 
@override String toString() { return 'OutputItemShellCallOutput(functionShellCallOutput: $functionShellCallOutput)'; } 
 }
@immutable final class OutputItemApplyPatchCall extends OutputItem {const OutputItemApplyPatchCall(this.applyPatchToolCall);

factory OutputItemApplyPatchCall.fromJson(Map<String, dynamic> json) { return OutputItemApplyPatchCall(ApplyPatchToolCall.fromJson(json)); }

final ApplyPatchToolCall applyPatchToolCall;

@override String get type { return 'apply_patch_call'; } 
@override Map<String, dynamic> toJson() { return {...applyPatchToolCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OutputItemApplyPatchCall && applyPatchToolCall == other.applyPatchToolCall; } 
@override int get hashCode { return applyPatchToolCall.hashCode; } 
@override String toString() { return 'OutputItemApplyPatchCall(applyPatchToolCall: $applyPatchToolCall)'; } 
 }
@immutable final class OutputItemApplyPatchCallOutput extends OutputItem {const OutputItemApplyPatchCallOutput(this.applyPatchToolCallOutput);

factory OutputItemApplyPatchCallOutput.fromJson(Map<String, dynamic> json) { return OutputItemApplyPatchCallOutput(ApplyPatchToolCallOutput.fromJson(json)); }

final ApplyPatchToolCallOutput applyPatchToolCallOutput;

@override String get type { return 'apply_patch_call_output'; } 
@override Map<String, dynamic> toJson() { return {...applyPatchToolCallOutput.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OutputItemApplyPatchCallOutput && applyPatchToolCallOutput == other.applyPatchToolCallOutput; } 
@override int get hashCode { return applyPatchToolCallOutput.hashCode; } 
@override String toString() { return 'OutputItemApplyPatchCallOutput(applyPatchToolCallOutput: $applyPatchToolCallOutput)'; } 
 }
@immutable final class OutputItemMcpCall extends OutputItem {const OutputItemMcpCall(this.mcpToolCall);

factory OutputItemMcpCall.fromJson(Map<String, dynamic> json) { return OutputItemMcpCall(McpToolCall.fromJson(json)); }

final McpToolCall mcpToolCall;

@override String get type { return 'mcp_call'; } 
@override Map<String, dynamic> toJson() { return {...mcpToolCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OutputItemMcpCall && mcpToolCall == other.mcpToolCall; } 
@override int get hashCode { return mcpToolCall.hashCode; } 
@override String toString() { return 'OutputItemMcpCall(mcpToolCall: $mcpToolCall)'; } 
 }
@immutable final class OutputItemMcpListTools extends OutputItem {const OutputItemMcpListTools(this.mcpListTools);

factory OutputItemMcpListTools.fromJson(Map<String, dynamic> json) { return OutputItemMcpListTools(McpListTools.fromJson(json)); }

final McpListTools mcpListTools;

@override String get type { return 'mcp_list_tools'; } 
@override Map<String, dynamic> toJson() { return {...mcpListTools.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OutputItemMcpListTools && mcpListTools == other.mcpListTools; } 
@override int get hashCode { return mcpListTools.hashCode; } 
@override String toString() { return 'OutputItemMcpListTools(mcpListTools: $mcpListTools)'; } 
 }
@immutable final class OutputItemMcpApprovalRequest extends OutputItem {const OutputItemMcpApprovalRequest(this.mcpApprovalRequest);

factory OutputItemMcpApprovalRequest.fromJson(Map<String, dynamic> json) { return OutputItemMcpApprovalRequest(McpApprovalRequest.fromJson(json)); }

final McpApprovalRequest mcpApprovalRequest;

@override String get type { return 'mcp_approval_request'; } 
@override Map<String, dynamic> toJson() { return {...mcpApprovalRequest.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OutputItemMcpApprovalRequest && mcpApprovalRequest == other.mcpApprovalRequest; } 
@override int get hashCode { return mcpApprovalRequest.hashCode; } 
@override String toString() { return 'OutputItemMcpApprovalRequest(mcpApprovalRequest: $mcpApprovalRequest)'; } 
 }
@immutable final class OutputItemCustomToolCall extends OutputItem {const OutputItemCustomToolCall(this.customToolCall);

factory OutputItemCustomToolCall.fromJson(Map<String, dynamic> json) { return OutputItemCustomToolCall(CustomToolCall.fromJson(json)); }

final CustomToolCall customToolCall;

@override String get type { return 'custom_tool_call'; } 
@override Map<String, dynamic> toJson() { return {...customToolCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OutputItemCustomToolCall && customToolCall == other.customToolCall; } 
@override int get hashCode { return customToolCall.hashCode; } 
@override String toString() { return 'OutputItemCustomToolCall(customToolCall: $customToolCall)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
@immutable final class OutputItem$Unknown extends OutputItem {const OutputItem$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OutputItem$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'OutputItem.unknown($json)'; } 
 }
