// GENERATED CODE - DO NOT MODIFY BY HAND

import 'apply_patch_tool_call_item_param.dart';import 'apply_patch_tool_call_output_item_param.dart';import 'code_interpreter_tool_call.dart';import 'compaction_summary_item_param.dart';import 'computer_call_output_item_param.dart';import 'computer_tool_call.dart';import 'custom_tool_call.dart';import 'custom_tool_call_output.dart';import 'file_search_tool_call.dart';import 'function_call_output_item_param.dart';import 'function_shell_call_item_param.dart';import 'function_shell_call_output_item_param.dart';import 'function_tool_call.dart';import 'image_gen_tool_call.dart';import 'input_message.dart';import 'local_shell_tool_call.dart';import 'local_shell_tool_call_output.dart';import 'mcp_approval_request.dart';import 'mcp_approval_response.dart';import 'mcp_list_tools.dart';import 'mcp_tool_call.dart';import 'output_message.dart';import 'reasoning_item.dart';import 'tool_search_call_item_param.dart';import 'tool_search_output_item_param.dart';import 'web_search_tool_call.dart';/// Content item used to generate a response.
/// 
sealed class Item {const Item();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory Item.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'InputMessage' => ItemInputMessage.fromJson(json),
  'OutputMessage' => ItemOutputMessage.fromJson(json),
  'FileSearchToolCall' => ItemFileSearchToolCall.fromJson(json),
  'ComputerToolCall' => ItemComputerToolCall.fromJson(json),
  'ComputerCallOutputItemParam' => ItemComputerCallOutputItemParam.fromJson(json),
  'WebSearchToolCall' => ItemWebSearchToolCall.fromJson(json),
  'FunctionToolCall' => ItemFunctionToolCall.fromJson(json),
  'FunctionCallOutputItemParam' => ItemFunctionCallOutputItemParam.fromJson(json),
  'ToolSearchCallItemParam' => ItemToolSearchCallItemParam.fromJson(json),
  'ToolSearchOutputItemParam' => ItemToolSearchOutputItemParam.fromJson(json),
  'ReasoningItem' => ItemReasoningItem.fromJson(json),
  'CompactionSummaryItemParam' => ItemCompactionSummaryItemParam.fromJson(json),
  'ImageGenToolCall' => ItemImageGenToolCall.fromJson(json),
  'CodeInterpreterToolCall' => ItemCodeInterpreterToolCall.fromJson(json),
  'LocalShellToolCall' => ItemLocalShellToolCall.fromJson(json),
  'LocalShellToolCallOutput' => ItemLocalShellToolCallOutput.fromJson(json),
  'FunctionShellCallItemParam' => ItemFunctionShellCallItemParam.fromJson(json),
  'FunctionShellCallOutputItemParam' => ItemFunctionShellCallOutputItemParam.fromJson(json),
  'ApplyPatchToolCallItemParam' => ItemApplyPatchToolCallItemParam.fromJson(json),
  'ApplyPatchToolCallOutputItemParam' => ItemApplyPatchToolCallOutputItemParam.fromJson(json),
  'McpListTools' => ItemMcpListTools.fromJson(json),
  'McpApprovalRequest' => ItemMcpApprovalRequest.fromJson(json),
  'McpApprovalResponse' => ItemMcpApprovalResponse.fromJson(json),
  'McpToolCall' => ItemMcpToolCall.fromJson(json),
  'CustomToolCallOutput' => ItemCustomToolCallOutput.fromJson(json),
  'CustomToolCall' => ItemCustomToolCall.fromJson(json),
  _ => Item$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is Item$Unknown; } 
 }
final class ItemInputMessage extends Item {const ItemInputMessage(this.inputMessage);

factory ItemInputMessage.fromJson(Map<String, dynamic> json) { return ItemInputMessage(InputMessage.fromJson(json)); }

final InputMessage inputMessage;

@override String get type { return 'InputMessage'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...inputMessage.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemInputMessage && inputMessage == other.inputMessage; } 
@override int get hashCode { return inputMessage.hashCode; } 
@override String toString() { return 'ItemInputMessage(inputMessage: $inputMessage)'; } 
 }
final class ItemOutputMessage extends Item {const ItemOutputMessage(this.outputMessage);

factory ItemOutputMessage.fromJson(Map<String, dynamic> json) { return ItemOutputMessage(OutputMessage.fromJson(json)); }

final OutputMessage outputMessage;

@override String get type { return 'OutputMessage'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...outputMessage.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemOutputMessage && outputMessage == other.outputMessage; } 
@override int get hashCode { return outputMessage.hashCode; } 
@override String toString() { return 'ItemOutputMessage(outputMessage: $outputMessage)'; } 
 }
final class ItemFileSearchToolCall extends Item {const ItemFileSearchToolCall(this.fileSearchToolCall);

factory ItemFileSearchToolCall.fromJson(Map<String, dynamic> json) { return ItemFileSearchToolCall(FileSearchToolCall.fromJson(json)); }

final FileSearchToolCall fileSearchToolCall;

@override String get type { return 'FileSearchToolCall'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...fileSearchToolCall.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFileSearchToolCall && fileSearchToolCall == other.fileSearchToolCall; } 
@override int get hashCode { return fileSearchToolCall.hashCode; } 
@override String toString() { return 'ItemFileSearchToolCall(fileSearchToolCall: $fileSearchToolCall)'; } 
 }
final class ItemComputerToolCall extends Item {const ItemComputerToolCall(this.computerToolCall);

factory ItemComputerToolCall.fromJson(Map<String, dynamic> json) { return ItemComputerToolCall(ComputerToolCall.fromJson(json)); }

final ComputerToolCall computerToolCall;

@override String get type { return 'ComputerToolCall'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...computerToolCall.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemComputerToolCall && computerToolCall == other.computerToolCall; } 
@override int get hashCode { return computerToolCall.hashCode; } 
@override String toString() { return 'ItemComputerToolCall(computerToolCall: $computerToolCall)'; } 
 }
final class ItemComputerCallOutputItemParam extends Item {const ItemComputerCallOutputItemParam(this.computerCallOutputItemParam);

factory ItemComputerCallOutputItemParam.fromJson(Map<String, dynamic> json) { return ItemComputerCallOutputItemParam(ComputerCallOutputItemParam.fromJson(json)); }

final ComputerCallOutputItemParam computerCallOutputItemParam;

@override String get type { return 'ComputerCallOutputItemParam'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...computerCallOutputItemParam.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemComputerCallOutputItemParam && computerCallOutputItemParam == other.computerCallOutputItemParam; } 
@override int get hashCode { return computerCallOutputItemParam.hashCode; } 
@override String toString() { return 'ItemComputerCallOutputItemParam(computerCallOutputItemParam: $computerCallOutputItemParam)'; } 
 }
final class ItemWebSearchToolCall extends Item {const ItemWebSearchToolCall(this.webSearchToolCall);

factory ItemWebSearchToolCall.fromJson(Map<String, dynamic> json) { return ItemWebSearchToolCall(WebSearchToolCall.fromJson(json)); }

final WebSearchToolCall webSearchToolCall;

@override String get type { return 'WebSearchToolCall'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...webSearchToolCall.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemWebSearchToolCall && webSearchToolCall == other.webSearchToolCall; } 
@override int get hashCode { return webSearchToolCall.hashCode; } 
@override String toString() { return 'ItemWebSearchToolCall(webSearchToolCall: $webSearchToolCall)'; } 
 }
final class ItemFunctionToolCall extends Item {const ItemFunctionToolCall(this.functionToolCall);

factory ItemFunctionToolCall.fromJson(Map<String, dynamic> json) { return ItemFunctionToolCall(FunctionToolCall.fromJson(json)); }

final FunctionToolCall functionToolCall;

@override String get type { return 'FunctionToolCall'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...functionToolCall.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFunctionToolCall && functionToolCall == other.functionToolCall; } 
@override int get hashCode { return functionToolCall.hashCode; } 
@override String toString() { return 'ItemFunctionToolCall(functionToolCall: $functionToolCall)'; } 
 }
final class ItemFunctionCallOutputItemParam extends Item {const ItemFunctionCallOutputItemParam(this.functionCallOutputItemParam);

factory ItemFunctionCallOutputItemParam.fromJson(Map<String, dynamic> json) { return ItemFunctionCallOutputItemParam(FunctionCallOutputItemParam.fromJson(json)); }

final FunctionCallOutputItemParam functionCallOutputItemParam;

@override String get type { return 'FunctionCallOutputItemParam'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...functionCallOutputItemParam.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFunctionCallOutputItemParam && functionCallOutputItemParam == other.functionCallOutputItemParam; } 
@override int get hashCode { return functionCallOutputItemParam.hashCode; } 
@override String toString() { return 'ItemFunctionCallOutputItemParam(functionCallOutputItemParam: $functionCallOutputItemParam)'; } 
 }
final class ItemToolSearchCallItemParam extends Item {const ItemToolSearchCallItemParam(this.toolSearchCallItemParam);

factory ItemToolSearchCallItemParam.fromJson(Map<String, dynamic> json) { return ItemToolSearchCallItemParam(ToolSearchCallItemParam.fromJson(json)); }

final ToolSearchCallItemParam toolSearchCallItemParam;

@override String get type { return 'ToolSearchCallItemParam'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...toolSearchCallItemParam.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemToolSearchCallItemParam && toolSearchCallItemParam == other.toolSearchCallItemParam; } 
@override int get hashCode { return toolSearchCallItemParam.hashCode; } 
@override String toString() { return 'ItemToolSearchCallItemParam(toolSearchCallItemParam: $toolSearchCallItemParam)'; } 
 }
final class ItemToolSearchOutputItemParam extends Item {const ItemToolSearchOutputItemParam(this.toolSearchOutputItemParam);

factory ItemToolSearchOutputItemParam.fromJson(Map<String, dynamic> json) { return ItemToolSearchOutputItemParam(ToolSearchOutputItemParam.fromJson(json)); }

final ToolSearchOutputItemParam toolSearchOutputItemParam;

@override String get type { return 'ToolSearchOutputItemParam'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...toolSearchOutputItemParam.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemToolSearchOutputItemParam && toolSearchOutputItemParam == other.toolSearchOutputItemParam; } 
@override int get hashCode { return toolSearchOutputItemParam.hashCode; } 
@override String toString() { return 'ItemToolSearchOutputItemParam(toolSearchOutputItemParam: $toolSearchOutputItemParam)'; } 
 }
final class ItemReasoningItem extends Item {const ItemReasoningItem(this.reasoningItem);

factory ItemReasoningItem.fromJson(Map<String, dynamic> json) { return ItemReasoningItem(ReasoningItem.fromJson(json)); }

final ReasoningItem reasoningItem;

@override String get type { return 'ReasoningItem'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...reasoningItem.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemReasoningItem && reasoningItem == other.reasoningItem; } 
@override int get hashCode { return reasoningItem.hashCode; } 
@override String toString() { return 'ItemReasoningItem(reasoningItem: $reasoningItem)'; } 
 }
final class ItemCompactionSummaryItemParam extends Item {const ItemCompactionSummaryItemParam(this.compactionSummaryItemParam);

factory ItemCompactionSummaryItemParam.fromJson(Map<String, dynamic> json) { return ItemCompactionSummaryItemParam(CompactionSummaryItemParam.fromJson(json)); }

final CompactionSummaryItemParam compactionSummaryItemParam;

@override String get type { return 'CompactionSummaryItemParam'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...compactionSummaryItemParam.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemCompactionSummaryItemParam && compactionSummaryItemParam == other.compactionSummaryItemParam; } 
@override int get hashCode { return compactionSummaryItemParam.hashCode; } 
@override String toString() { return 'ItemCompactionSummaryItemParam(compactionSummaryItemParam: $compactionSummaryItemParam)'; } 
 }
final class ItemImageGenToolCall extends Item {const ItemImageGenToolCall(this.imageGenToolCall);

factory ItemImageGenToolCall.fromJson(Map<String, dynamic> json) { return ItemImageGenToolCall(ImageGenToolCall.fromJson(json)); }

final ImageGenToolCall imageGenToolCall;

@override String get type { return 'ImageGenToolCall'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...imageGenToolCall.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemImageGenToolCall && imageGenToolCall == other.imageGenToolCall; } 
@override int get hashCode { return imageGenToolCall.hashCode; } 
@override String toString() { return 'ItemImageGenToolCall(imageGenToolCall: $imageGenToolCall)'; } 
 }
final class ItemCodeInterpreterToolCall extends Item {const ItemCodeInterpreterToolCall(this.codeInterpreterToolCall);

factory ItemCodeInterpreterToolCall.fromJson(Map<String, dynamic> json) { return ItemCodeInterpreterToolCall(CodeInterpreterToolCall.fromJson(json)); }

final CodeInterpreterToolCall codeInterpreterToolCall;

@override String get type { return 'CodeInterpreterToolCall'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...codeInterpreterToolCall.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemCodeInterpreterToolCall && codeInterpreterToolCall == other.codeInterpreterToolCall; } 
@override int get hashCode { return codeInterpreterToolCall.hashCode; } 
@override String toString() { return 'ItemCodeInterpreterToolCall(codeInterpreterToolCall: $codeInterpreterToolCall)'; } 
 }
final class ItemLocalShellToolCall extends Item {const ItemLocalShellToolCall(this.localShellToolCall);

factory ItemLocalShellToolCall.fromJson(Map<String, dynamic> json) { return ItemLocalShellToolCall(LocalShellToolCall.fromJson(json)); }

final LocalShellToolCall localShellToolCall;

@override String get type { return 'LocalShellToolCall'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...localShellToolCall.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemLocalShellToolCall && localShellToolCall == other.localShellToolCall; } 
@override int get hashCode { return localShellToolCall.hashCode; } 
@override String toString() { return 'ItemLocalShellToolCall(localShellToolCall: $localShellToolCall)'; } 
 }
final class ItemLocalShellToolCallOutput extends Item {const ItemLocalShellToolCallOutput(this.localShellToolCallOutput);

factory ItemLocalShellToolCallOutput.fromJson(Map<String, dynamic> json) { return ItemLocalShellToolCallOutput(LocalShellToolCallOutput.fromJson(json)); }

final LocalShellToolCallOutput localShellToolCallOutput;

@override String get type { return 'LocalShellToolCallOutput'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...localShellToolCallOutput.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemLocalShellToolCallOutput && localShellToolCallOutput == other.localShellToolCallOutput; } 
@override int get hashCode { return localShellToolCallOutput.hashCode; } 
@override String toString() { return 'ItemLocalShellToolCallOutput(localShellToolCallOutput: $localShellToolCallOutput)'; } 
 }
final class ItemFunctionShellCallItemParam extends Item {const ItemFunctionShellCallItemParam(this.functionShellCallItemParam);

factory ItemFunctionShellCallItemParam.fromJson(Map<String, dynamic> json) { return ItemFunctionShellCallItemParam(FunctionShellCallItemParam.fromJson(json)); }

final FunctionShellCallItemParam functionShellCallItemParam;

@override String get type { return 'FunctionShellCallItemParam'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...functionShellCallItemParam.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFunctionShellCallItemParam && functionShellCallItemParam == other.functionShellCallItemParam; } 
@override int get hashCode { return functionShellCallItemParam.hashCode; } 
@override String toString() { return 'ItemFunctionShellCallItemParam(functionShellCallItemParam: $functionShellCallItemParam)'; } 
 }
final class ItemFunctionShellCallOutputItemParam extends Item {const ItemFunctionShellCallOutputItemParam(this.functionShellCallOutputItemParam);

factory ItemFunctionShellCallOutputItemParam.fromJson(Map<String, dynamic> json) { return ItemFunctionShellCallOutputItemParam(FunctionShellCallOutputItemParam.fromJson(json)); }

final FunctionShellCallOutputItemParam functionShellCallOutputItemParam;

@override String get type { return 'FunctionShellCallOutputItemParam'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...functionShellCallOutputItemParam.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFunctionShellCallOutputItemParam && functionShellCallOutputItemParam == other.functionShellCallOutputItemParam; } 
@override int get hashCode { return functionShellCallOutputItemParam.hashCode; } 
@override String toString() { return 'ItemFunctionShellCallOutputItemParam(functionShellCallOutputItemParam: $functionShellCallOutputItemParam)'; } 
 }
final class ItemApplyPatchToolCallItemParam extends Item {const ItemApplyPatchToolCallItemParam(this.applyPatchToolCallItemParam);

factory ItemApplyPatchToolCallItemParam.fromJson(Map<String, dynamic> json) { return ItemApplyPatchToolCallItemParam(ApplyPatchToolCallItemParam.fromJson(json)); }

final ApplyPatchToolCallItemParam applyPatchToolCallItemParam;

@override String get type { return 'ApplyPatchToolCallItemParam'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...applyPatchToolCallItemParam.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemApplyPatchToolCallItemParam && applyPatchToolCallItemParam == other.applyPatchToolCallItemParam; } 
@override int get hashCode { return applyPatchToolCallItemParam.hashCode; } 
@override String toString() { return 'ItemApplyPatchToolCallItemParam(applyPatchToolCallItemParam: $applyPatchToolCallItemParam)'; } 
 }
final class ItemApplyPatchToolCallOutputItemParam extends Item {const ItemApplyPatchToolCallOutputItemParam(this.applyPatchToolCallOutputItemParam);

factory ItemApplyPatchToolCallOutputItemParam.fromJson(Map<String, dynamic> json) { return ItemApplyPatchToolCallOutputItemParam(ApplyPatchToolCallOutputItemParam.fromJson(json)); }

final ApplyPatchToolCallOutputItemParam applyPatchToolCallOutputItemParam;

@override String get type { return 'ApplyPatchToolCallOutputItemParam'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...applyPatchToolCallOutputItemParam.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemApplyPatchToolCallOutputItemParam && applyPatchToolCallOutputItemParam == other.applyPatchToolCallOutputItemParam; } 
@override int get hashCode { return applyPatchToolCallOutputItemParam.hashCode; } 
@override String toString() { return 'ItemApplyPatchToolCallOutputItemParam(applyPatchToolCallOutputItemParam: $applyPatchToolCallOutputItemParam)'; } 
 }
final class ItemMcpListTools extends Item {const ItemMcpListTools(this.mcpListTools);

factory ItemMcpListTools.fromJson(Map<String, dynamic> json) { return ItemMcpListTools(McpListTools.fromJson(json)); }

final McpListTools mcpListTools;

@override String get type { return 'McpListTools'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...mcpListTools.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemMcpListTools && mcpListTools == other.mcpListTools; } 
@override int get hashCode { return mcpListTools.hashCode; } 
@override String toString() { return 'ItemMcpListTools(mcpListTools: $mcpListTools)'; } 
 }
final class ItemMcpApprovalRequest extends Item {const ItemMcpApprovalRequest(this.mcpApprovalRequest);

factory ItemMcpApprovalRequest.fromJson(Map<String, dynamic> json) { return ItemMcpApprovalRequest(McpApprovalRequest.fromJson(json)); }

final McpApprovalRequest mcpApprovalRequest;

@override String get type { return 'McpApprovalRequest'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...mcpApprovalRequest.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemMcpApprovalRequest && mcpApprovalRequest == other.mcpApprovalRequest; } 
@override int get hashCode { return mcpApprovalRequest.hashCode; } 
@override String toString() { return 'ItemMcpApprovalRequest(mcpApprovalRequest: $mcpApprovalRequest)'; } 
 }
final class ItemMcpApprovalResponse extends Item {const ItemMcpApprovalResponse(this.mcpApprovalResponse);

factory ItemMcpApprovalResponse.fromJson(Map<String, dynamic> json) { return ItemMcpApprovalResponse(McpApprovalResponse.fromJson(json)); }

final McpApprovalResponse mcpApprovalResponse;

@override String get type { return 'McpApprovalResponse'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...mcpApprovalResponse.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemMcpApprovalResponse && mcpApprovalResponse == other.mcpApprovalResponse; } 
@override int get hashCode { return mcpApprovalResponse.hashCode; } 
@override String toString() { return 'ItemMcpApprovalResponse(mcpApprovalResponse: $mcpApprovalResponse)'; } 
 }
final class ItemMcpToolCall extends Item {const ItemMcpToolCall(this.mcpToolCall);

factory ItemMcpToolCall.fromJson(Map<String, dynamic> json) { return ItemMcpToolCall(McpToolCall.fromJson(json)); }

final McpToolCall mcpToolCall;

@override String get type { return 'McpToolCall'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...mcpToolCall.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemMcpToolCall && mcpToolCall == other.mcpToolCall; } 
@override int get hashCode { return mcpToolCall.hashCode; } 
@override String toString() { return 'ItemMcpToolCall(mcpToolCall: $mcpToolCall)'; } 
 }
final class ItemCustomToolCallOutput extends Item {const ItemCustomToolCallOutput(this.customToolCallOutput);

factory ItemCustomToolCallOutput.fromJson(Map<String, dynamic> json) { return ItemCustomToolCallOutput(CustomToolCallOutput.fromJson(json)); }

final CustomToolCallOutput customToolCallOutput;

@override String get type { return 'CustomToolCallOutput'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...customToolCallOutput.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemCustomToolCallOutput && customToolCallOutput == other.customToolCallOutput; } 
@override int get hashCode { return customToolCallOutput.hashCode; } 
@override String toString() { return 'ItemCustomToolCallOutput(customToolCallOutput: $customToolCallOutput)'; } 
 }
final class ItemCustomToolCall extends Item {const ItemCustomToolCall(this.customToolCall);

factory ItemCustomToolCall.fromJson(Map<String, dynamic> json) { return ItemCustomToolCall(CustomToolCall.fromJson(json)); }

final CustomToolCall customToolCall;

@override String get type { return 'CustomToolCall'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...customToolCall.toJson()}; } 
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
