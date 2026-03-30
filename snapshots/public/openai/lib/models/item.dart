// GENERATED CODE - DO NOT MODIFY BY HAND

import 'apply_patch_tool_call_item_param.dart';import 'apply_patch_tool_call_output_item_param.dart';import 'code_interpreter_tool_call.dart';import 'compaction_summary_item_param.dart';import 'computer_call_output_item_param.dart';import 'computer_tool_call.dart';import 'custom_tool_call.dart';import 'custom_tool_call_output.dart';import 'file_search_tool_call.dart';import 'function_call_output_item_param.dart';import 'function_shell_call_item_param.dart';import 'function_shell_call_output_item_param.dart';import 'function_tool_call.dart';import 'image_gen_tool_call.dart';import 'local_shell_tool_call.dart';import 'local_shell_tool_call_output.dart';import 'mcp_approval_request.dart';import 'mcp_approval_response.dart';import 'mcp_list_tools.dart';import 'mcp_tool_call.dart';import 'output_message.dart';import 'reasoning_item.dart';import 'tool_search_call_item_param.dart';import 'tool_search_output_item_param.dart';import 'web_search_tool_call.dart';/// Content item used to generate a response.
/// 
sealed class Item {const Item();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory Item.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'message' => ItemMessage.fromJson(json),
  'file_search_call' => ItemFileSearchCall.fromJson(json),
  'computer_call' => ItemComputerCall.fromJson(json),
  'computer_call_output' => ItemComputerCallOutput.fromJson(json),
  'web_search_call' => ItemWebSearchCall.fromJson(json),
  'function_call' => ItemFunctionCall.fromJson(json),
  'function_call_output' => ItemFunctionCallOutput.fromJson(json),
  'tool_search_call' => ItemToolSearchCall.fromJson(json),
  'tool_search_output' => ItemToolSearchOutput.fromJson(json),
  'reasoning' => ItemReasoning.fromJson(json),
  'compaction' => ItemCompaction.fromJson(json),
  'image_generation_call' => ItemImageGenerationCall.fromJson(json),
  'code_interpreter_call' => ItemCodeInterpreterCall.fromJson(json),
  'local_shell_call' => ItemLocalShellCall.fromJson(json),
  'local_shell_call_output' => ItemLocalShellCallOutput.fromJson(json),
  'shell_call' => ItemShellCall.fromJson(json),
  'shell_call_output' => ItemShellCallOutput.fromJson(json),
  'apply_patch_call' => ItemApplyPatchCall.fromJson(json),
  'apply_patch_call_output' => ItemApplyPatchCallOutput.fromJson(json),
  'mcp_list_tools' => ItemMcpListTools.fromJson(json),
  'mcp_approval_request' => ItemMcpApprovalRequest.fromJson(json),
  'mcp_approval_response' => ItemMcpApprovalResponse.fromJson(json),
  'mcp_call' => ItemMcpCall.fromJson(json),
  'custom_tool_call_output' => ItemCustomToolCallOutput.fromJson(json),
  'custom_tool_call' => ItemCustomToolCall.fromJson(json),
  _ => Item$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is Item$Unknown; } 
 }
final class ItemMessage extends Item {const ItemMessage(this.outputMessage);

factory ItemMessage.fromJson(Map<String, dynamic> json) { return ItemMessage(OutputMessage.fromJson(json)); }

final OutputMessage outputMessage;

@override String get type { return 'message'; } 
@override Map<String, dynamic> toJson() { return {...outputMessage.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemMessage && outputMessage == other.outputMessage; } 
@override int get hashCode { return outputMessage.hashCode; } 
@override String toString() { return 'ItemMessage(outputMessage: $outputMessage)'; } 
 }
final class ItemFileSearchCall extends Item {const ItemFileSearchCall(this.fileSearchToolCall);

factory ItemFileSearchCall.fromJson(Map<String, dynamic> json) { return ItemFileSearchCall(FileSearchToolCall.fromJson(json)); }

final FileSearchToolCall fileSearchToolCall;

@override String get type { return 'file_search_call'; } 
@override Map<String, dynamic> toJson() { return {...fileSearchToolCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFileSearchCall && fileSearchToolCall == other.fileSearchToolCall; } 
@override int get hashCode { return fileSearchToolCall.hashCode; } 
@override String toString() { return 'ItemFileSearchCall(fileSearchToolCall: $fileSearchToolCall)'; } 
 }
final class ItemComputerCall extends Item {const ItemComputerCall(this.computerToolCall);

factory ItemComputerCall.fromJson(Map<String, dynamic> json) { return ItemComputerCall(ComputerToolCall.fromJson(json)); }

final ComputerToolCall computerToolCall;

@override String get type { return 'computer_call'; } 
@override Map<String, dynamic> toJson() { return {...computerToolCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemComputerCall && computerToolCall == other.computerToolCall; } 
@override int get hashCode { return computerToolCall.hashCode; } 
@override String toString() { return 'ItemComputerCall(computerToolCall: $computerToolCall)'; } 
 }
final class ItemComputerCallOutput extends Item {const ItemComputerCallOutput(this.computerCallOutputItemParam);

factory ItemComputerCallOutput.fromJson(Map<String, dynamic> json) { return ItemComputerCallOutput(ComputerCallOutputItemParam.fromJson(json)); }

final ComputerCallOutputItemParam computerCallOutputItemParam;

@override String get type { return 'computer_call_output'; } 
@override Map<String, dynamic> toJson() { return {...computerCallOutputItemParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemComputerCallOutput && computerCallOutputItemParam == other.computerCallOutputItemParam; } 
@override int get hashCode { return computerCallOutputItemParam.hashCode; } 
@override String toString() { return 'ItemComputerCallOutput(computerCallOutputItemParam: $computerCallOutputItemParam)'; } 
 }
final class ItemWebSearchCall extends Item {const ItemWebSearchCall(this.webSearchToolCall);

factory ItemWebSearchCall.fromJson(Map<String, dynamic> json) { return ItemWebSearchCall(WebSearchToolCall.fromJson(json)); }

final WebSearchToolCall webSearchToolCall;

@override String get type { return 'web_search_call'; } 
@override Map<String, dynamic> toJson() { return {...webSearchToolCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemWebSearchCall && webSearchToolCall == other.webSearchToolCall; } 
@override int get hashCode { return webSearchToolCall.hashCode; } 
@override String toString() { return 'ItemWebSearchCall(webSearchToolCall: $webSearchToolCall)'; } 
 }
final class ItemFunctionCall extends Item {const ItemFunctionCall(this.functionToolCall);

factory ItemFunctionCall.fromJson(Map<String, dynamic> json) { return ItemFunctionCall(FunctionToolCall.fromJson(json)); }

final FunctionToolCall functionToolCall;

@override String get type { return 'function_call'; } 
@override Map<String, dynamic> toJson() { return {...functionToolCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFunctionCall && functionToolCall == other.functionToolCall; } 
@override int get hashCode { return functionToolCall.hashCode; } 
@override String toString() { return 'ItemFunctionCall(functionToolCall: $functionToolCall)'; } 
 }
final class ItemFunctionCallOutput extends Item {const ItemFunctionCallOutput(this.functionCallOutputItemParam);

factory ItemFunctionCallOutput.fromJson(Map<String, dynamic> json) { return ItemFunctionCallOutput(FunctionCallOutputItemParam.fromJson(json)); }

final FunctionCallOutputItemParam functionCallOutputItemParam;

@override String get type { return 'function_call_output'; } 
@override Map<String, dynamic> toJson() { return {...functionCallOutputItemParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFunctionCallOutput && functionCallOutputItemParam == other.functionCallOutputItemParam; } 
@override int get hashCode { return functionCallOutputItemParam.hashCode; } 
@override String toString() { return 'ItemFunctionCallOutput(functionCallOutputItemParam: $functionCallOutputItemParam)'; } 
 }
final class ItemToolSearchCall extends Item {const ItemToolSearchCall(this.toolSearchCallItemParam);

factory ItemToolSearchCall.fromJson(Map<String, dynamic> json) { return ItemToolSearchCall(ToolSearchCallItemParam.fromJson(json)); }

final ToolSearchCallItemParam toolSearchCallItemParam;

@override String get type { return 'tool_search_call'; } 
@override Map<String, dynamic> toJson() { return {...toolSearchCallItemParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemToolSearchCall && toolSearchCallItemParam == other.toolSearchCallItemParam; } 
@override int get hashCode { return toolSearchCallItemParam.hashCode; } 
@override String toString() { return 'ItemToolSearchCall(toolSearchCallItemParam: $toolSearchCallItemParam)'; } 
 }
final class ItemToolSearchOutput extends Item {const ItemToolSearchOutput(this.toolSearchOutputItemParam);

factory ItemToolSearchOutput.fromJson(Map<String, dynamic> json) { return ItemToolSearchOutput(ToolSearchOutputItemParam.fromJson(json)); }

final ToolSearchOutputItemParam toolSearchOutputItemParam;

@override String get type { return 'tool_search_output'; } 
@override Map<String, dynamic> toJson() { return {...toolSearchOutputItemParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemToolSearchOutput && toolSearchOutputItemParam == other.toolSearchOutputItemParam; } 
@override int get hashCode { return toolSearchOutputItemParam.hashCode; } 
@override String toString() { return 'ItemToolSearchOutput(toolSearchOutputItemParam: $toolSearchOutputItemParam)'; } 
 }
final class ItemReasoning extends Item {const ItemReasoning(this.reasoningItem);

factory ItemReasoning.fromJson(Map<String, dynamic> json) { return ItemReasoning(ReasoningItem.fromJson(json)); }

final ReasoningItem reasoningItem;

@override String get type { return 'reasoning'; } 
@override Map<String, dynamic> toJson() { return {...reasoningItem.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemReasoning && reasoningItem == other.reasoningItem; } 
@override int get hashCode { return reasoningItem.hashCode; } 
@override String toString() { return 'ItemReasoning(reasoningItem: $reasoningItem)'; } 
 }
final class ItemCompaction extends Item {const ItemCompaction(this.compactionSummaryItemParam);

factory ItemCompaction.fromJson(Map<String, dynamic> json) { return ItemCompaction(CompactionSummaryItemParam.fromJson(json)); }

final CompactionSummaryItemParam compactionSummaryItemParam;

@override String get type { return 'compaction'; } 
@override Map<String, dynamic> toJson() { return {...compactionSummaryItemParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemCompaction && compactionSummaryItemParam == other.compactionSummaryItemParam; } 
@override int get hashCode { return compactionSummaryItemParam.hashCode; } 
@override String toString() { return 'ItemCompaction(compactionSummaryItemParam: $compactionSummaryItemParam)'; } 
 }
final class ItemImageGenerationCall extends Item {const ItemImageGenerationCall(this.imageGenToolCall);

factory ItemImageGenerationCall.fromJson(Map<String, dynamic> json) { return ItemImageGenerationCall(ImageGenToolCall.fromJson(json)); }

final ImageGenToolCall imageGenToolCall;

@override String get type { return 'image_generation_call'; } 
@override Map<String, dynamic> toJson() { return {...imageGenToolCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemImageGenerationCall && imageGenToolCall == other.imageGenToolCall; } 
@override int get hashCode { return imageGenToolCall.hashCode; } 
@override String toString() { return 'ItemImageGenerationCall(imageGenToolCall: $imageGenToolCall)'; } 
 }
final class ItemCodeInterpreterCall extends Item {const ItemCodeInterpreterCall(this.codeInterpreterToolCall);

factory ItemCodeInterpreterCall.fromJson(Map<String, dynamic> json) { return ItemCodeInterpreterCall(CodeInterpreterToolCall.fromJson(json)); }

final CodeInterpreterToolCall codeInterpreterToolCall;

@override String get type { return 'code_interpreter_call'; } 
@override Map<String, dynamic> toJson() { return {...codeInterpreterToolCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemCodeInterpreterCall && codeInterpreterToolCall == other.codeInterpreterToolCall; } 
@override int get hashCode { return codeInterpreterToolCall.hashCode; } 
@override String toString() { return 'ItemCodeInterpreterCall(codeInterpreterToolCall: $codeInterpreterToolCall)'; } 
 }
final class ItemLocalShellCall extends Item {const ItemLocalShellCall(this.localShellToolCall);

factory ItemLocalShellCall.fromJson(Map<String, dynamic> json) { return ItemLocalShellCall(LocalShellToolCall.fromJson(json)); }

final LocalShellToolCall localShellToolCall;

@override String get type { return 'local_shell_call'; } 
@override Map<String, dynamic> toJson() { return {...localShellToolCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemLocalShellCall && localShellToolCall == other.localShellToolCall; } 
@override int get hashCode { return localShellToolCall.hashCode; } 
@override String toString() { return 'ItemLocalShellCall(localShellToolCall: $localShellToolCall)'; } 
 }
final class ItemLocalShellCallOutput extends Item {const ItemLocalShellCallOutput(this.localShellToolCallOutput);

factory ItemLocalShellCallOutput.fromJson(Map<String, dynamic> json) { return ItemLocalShellCallOutput(LocalShellToolCallOutput.fromJson(json)); }

final LocalShellToolCallOutput localShellToolCallOutput;

@override String get type { return 'local_shell_call_output'; } 
@override Map<String, dynamic> toJson() { return {...localShellToolCallOutput.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemLocalShellCallOutput && localShellToolCallOutput == other.localShellToolCallOutput; } 
@override int get hashCode { return localShellToolCallOutput.hashCode; } 
@override String toString() { return 'ItemLocalShellCallOutput(localShellToolCallOutput: $localShellToolCallOutput)'; } 
 }
final class ItemShellCall extends Item {const ItemShellCall(this.functionShellCallItemParam);

factory ItemShellCall.fromJson(Map<String, dynamic> json) { return ItemShellCall(FunctionShellCallItemParam.fromJson(json)); }

final FunctionShellCallItemParam functionShellCallItemParam;

@override String get type { return 'shell_call'; } 
@override Map<String, dynamic> toJson() { return {...functionShellCallItemParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemShellCall && functionShellCallItemParam == other.functionShellCallItemParam; } 
@override int get hashCode { return functionShellCallItemParam.hashCode; } 
@override String toString() { return 'ItemShellCall(functionShellCallItemParam: $functionShellCallItemParam)'; } 
 }
final class ItemShellCallOutput extends Item {const ItemShellCallOutput(this.functionShellCallOutputItemParam);

factory ItemShellCallOutput.fromJson(Map<String, dynamic> json) { return ItemShellCallOutput(FunctionShellCallOutputItemParam.fromJson(json)); }

final FunctionShellCallOutputItemParam functionShellCallOutputItemParam;

@override String get type { return 'shell_call_output'; } 
@override Map<String, dynamic> toJson() { return {...functionShellCallOutputItemParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemShellCallOutput && functionShellCallOutputItemParam == other.functionShellCallOutputItemParam; } 
@override int get hashCode { return functionShellCallOutputItemParam.hashCode; } 
@override String toString() { return 'ItemShellCallOutput(functionShellCallOutputItemParam: $functionShellCallOutputItemParam)'; } 
 }
final class ItemApplyPatchCall extends Item {const ItemApplyPatchCall(this.applyPatchToolCallItemParam);

factory ItemApplyPatchCall.fromJson(Map<String, dynamic> json) { return ItemApplyPatchCall(ApplyPatchToolCallItemParam.fromJson(json)); }

final ApplyPatchToolCallItemParam applyPatchToolCallItemParam;

@override String get type { return 'apply_patch_call'; } 
@override Map<String, dynamic> toJson() { return {...applyPatchToolCallItemParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemApplyPatchCall && applyPatchToolCallItemParam == other.applyPatchToolCallItemParam; } 
@override int get hashCode { return applyPatchToolCallItemParam.hashCode; } 
@override String toString() { return 'ItemApplyPatchCall(applyPatchToolCallItemParam: $applyPatchToolCallItemParam)'; } 
 }
final class ItemApplyPatchCallOutput extends Item {const ItemApplyPatchCallOutput(this.applyPatchToolCallOutputItemParam);

factory ItemApplyPatchCallOutput.fromJson(Map<String, dynamic> json) { return ItemApplyPatchCallOutput(ApplyPatchToolCallOutputItemParam.fromJson(json)); }

final ApplyPatchToolCallOutputItemParam applyPatchToolCallOutputItemParam;

@override String get type { return 'apply_patch_call_output'; } 
@override Map<String, dynamic> toJson() { return {...applyPatchToolCallOutputItemParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemApplyPatchCallOutput && applyPatchToolCallOutputItemParam == other.applyPatchToolCallOutputItemParam; } 
@override int get hashCode { return applyPatchToolCallOutputItemParam.hashCode; } 
@override String toString() { return 'ItemApplyPatchCallOutput(applyPatchToolCallOutputItemParam: $applyPatchToolCallOutputItemParam)'; } 
 }
final class ItemMcpListTools extends Item {const ItemMcpListTools(this.mcpListTools);

factory ItemMcpListTools.fromJson(Map<String, dynamic> json) { return ItemMcpListTools(McpListTools.fromJson(json)); }

final McpListTools mcpListTools;

@override String get type { return 'mcp_list_tools'; } 
@override Map<String, dynamic> toJson() { return {...mcpListTools.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemMcpListTools && mcpListTools == other.mcpListTools; } 
@override int get hashCode { return mcpListTools.hashCode; } 
@override String toString() { return 'ItemMcpListTools(mcpListTools: $mcpListTools)'; } 
 }
final class ItemMcpApprovalRequest extends Item {const ItemMcpApprovalRequest(this.mcpApprovalRequest);

factory ItemMcpApprovalRequest.fromJson(Map<String, dynamic> json) { return ItemMcpApprovalRequest(McpApprovalRequest.fromJson(json)); }

final McpApprovalRequest mcpApprovalRequest;

@override String get type { return 'mcp_approval_request'; } 
@override Map<String, dynamic> toJson() { return {...mcpApprovalRequest.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemMcpApprovalRequest && mcpApprovalRequest == other.mcpApprovalRequest; } 
@override int get hashCode { return mcpApprovalRequest.hashCode; } 
@override String toString() { return 'ItemMcpApprovalRequest(mcpApprovalRequest: $mcpApprovalRequest)'; } 
 }
final class ItemMcpApprovalResponse extends Item {const ItemMcpApprovalResponse(this.mcpApprovalResponse);

factory ItemMcpApprovalResponse.fromJson(Map<String, dynamic> json) { return ItemMcpApprovalResponse(McpApprovalResponse.fromJson(json)); }

final McpApprovalResponse mcpApprovalResponse;

@override String get type { return 'mcp_approval_response'; } 
@override Map<String, dynamic> toJson() { return {...mcpApprovalResponse.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemMcpApprovalResponse && mcpApprovalResponse == other.mcpApprovalResponse; } 
@override int get hashCode { return mcpApprovalResponse.hashCode; } 
@override String toString() { return 'ItemMcpApprovalResponse(mcpApprovalResponse: $mcpApprovalResponse)'; } 
 }
final class ItemMcpCall extends Item {const ItemMcpCall(this.mcpToolCall);

factory ItemMcpCall.fromJson(Map<String, dynamic> json) { return ItemMcpCall(McpToolCall.fromJson(json)); }

final McpToolCall mcpToolCall;

@override String get type { return 'mcp_call'; } 
@override Map<String, dynamic> toJson() { return {...mcpToolCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemMcpCall && mcpToolCall == other.mcpToolCall; } 
@override int get hashCode { return mcpToolCall.hashCode; } 
@override String toString() { return 'ItemMcpCall(mcpToolCall: $mcpToolCall)'; } 
 }
final class ItemCustomToolCallOutput extends Item {const ItemCustomToolCallOutput(this.customToolCallOutput);

factory ItemCustomToolCallOutput.fromJson(Map<String, dynamic> json) { return ItemCustomToolCallOutput(CustomToolCallOutput.fromJson(json)); }

final CustomToolCallOutput customToolCallOutput;

@override String get type { return 'custom_tool_call_output'; } 
@override Map<String, dynamic> toJson() { return {...customToolCallOutput.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemCustomToolCallOutput && customToolCallOutput == other.customToolCallOutput; } 
@override int get hashCode { return customToolCallOutput.hashCode; } 
@override String toString() { return 'ItemCustomToolCallOutput(customToolCallOutput: $customToolCallOutput)'; } 
 }
final class ItemCustomToolCall extends Item {const ItemCustomToolCall(this.customToolCall);

factory ItemCustomToolCall.fromJson(Map<String, dynamic> json) { return ItemCustomToolCall(CustomToolCall.fromJson(json)); }

final CustomToolCall customToolCall;

@override String get type { return 'custom_tool_call'; } 
@override Map<String, dynamic> toJson() { return {...customToolCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemCustomToolCall && customToolCall == other.customToolCall; } 
@override int get hashCode { return customToolCall.hashCode; } 
@override String toString() { return 'ItemCustomToolCall(customToolCall: $customToolCall)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
final class Item$Unknown extends Item {const Item$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Item$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'Item.unknown($json)'; } 
 }
