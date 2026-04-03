// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'apply_patch_tool_call.dart';import 'apply_patch_tool_call_output.dart';import 'code_interpreter_tool_call.dart';import 'compaction_body.dart';import 'computer_tool_call.dart';import 'computer_tool_call_output.dart';import 'custom_tool_call.dart';import 'custom_tool_call_output.dart';import 'file_search_tool_call.dart';import 'function_shell_call.dart';import 'function_shell_call_output.dart';import 'function_tool_call.dart';import 'function_tool_call_output.dart';import 'image_gen_tool_call.dart';import 'local_shell_tool_call.dart';import 'local_shell_tool_call_output.dart';import 'mcp_approval_request.dart';import 'mcp_approval_response_resource.dart';import 'mcp_list_tools.dart';import 'mcp_tool_call.dart';import 'message.dart';import 'reasoning_item.dart';import 'tool_search_call.dart';import 'tool_search_output.dart';import 'web_search_tool_call.dart';/// An item representing a message, tool call, tool output, reasoning, or other response element.
sealed class ItemField {const ItemField();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory ItemField.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'message' => ItemFieldMessage.fromJson(json),
  'function_call' => ItemFieldFunctionCall.fromJson(json),
  'tool_search_call' => ItemFieldToolSearchCall.fromJson(json),
  'tool_search_output' => ItemFieldToolSearchOutput.fromJson(json),
  'function_call_output' => ItemFieldFunctionCallOutput.fromJson(json),
  'file_search_call' => ItemFieldFileSearchCall.fromJson(json),
  'web_search_call' => ItemFieldWebSearchCall.fromJson(json),
  'image_generation_call' => ItemFieldImageGenerationCall.fromJson(json),
  'computer_call' => ItemFieldComputerCall.fromJson(json),
  'ComputerToolCallOutputResource' => ItemFieldComputerToolCallOutputResource.fromJson(json),
  'reasoning' => ItemFieldReasoning.fromJson(json),
  'compaction' => ItemFieldCompaction.fromJson(json),
  'code_interpreter_call' => ItemFieldCodeInterpreterCall.fromJson(json),
  'local_shell_call' => ItemFieldLocalShellCall.fromJson(json),
  'local_shell_call_output' => ItemFieldLocalShellCallOutput.fromJson(json),
  'shell_call' => ItemFieldShellCall.fromJson(json),
  'shell_call_output' => ItemFieldShellCallOutput.fromJson(json),
  'apply_patch_call' => ItemFieldApplyPatchCall.fromJson(json),
  'apply_patch_call_output' => ItemFieldApplyPatchCallOutput.fromJson(json),
  'mcp_list_tools' => ItemFieldMcpListTools.fromJson(json),
  'mcp_approval_request' => ItemFieldMcpApprovalRequest.fromJson(json),
  'mcp_approval_response' => ItemFieldMcpApprovalResponse.fromJson(json),
  'mcp_call' => ItemFieldMcpCall.fromJson(json),
  'custom_tool_call' => ItemFieldCustomToolCall.fromJson(json),
  'custom_tool_call_output' => ItemFieldCustomToolCallOutput.fromJson(json),
  _ => ItemField$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is ItemField$Unknown; } 
 }
@immutable final class ItemFieldMessage extends ItemField {const ItemFieldMessage(this.message);

factory ItemFieldMessage.fromJson(Map<String, dynamic> json) { return ItemFieldMessage(Message.fromJson(json)); }

final Message message;

@override String get type { return 'message'; } 
@override Map<String, dynamic> toJson() { return {...message.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFieldMessage && message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'ItemFieldMessage(message: $message)'; } 
 }
@immutable final class ItemFieldFunctionCall extends ItemField {const ItemFieldFunctionCall(this.functionToolCall);

factory ItemFieldFunctionCall.fromJson(Map<String, dynamic> json) { return ItemFieldFunctionCall(FunctionToolCall.fromJson(json)); }

final FunctionToolCall functionToolCall;

@override String get type { return 'function_call'; } 
@override Map<String, dynamic> toJson() { return {...functionToolCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFieldFunctionCall && functionToolCall == other.functionToolCall; } 
@override int get hashCode { return functionToolCall.hashCode; } 
@override String toString() { return 'ItemFieldFunctionCall(functionToolCall: $functionToolCall)'; } 
 }
@immutable final class ItemFieldToolSearchCall extends ItemField {const ItemFieldToolSearchCall(this.toolSearchCall);

factory ItemFieldToolSearchCall.fromJson(Map<String, dynamic> json) { return ItemFieldToolSearchCall(ToolSearchCall.fromJson(json)); }

final ToolSearchCall toolSearchCall;

@override String get type { return 'tool_search_call'; } 
@override Map<String, dynamic> toJson() { return {...toolSearchCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFieldToolSearchCall && toolSearchCall == other.toolSearchCall; } 
@override int get hashCode { return toolSearchCall.hashCode; } 
@override String toString() { return 'ItemFieldToolSearchCall(toolSearchCall: $toolSearchCall)'; } 
 }
@immutable final class ItemFieldToolSearchOutput extends ItemField {const ItemFieldToolSearchOutput(this.toolSearchOutput);

factory ItemFieldToolSearchOutput.fromJson(Map<String, dynamic> json) { return ItemFieldToolSearchOutput(ToolSearchOutput.fromJson(json)); }

final ToolSearchOutput toolSearchOutput;

@override String get type { return 'tool_search_output'; } 
@override Map<String, dynamic> toJson() { return {...toolSearchOutput.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFieldToolSearchOutput && toolSearchOutput == other.toolSearchOutput; } 
@override int get hashCode { return toolSearchOutput.hashCode; } 
@override String toString() { return 'ItemFieldToolSearchOutput(toolSearchOutput: $toolSearchOutput)'; } 
 }
@immutable final class ItemFieldFunctionCallOutput extends ItemField {const ItemFieldFunctionCallOutput(this.functionToolCallOutput);

factory ItemFieldFunctionCallOutput.fromJson(Map<String, dynamic> json) { return ItemFieldFunctionCallOutput(FunctionToolCallOutput.fromJson(json)); }

final FunctionToolCallOutput functionToolCallOutput;

@override String get type { return 'function_call_output'; } 
@override Map<String, dynamic> toJson() { return {...functionToolCallOutput.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFieldFunctionCallOutput && functionToolCallOutput == other.functionToolCallOutput; } 
@override int get hashCode { return functionToolCallOutput.hashCode; } 
@override String toString() { return 'ItemFieldFunctionCallOutput(functionToolCallOutput: $functionToolCallOutput)'; } 
 }
@immutable final class ItemFieldFileSearchCall extends ItemField {const ItemFieldFileSearchCall(this.fileSearchToolCall);

factory ItemFieldFileSearchCall.fromJson(Map<String, dynamic> json) { return ItemFieldFileSearchCall(FileSearchToolCall.fromJson(json)); }

final FileSearchToolCall fileSearchToolCall;

@override String get type { return 'file_search_call'; } 
@override Map<String, dynamic> toJson() { return {...fileSearchToolCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFieldFileSearchCall && fileSearchToolCall == other.fileSearchToolCall; } 
@override int get hashCode { return fileSearchToolCall.hashCode; } 
@override String toString() { return 'ItemFieldFileSearchCall(fileSearchToolCall: $fileSearchToolCall)'; } 
 }
@immutable final class ItemFieldWebSearchCall extends ItemField {const ItemFieldWebSearchCall(this.webSearchToolCall);

factory ItemFieldWebSearchCall.fromJson(Map<String, dynamic> json) { return ItemFieldWebSearchCall(WebSearchToolCall.fromJson(json)); }

final WebSearchToolCall webSearchToolCall;

@override String get type { return 'web_search_call'; } 
@override Map<String, dynamic> toJson() { return {...webSearchToolCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFieldWebSearchCall && webSearchToolCall == other.webSearchToolCall; } 
@override int get hashCode { return webSearchToolCall.hashCode; } 
@override String toString() { return 'ItemFieldWebSearchCall(webSearchToolCall: $webSearchToolCall)'; } 
 }
@immutable final class ItemFieldImageGenerationCall extends ItemField {const ItemFieldImageGenerationCall(this.imageGenToolCall);

factory ItemFieldImageGenerationCall.fromJson(Map<String, dynamic> json) { return ItemFieldImageGenerationCall(ImageGenToolCall.fromJson(json)); }

final ImageGenToolCall imageGenToolCall;

@override String get type { return 'image_generation_call'; } 
@override Map<String, dynamic> toJson() { return {...imageGenToolCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFieldImageGenerationCall && imageGenToolCall == other.imageGenToolCall; } 
@override int get hashCode { return imageGenToolCall.hashCode; } 
@override String toString() { return 'ItemFieldImageGenerationCall(imageGenToolCall: $imageGenToolCall)'; } 
 }
@immutable final class ItemFieldComputerCall extends ItemField {const ItemFieldComputerCall(this.computerToolCall);

factory ItemFieldComputerCall.fromJson(Map<String, dynamic> json) { return ItemFieldComputerCall(ComputerToolCall.fromJson(json)); }

final ComputerToolCall computerToolCall;

@override String get type { return 'computer_call'; } 
@override Map<String, dynamic> toJson() { return {...computerToolCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFieldComputerCall && computerToolCall == other.computerToolCall; } 
@override int get hashCode { return computerToolCall.hashCode; } 
@override String toString() { return 'ItemFieldComputerCall(computerToolCall: $computerToolCall)'; } 
 }
@immutable final class ItemFieldComputerToolCallOutputResource extends ItemField {const ItemFieldComputerToolCallOutputResource(this.computerToolCallOutput);

factory ItemFieldComputerToolCallOutputResource.fromJson(Map<String, dynamic> json) { return ItemFieldComputerToolCallOutputResource(ComputerToolCallOutput.fromJson(json)); }

final ComputerToolCallOutput computerToolCallOutput;

@override String get type { return 'ComputerToolCallOutputResource'; } 
@override Map<String, dynamic> toJson() { return {...computerToolCallOutput.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFieldComputerToolCallOutputResource && computerToolCallOutput == other.computerToolCallOutput; } 
@override int get hashCode { return computerToolCallOutput.hashCode; } 
@override String toString() { return 'ItemFieldComputerToolCallOutputResource(computerToolCallOutput: $computerToolCallOutput)'; } 
 }
@immutable final class ItemFieldReasoning extends ItemField {const ItemFieldReasoning(this.reasoningItem);

factory ItemFieldReasoning.fromJson(Map<String, dynamic> json) { return ItemFieldReasoning(ReasoningItem.fromJson(json)); }

final ReasoningItem reasoningItem;

@override String get type { return 'reasoning'; } 
@override Map<String, dynamic> toJson() { return {...reasoningItem.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFieldReasoning && reasoningItem == other.reasoningItem; } 
@override int get hashCode { return reasoningItem.hashCode; } 
@override String toString() { return 'ItemFieldReasoning(reasoningItem: $reasoningItem)'; } 
 }
@immutable final class ItemFieldCompaction extends ItemField {const ItemFieldCompaction(this.compactionBody);

factory ItemFieldCompaction.fromJson(Map<String, dynamic> json) { return ItemFieldCompaction(CompactionBody.fromJson(json)); }

final CompactionBody compactionBody;

@override String get type { return 'compaction'; } 
@override Map<String, dynamic> toJson() { return {...compactionBody.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFieldCompaction && compactionBody == other.compactionBody; } 
@override int get hashCode { return compactionBody.hashCode; } 
@override String toString() { return 'ItemFieldCompaction(compactionBody: $compactionBody)'; } 
 }
@immutable final class ItemFieldCodeInterpreterCall extends ItemField {const ItemFieldCodeInterpreterCall(this.codeInterpreterToolCall);

factory ItemFieldCodeInterpreterCall.fromJson(Map<String, dynamic> json) { return ItemFieldCodeInterpreterCall(CodeInterpreterToolCall.fromJson(json)); }

final CodeInterpreterToolCall codeInterpreterToolCall;

@override String get type { return 'code_interpreter_call'; } 
@override Map<String, dynamic> toJson() { return {...codeInterpreterToolCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFieldCodeInterpreterCall && codeInterpreterToolCall == other.codeInterpreterToolCall; } 
@override int get hashCode { return codeInterpreterToolCall.hashCode; } 
@override String toString() { return 'ItemFieldCodeInterpreterCall(codeInterpreterToolCall: $codeInterpreterToolCall)'; } 
 }
@immutable final class ItemFieldLocalShellCall extends ItemField {const ItemFieldLocalShellCall(this.localShellToolCall);

factory ItemFieldLocalShellCall.fromJson(Map<String, dynamic> json) { return ItemFieldLocalShellCall(LocalShellToolCall.fromJson(json)); }

final LocalShellToolCall localShellToolCall;

@override String get type { return 'local_shell_call'; } 
@override Map<String, dynamic> toJson() { return {...localShellToolCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFieldLocalShellCall && localShellToolCall == other.localShellToolCall; } 
@override int get hashCode { return localShellToolCall.hashCode; } 
@override String toString() { return 'ItemFieldLocalShellCall(localShellToolCall: $localShellToolCall)'; } 
 }
@immutable final class ItemFieldLocalShellCallOutput extends ItemField {const ItemFieldLocalShellCallOutput(this.localShellToolCallOutput);

factory ItemFieldLocalShellCallOutput.fromJson(Map<String, dynamic> json) { return ItemFieldLocalShellCallOutput(LocalShellToolCallOutput.fromJson(json)); }

final LocalShellToolCallOutput localShellToolCallOutput;

@override String get type { return 'local_shell_call_output'; } 
@override Map<String, dynamic> toJson() { return {...localShellToolCallOutput.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFieldLocalShellCallOutput && localShellToolCallOutput == other.localShellToolCallOutput; } 
@override int get hashCode { return localShellToolCallOutput.hashCode; } 
@override String toString() { return 'ItemFieldLocalShellCallOutput(localShellToolCallOutput: $localShellToolCallOutput)'; } 
 }
@immutable final class ItemFieldShellCall extends ItemField {const ItemFieldShellCall(this.functionShellCall);

factory ItemFieldShellCall.fromJson(Map<String, dynamic> json) { return ItemFieldShellCall(FunctionShellCall.fromJson(json)); }

final FunctionShellCall functionShellCall;

@override String get type { return 'shell_call'; } 
@override Map<String, dynamic> toJson() { return {...functionShellCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFieldShellCall && functionShellCall == other.functionShellCall; } 
@override int get hashCode { return functionShellCall.hashCode; } 
@override String toString() { return 'ItemFieldShellCall(functionShellCall: $functionShellCall)'; } 
 }
@immutable final class ItemFieldShellCallOutput extends ItemField {const ItemFieldShellCallOutput(this.functionShellCallOutput);

factory ItemFieldShellCallOutput.fromJson(Map<String, dynamic> json) { return ItemFieldShellCallOutput(FunctionShellCallOutput.fromJson(json)); }

final FunctionShellCallOutput functionShellCallOutput;

@override String get type { return 'shell_call_output'; } 
@override Map<String, dynamic> toJson() { return {...functionShellCallOutput.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFieldShellCallOutput && functionShellCallOutput == other.functionShellCallOutput; } 
@override int get hashCode { return functionShellCallOutput.hashCode; } 
@override String toString() { return 'ItemFieldShellCallOutput(functionShellCallOutput: $functionShellCallOutput)'; } 
 }
@immutable final class ItemFieldApplyPatchCall extends ItemField {const ItemFieldApplyPatchCall(this.applyPatchToolCall);

factory ItemFieldApplyPatchCall.fromJson(Map<String, dynamic> json) { return ItemFieldApplyPatchCall(ApplyPatchToolCall.fromJson(json)); }

final ApplyPatchToolCall applyPatchToolCall;

@override String get type { return 'apply_patch_call'; } 
@override Map<String, dynamic> toJson() { return {...applyPatchToolCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFieldApplyPatchCall && applyPatchToolCall == other.applyPatchToolCall; } 
@override int get hashCode { return applyPatchToolCall.hashCode; } 
@override String toString() { return 'ItemFieldApplyPatchCall(applyPatchToolCall: $applyPatchToolCall)'; } 
 }
@immutable final class ItemFieldApplyPatchCallOutput extends ItemField {const ItemFieldApplyPatchCallOutput(this.applyPatchToolCallOutput);

factory ItemFieldApplyPatchCallOutput.fromJson(Map<String, dynamic> json) { return ItemFieldApplyPatchCallOutput(ApplyPatchToolCallOutput.fromJson(json)); }

final ApplyPatchToolCallOutput applyPatchToolCallOutput;

@override String get type { return 'apply_patch_call_output'; } 
@override Map<String, dynamic> toJson() { return {...applyPatchToolCallOutput.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFieldApplyPatchCallOutput && applyPatchToolCallOutput == other.applyPatchToolCallOutput; } 
@override int get hashCode { return applyPatchToolCallOutput.hashCode; } 
@override String toString() { return 'ItemFieldApplyPatchCallOutput(applyPatchToolCallOutput: $applyPatchToolCallOutput)'; } 
 }
@immutable final class ItemFieldMcpListTools extends ItemField {const ItemFieldMcpListTools(this.mcpListTools);

factory ItemFieldMcpListTools.fromJson(Map<String, dynamic> json) { return ItemFieldMcpListTools(McpListTools.fromJson(json)); }

final McpListTools mcpListTools;

@override String get type { return 'mcp_list_tools'; } 
@override Map<String, dynamic> toJson() { return {...mcpListTools.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFieldMcpListTools && mcpListTools == other.mcpListTools; } 
@override int get hashCode { return mcpListTools.hashCode; } 
@override String toString() { return 'ItemFieldMcpListTools(mcpListTools: $mcpListTools)'; } 
 }
@immutable final class ItemFieldMcpApprovalRequest extends ItemField {const ItemFieldMcpApprovalRequest(this.mcpApprovalRequest);

factory ItemFieldMcpApprovalRequest.fromJson(Map<String, dynamic> json) { return ItemFieldMcpApprovalRequest(McpApprovalRequest.fromJson(json)); }

final McpApprovalRequest mcpApprovalRequest;

@override String get type { return 'mcp_approval_request'; } 
@override Map<String, dynamic> toJson() { return {...mcpApprovalRequest.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFieldMcpApprovalRequest && mcpApprovalRequest == other.mcpApprovalRequest; } 
@override int get hashCode { return mcpApprovalRequest.hashCode; } 
@override String toString() { return 'ItemFieldMcpApprovalRequest(mcpApprovalRequest: $mcpApprovalRequest)'; } 
 }
@immutable final class ItemFieldMcpApprovalResponse extends ItemField {const ItemFieldMcpApprovalResponse(this.mcpApprovalResponseResource);

factory ItemFieldMcpApprovalResponse.fromJson(Map<String, dynamic> json) { return ItemFieldMcpApprovalResponse(McpApprovalResponseResource.fromJson(json)); }

final McpApprovalResponseResource mcpApprovalResponseResource;

@override String get type { return 'mcp_approval_response'; } 
@override Map<String, dynamic> toJson() { return {...mcpApprovalResponseResource.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFieldMcpApprovalResponse && mcpApprovalResponseResource == other.mcpApprovalResponseResource; } 
@override int get hashCode { return mcpApprovalResponseResource.hashCode; } 
@override String toString() { return 'ItemFieldMcpApprovalResponse(mcpApprovalResponseResource: $mcpApprovalResponseResource)'; } 
 }
@immutable final class ItemFieldMcpCall extends ItemField {const ItemFieldMcpCall(this.mcpToolCall);

factory ItemFieldMcpCall.fromJson(Map<String, dynamic> json) { return ItemFieldMcpCall(McpToolCall.fromJson(json)); }

final McpToolCall mcpToolCall;

@override String get type { return 'mcp_call'; } 
@override Map<String, dynamic> toJson() { return {...mcpToolCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFieldMcpCall && mcpToolCall == other.mcpToolCall; } 
@override int get hashCode { return mcpToolCall.hashCode; } 
@override String toString() { return 'ItemFieldMcpCall(mcpToolCall: $mcpToolCall)'; } 
 }
@immutable final class ItemFieldCustomToolCall extends ItemField {const ItemFieldCustomToolCall(this.customToolCall);

factory ItemFieldCustomToolCall.fromJson(Map<String, dynamic> json) { return ItemFieldCustomToolCall(CustomToolCall.fromJson(json)); }

final CustomToolCall customToolCall;

@override String get type { return 'custom_tool_call'; } 
@override Map<String, dynamic> toJson() { return {...customToolCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFieldCustomToolCall && customToolCall == other.customToolCall; } 
@override int get hashCode { return customToolCall.hashCode; } 
@override String toString() { return 'ItemFieldCustomToolCall(customToolCall: $customToolCall)'; } 
 }
@immutable final class ItemFieldCustomToolCallOutput extends ItemField {const ItemFieldCustomToolCallOutput(this.customToolCallOutput);

factory ItemFieldCustomToolCallOutput.fromJson(Map<String, dynamic> json) { return ItemFieldCustomToolCallOutput(CustomToolCallOutput.fromJson(json)); }

final CustomToolCallOutput customToolCallOutput;

@override String get type { return 'custom_tool_call_output'; } 
@override Map<String, dynamic> toJson() { return {...customToolCallOutput.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemFieldCustomToolCallOutput && customToolCallOutput == other.customToolCallOutput; } 
@override int get hashCode { return customToolCallOutput.hashCode; } 
@override String toString() { return 'ItemFieldCustomToolCallOutput(customToolCallOutput: $customToolCallOutput)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
@immutable final class ItemField$Unknown extends ItemField {const ItemField$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemField$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'ItemField.unknown($json)'; } 
 }
