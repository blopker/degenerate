// GENERATED CODE - DO NOT MODIFY BY HAND

import 'apply_patch_tool_call.dart';import 'apply_patch_tool_call_output.dart';import 'code_interpreter_tool_call.dart';import 'compaction_body.dart';import 'computer_tool_call.dart';import 'computer_tool_call_output.dart';import 'custom_tool_call.dart';import 'custom_tool_call_output.dart';import 'file_search_tool_call.dart';import 'function_shell_call.dart';import 'function_shell_call_output.dart';import 'function_tool_call.dart';import 'function_tool_call_output.dart';import 'image_gen_tool_call.dart';import 'local_shell_tool_call.dart';import 'local_shell_tool_call_output.dart';import 'mcp_approval_request.dart';import 'mcp_approval_response_resource.dart';import 'mcp_list_tools.dart';import 'mcp_tool_call.dart';import 'message.dart';import 'reasoning_item.dart';import 'tool_search_call.dart';import 'tool_search_output.dart';import 'web_search_tool_call.dart';/// An item representing a message, tool call, tool output, reasoning, or other response element.
sealed class ItemField {const ItemField();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory ItemField.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'Message' => ItemFieldMessage.fromJson(json),
  'FunctionToolCall' => ItemFieldFunctionToolCall.fromJson(json),
  'ToolSearchCall' => ItemFieldToolSearchCall.fromJson(json),
  'ToolSearchOutput' => ItemFieldToolSearchOutput.fromJson(json),
  'FunctionToolCallOutput' => ItemFieldFunctionToolCallOutput.fromJson(json),
  'FileSearchToolCall' => ItemFieldFileSearchToolCall.fromJson(json),
  'WebSearchToolCall' => ItemFieldWebSearchToolCall.fromJson(json),
  'ImageGenToolCall' => ItemFieldImageGenToolCall.fromJson(json),
  'ComputerToolCall' => ItemFieldComputerToolCall.fromJson(json),
  'ComputerToolCallOutputResource' => ItemFieldComputerToolCallOutputResource.fromJson(json),
  'ReasoningItem' => ItemFieldReasoningItem.fromJson(json),
  'CompactionBody' => ItemFieldCompactionBody.fromJson(json),
  'CodeInterpreterToolCall' => ItemFieldCodeInterpreterToolCall.fromJson(json),
  'LocalShellToolCall' => ItemFieldLocalShellToolCall.fromJson(json),
  'LocalShellToolCallOutput' => ItemFieldLocalShellToolCallOutput.fromJson(json),
  'FunctionShellCall' => ItemFieldFunctionShellCall.fromJson(json),
  'FunctionShellCallOutput' => ItemFieldFunctionShellCallOutput.fromJson(json),
  'ApplyPatchToolCall' => ItemFieldApplyPatchToolCall.fromJson(json),
  'ApplyPatchToolCallOutput' => ItemFieldApplyPatchToolCallOutput.fromJson(json),
  'MCPListTools' => ItemFieldMcpListTools.fromJson(json),
  'MCPApprovalRequest' => ItemFieldMcpApprovalRequest.fromJson(json),
  'MCPApprovalResponseResource' => ItemFieldMcpApprovalResponseResource.fromJson(json),
  'MCPToolCall' => ItemFieldMcpToolCall.fromJson(json),
  'CustomToolCall' => ItemFieldCustomToolCall.fromJson(json),
  'CustomToolCallOutput' => ItemFieldCustomToolCallOutput.fromJson(json),
  _ => ItemField$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is ItemField$Unknown; } 
 }
final class ItemFieldMessage extends ItemField {const ItemFieldMessage(this.message);

factory ItemFieldMessage.fromJson(Map<String, dynamic> json) { return ItemFieldMessage(Message.fromJson(json)); }

final Message message;

@override String get type { return 'Message'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...message.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFieldMessage && message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'ItemFieldMessage(message: $message)'; } 
 }
final class ItemFieldFunctionToolCall extends ItemField {const ItemFieldFunctionToolCall(this.functionToolCall);

factory ItemFieldFunctionToolCall.fromJson(Map<String, dynamic> json) { return ItemFieldFunctionToolCall(FunctionToolCall.fromJson(json)); }

final FunctionToolCall functionToolCall;

@override String get type { return 'FunctionToolCall'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...functionToolCall.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFieldFunctionToolCall && functionToolCall == other.functionToolCall; } 
@override int get hashCode { return functionToolCall.hashCode; } 
@override String toString() { return 'ItemFieldFunctionToolCall(functionToolCall: $functionToolCall)'; } 
 }
final class ItemFieldToolSearchCall extends ItemField {const ItemFieldToolSearchCall(this.toolSearchCall);

factory ItemFieldToolSearchCall.fromJson(Map<String, dynamic> json) { return ItemFieldToolSearchCall(ToolSearchCall.fromJson(json)); }

final ToolSearchCall toolSearchCall;

@override String get type { return 'ToolSearchCall'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...toolSearchCall.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFieldToolSearchCall && toolSearchCall == other.toolSearchCall; } 
@override int get hashCode { return toolSearchCall.hashCode; } 
@override String toString() { return 'ItemFieldToolSearchCall(toolSearchCall: $toolSearchCall)'; } 
 }
final class ItemFieldToolSearchOutput extends ItemField {const ItemFieldToolSearchOutput(this.toolSearchOutput);

factory ItemFieldToolSearchOutput.fromJson(Map<String, dynamic> json) { return ItemFieldToolSearchOutput(ToolSearchOutput.fromJson(json)); }

final ToolSearchOutput toolSearchOutput;

@override String get type { return 'ToolSearchOutput'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...toolSearchOutput.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFieldToolSearchOutput && toolSearchOutput == other.toolSearchOutput; } 
@override int get hashCode { return toolSearchOutput.hashCode; } 
@override String toString() { return 'ItemFieldToolSearchOutput(toolSearchOutput: $toolSearchOutput)'; } 
 }
final class ItemFieldFunctionToolCallOutput extends ItemField {const ItemFieldFunctionToolCallOutput(this.functionToolCallOutput);

factory ItemFieldFunctionToolCallOutput.fromJson(Map<String, dynamic> json) { return ItemFieldFunctionToolCallOutput(FunctionToolCallOutput.fromJson(json)); }

final FunctionToolCallOutput functionToolCallOutput;

@override String get type { return 'FunctionToolCallOutput'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...functionToolCallOutput.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFieldFunctionToolCallOutput && functionToolCallOutput == other.functionToolCallOutput; } 
@override int get hashCode { return functionToolCallOutput.hashCode; } 
@override String toString() { return 'ItemFieldFunctionToolCallOutput(functionToolCallOutput: $functionToolCallOutput)'; } 
 }
final class ItemFieldFileSearchToolCall extends ItemField {const ItemFieldFileSearchToolCall(this.fileSearchToolCall);

factory ItemFieldFileSearchToolCall.fromJson(Map<String, dynamic> json) { return ItemFieldFileSearchToolCall(FileSearchToolCall.fromJson(json)); }

final FileSearchToolCall fileSearchToolCall;

@override String get type { return 'FileSearchToolCall'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...fileSearchToolCall.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFieldFileSearchToolCall && fileSearchToolCall == other.fileSearchToolCall; } 
@override int get hashCode { return fileSearchToolCall.hashCode; } 
@override String toString() { return 'ItemFieldFileSearchToolCall(fileSearchToolCall: $fileSearchToolCall)'; } 
 }
final class ItemFieldWebSearchToolCall extends ItemField {const ItemFieldWebSearchToolCall(this.webSearchToolCall);

factory ItemFieldWebSearchToolCall.fromJson(Map<String, dynamic> json) { return ItemFieldWebSearchToolCall(WebSearchToolCall.fromJson(json)); }

final WebSearchToolCall webSearchToolCall;

@override String get type { return 'WebSearchToolCall'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...webSearchToolCall.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFieldWebSearchToolCall && webSearchToolCall == other.webSearchToolCall; } 
@override int get hashCode { return webSearchToolCall.hashCode; } 
@override String toString() { return 'ItemFieldWebSearchToolCall(webSearchToolCall: $webSearchToolCall)'; } 
 }
final class ItemFieldImageGenToolCall extends ItemField {const ItemFieldImageGenToolCall(this.imageGenToolCall);

factory ItemFieldImageGenToolCall.fromJson(Map<String, dynamic> json) { return ItemFieldImageGenToolCall(ImageGenToolCall.fromJson(json)); }

final ImageGenToolCall imageGenToolCall;

@override String get type { return 'ImageGenToolCall'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...imageGenToolCall.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFieldImageGenToolCall && imageGenToolCall == other.imageGenToolCall; } 
@override int get hashCode { return imageGenToolCall.hashCode; } 
@override String toString() { return 'ItemFieldImageGenToolCall(imageGenToolCall: $imageGenToolCall)'; } 
 }
final class ItemFieldComputerToolCall extends ItemField {const ItemFieldComputerToolCall(this.computerToolCall);

factory ItemFieldComputerToolCall.fromJson(Map<String, dynamic> json) { return ItemFieldComputerToolCall(ComputerToolCall.fromJson(json)); }

final ComputerToolCall computerToolCall;

@override String get type { return 'ComputerToolCall'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...computerToolCall.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFieldComputerToolCall && computerToolCall == other.computerToolCall; } 
@override int get hashCode { return computerToolCall.hashCode; } 
@override String toString() { return 'ItemFieldComputerToolCall(computerToolCall: $computerToolCall)'; } 
 }
final class ItemFieldComputerToolCallOutputResource extends ItemField {const ItemFieldComputerToolCallOutputResource(this.computerToolCallOutput);

factory ItemFieldComputerToolCallOutputResource.fromJson(Map<String, dynamic> json) { return ItemFieldComputerToolCallOutputResource(ComputerToolCallOutput.fromJson(json)); }

final ComputerToolCallOutput computerToolCallOutput;

@override String get type { return 'ComputerToolCallOutputResource'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...computerToolCallOutput.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFieldComputerToolCallOutputResource && computerToolCallOutput == other.computerToolCallOutput; } 
@override int get hashCode { return computerToolCallOutput.hashCode; } 
@override String toString() { return 'ItemFieldComputerToolCallOutputResource(computerToolCallOutput: $computerToolCallOutput)'; } 
 }
final class ItemFieldReasoningItem extends ItemField {const ItemFieldReasoningItem(this.reasoningItem);

factory ItemFieldReasoningItem.fromJson(Map<String, dynamic> json) { return ItemFieldReasoningItem(ReasoningItem.fromJson(json)); }

final ReasoningItem reasoningItem;

@override String get type { return 'ReasoningItem'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...reasoningItem.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFieldReasoningItem && reasoningItem == other.reasoningItem; } 
@override int get hashCode { return reasoningItem.hashCode; } 
@override String toString() { return 'ItemFieldReasoningItem(reasoningItem: $reasoningItem)'; } 
 }
final class ItemFieldCompactionBody extends ItemField {const ItemFieldCompactionBody(this.compactionBody);

factory ItemFieldCompactionBody.fromJson(Map<String, dynamic> json) { return ItemFieldCompactionBody(CompactionBody.fromJson(json)); }

final CompactionBody compactionBody;

@override String get type { return 'CompactionBody'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...compactionBody.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFieldCompactionBody && compactionBody == other.compactionBody; } 
@override int get hashCode { return compactionBody.hashCode; } 
@override String toString() { return 'ItemFieldCompactionBody(compactionBody: $compactionBody)'; } 
 }
final class ItemFieldCodeInterpreterToolCall extends ItemField {const ItemFieldCodeInterpreterToolCall(this.codeInterpreterToolCall);

factory ItemFieldCodeInterpreterToolCall.fromJson(Map<String, dynamic> json) { return ItemFieldCodeInterpreterToolCall(CodeInterpreterToolCall.fromJson(json)); }

final CodeInterpreterToolCall codeInterpreterToolCall;

@override String get type { return 'CodeInterpreterToolCall'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...codeInterpreterToolCall.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFieldCodeInterpreterToolCall && codeInterpreterToolCall == other.codeInterpreterToolCall; } 
@override int get hashCode { return codeInterpreterToolCall.hashCode; } 
@override String toString() { return 'ItemFieldCodeInterpreterToolCall(codeInterpreterToolCall: $codeInterpreterToolCall)'; } 
 }
final class ItemFieldLocalShellToolCall extends ItemField {const ItemFieldLocalShellToolCall(this.localShellToolCall);

factory ItemFieldLocalShellToolCall.fromJson(Map<String, dynamic> json) { return ItemFieldLocalShellToolCall(LocalShellToolCall.fromJson(json)); }

final LocalShellToolCall localShellToolCall;

@override String get type { return 'LocalShellToolCall'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...localShellToolCall.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFieldLocalShellToolCall && localShellToolCall == other.localShellToolCall; } 
@override int get hashCode { return localShellToolCall.hashCode; } 
@override String toString() { return 'ItemFieldLocalShellToolCall(localShellToolCall: $localShellToolCall)'; } 
 }
final class ItemFieldLocalShellToolCallOutput extends ItemField {const ItemFieldLocalShellToolCallOutput(this.localShellToolCallOutput);

factory ItemFieldLocalShellToolCallOutput.fromJson(Map<String, dynamic> json) { return ItemFieldLocalShellToolCallOutput(LocalShellToolCallOutput.fromJson(json)); }

final LocalShellToolCallOutput localShellToolCallOutput;

@override String get type { return 'LocalShellToolCallOutput'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...localShellToolCallOutput.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFieldLocalShellToolCallOutput && localShellToolCallOutput == other.localShellToolCallOutput; } 
@override int get hashCode { return localShellToolCallOutput.hashCode; } 
@override String toString() { return 'ItemFieldLocalShellToolCallOutput(localShellToolCallOutput: $localShellToolCallOutput)'; } 
 }
final class ItemFieldFunctionShellCall extends ItemField {const ItemFieldFunctionShellCall(this.functionShellCall);

factory ItemFieldFunctionShellCall.fromJson(Map<String, dynamic> json) { return ItemFieldFunctionShellCall(FunctionShellCall.fromJson(json)); }

final FunctionShellCall functionShellCall;

@override String get type { return 'FunctionShellCall'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...functionShellCall.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFieldFunctionShellCall && functionShellCall == other.functionShellCall; } 
@override int get hashCode { return functionShellCall.hashCode; } 
@override String toString() { return 'ItemFieldFunctionShellCall(functionShellCall: $functionShellCall)'; } 
 }
final class ItemFieldFunctionShellCallOutput extends ItemField {const ItemFieldFunctionShellCallOutput(this.functionShellCallOutput);

factory ItemFieldFunctionShellCallOutput.fromJson(Map<String, dynamic> json) { return ItemFieldFunctionShellCallOutput(FunctionShellCallOutput.fromJson(json)); }

final FunctionShellCallOutput functionShellCallOutput;

@override String get type { return 'FunctionShellCallOutput'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...functionShellCallOutput.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFieldFunctionShellCallOutput && functionShellCallOutput == other.functionShellCallOutput; } 
@override int get hashCode { return functionShellCallOutput.hashCode; } 
@override String toString() { return 'ItemFieldFunctionShellCallOutput(functionShellCallOutput: $functionShellCallOutput)'; } 
 }
final class ItemFieldApplyPatchToolCall extends ItemField {const ItemFieldApplyPatchToolCall(this.applyPatchToolCall);

factory ItemFieldApplyPatchToolCall.fromJson(Map<String, dynamic> json) { return ItemFieldApplyPatchToolCall(ApplyPatchToolCall.fromJson(json)); }

final ApplyPatchToolCall applyPatchToolCall;

@override String get type { return 'ApplyPatchToolCall'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...applyPatchToolCall.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFieldApplyPatchToolCall && applyPatchToolCall == other.applyPatchToolCall; } 
@override int get hashCode { return applyPatchToolCall.hashCode; } 
@override String toString() { return 'ItemFieldApplyPatchToolCall(applyPatchToolCall: $applyPatchToolCall)'; } 
 }
final class ItemFieldApplyPatchToolCallOutput extends ItemField {const ItemFieldApplyPatchToolCallOutput(this.applyPatchToolCallOutput);

factory ItemFieldApplyPatchToolCallOutput.fromJson(Map<String, dynamic> json) { return ItemFieldApplyPatchToolCallOutput(ApplyPatchToolCallOutput.fromJson(json)); }

final ApplyPatchToolCallOutput applyPatchToolCallOutput;

@override String get type { return 'ApplyPatchToolCallOutput'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...applyPatchToolCallOutput.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFieldApplyPatchToolCallOutput && applyPatchToolCallOutput == other.applyPatchToolCallOutput; } 
@override int get hashCode { return applyPatchToolCallOutput.hashCode; } 
@override String toString() { return 'ItemFieldApplyPatchToolCallOutput(applyPatchToolCallOutput: $applyPatchToolCallOutput)'; } 
 }
final class ItemFieldMcpListTools extends ItemField {const ItemFieldMcpListTools(this.mcpListTools);

factory ItemFieldMcpListTools.fromJson(Map<String, dynamic> json) { return ItemFieldMcpListTools(McpListTools.fromJson(json)); }

final McpListTools mcpListTools;

@override String get type { return 'MCPListTools'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...mcpListTools.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFieldMcpListTools && mcpListTools == other.mcpListTools; } 
@override int get hashCode { return mcpListTools.hashCode; } 
@override String toString() { return 'ItemFieldMcpListTools(mcpListTools: $mcpListTools)'; } 
 }
final class ItemFieldMcpApprovalRequest extends ItemField {const ItemFieldMcpApprovalRequest(this.mcpApprovalRequest);

factory ItemFieldMcpApprovalRequest.fromJson(Map<String, dynamic> json) { return ItemFieldMcpApprovalRequest(McpApprovalRequest.fromJson(json)); }

final McpApprovalRequest mcpApprovalRequest;

@override String get type { return 'MCPApprovalRequest'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...mcpApprovalRequest.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFieldMcpApprovalRequest && mcpApprovalRequest == other.mcpApprovalRequest; } 
@override int get hashCode { return mcpApprovalRequest.hashCode; } 
@override String toString() { return 'ItemFieldMcpApprovalRequest(mcpApprovalRequest: $mcpApprovalRequest)'; } 
 }
final class ItemFieldMcpApprovalResponseResource extends ItemField {const ItemFieldMcpApprovalResponseResource(this.mcpApprovalResponseResource);

factory ItemFieldMcpApprovalResponseResource.fromJson(Map<String, dynamic> json) { return ItemFieldMcpApprovalResponseResource(McpApprovalResponseResource.fromJson(json)); }

final McpApprovalResponseResource mcpApprovalResponseResource;

@override String get type { return 'MCPApprovalResponseResource'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...mcpApprovalResponseResource.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFieldMcpApprovalResponseResource && mcpApprovalResponseResource == other.mcpApprovalResponseResource; } 
@override int get hashCode { return mcpApprovalResponseResource.hashCode; } 
@override String toString() { return 'ItemFieldMcpApprovalResponseResource(mcpApprovalResponseResource: $mcpApprovalResponseResource)'; } 
 }
final class ItemFieldMcpToolCall extends ItemField {const ItemFieldMcpToolCall(this.mcpToolCall);

factory ItemFieldMcpToolCall.fromJson(Map<String, dynamic> json) { return ItemFieldMcpToolCall(McpToolCall.fromJson(json)); }

final McpToolCall mcpToolCall;

@override String get type { return 'MCPToolCall'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...mcpToolCall.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFieldMcpToolCall && mcpToolCall == other.mcpToolCall; } 
@override int get hashCode { return mcpToolCall.hashCode; } 
@override String toString() { return 'ItemFieldMcpToolCall(mcpToolCall: $mcpToolCall)'; } 
 }
final class ItemFieldCustomToolCall extends ItemField {const ItemFieldCustomToolCall(this.customToolCall);

factory ItemFieldCustomToolCall.fromJson(Map<String, dynamic> json) { return ItemFieldCustomToolCall(CustomToolCall.fromJson(json)); }

final CustomToolCall customToolCall;

@override String get type { return 'CustomToolCall'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...customToolCall.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFieldCustomToolCall && customToolCall == other.customToolCall; } 
@override int get hashCode { return customToolCall.hashCode; } 
@override String toString() { return 'ItemFieldCustomToolCall(customToolCall: $customToolCall)'; } 
 }
final class ItemFieldCustomToolCallOutput extends ItemField {const ItemFieldCustomToolCallOutput(this.customToolCallOutput);

factory ItemFieldCustomToolCallOutput.fromJson(Map<String, dynamic> json) { return ItemFieldCustomToolCallOutput(CustomToolCallOutput.fromJson(json)); }

final CustomToolCallOutput customToolCallOutput;

@override String get type { return 'CustomToolCallOutput'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...customToolCallOutput.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFieldCustomToolCallOutput && customToolCallOutput == other.customToolCallOutput; } 
@override int get hashCode { return customToolCallOutput.hashCode; } 
@override String toString() { return 'ItemFieldCustomToolCallOutput(customToolCallOutput: $customToolCallOutput)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
final class ItemField$Unknown extends ItemField {const ItemField$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemField$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'ItemField.unknown($json)'; } 
 }
