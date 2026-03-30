// GENERATED CODE - DO NOT MODIFY BY HAND

import 'apply_patch_tool_call.dart';import 'apply_patch_tool_call_output.dart';import 'code_interpreter_tool_call.dart';import 'computer_tool_call.dart';import 'computer_tool_call_output.dart';import 'custom_tool_call.dart';import 'custom_tool_call_output.dart';import 'file_search_tool_call.dart';import 'function_shell_call.dart';import 'function_shell_call_output.dart';import 'function_tool_call.dart';import 'function_tool_call_output.dart';import 'image_gen_tool_call.dart';import 'local_shell_tool_call.dart';import 'local_shell_tool_call_output.dart';import 'mcp_approval_request.dart';import 'mcp_approval_response_resource.dart';import 'mcp_list_tools.dart';import 'mcp_tool_call.dart';import 'message.dart';import 'reasoning_item.dart';import 'tool_search_call.dart';import 'tool_search_output.dart';import 'web_search_tool_call.dart';/// A single item within a conversation. The set of possible types are the same as the `output` type of a [Response object](/docs/api-reference/responses/object#responses/object-output).
sealed class ConversationItem {const ConversationItem();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory ConversationItem.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'message' => ConversationItemMessage.fromJson(json),
  'FunctionToolCallResource' => ConversationItemFunctionToolCallResource.fromJson(json),
  'FunctionToolCallOutputResource' => ConversationItemFunctionToolCallOutputResource.fromJson(json),
  'file_search_call' => ConversationItemFileSearchCall.fromJson(json),
  'web_search_call' => ConversationItemWebSearchCall.fromJson(json),
  'image_generation_call' => ConversationItemImageGenerationCall.fromJson(json),
  'computer_call' => ConversationItemComputerCall.fromJson(json),
  'ComputerToolCallOutputResource' => ConversationItemComputerToolCallOutputResource.fromJson(json),
  'tool_search_call' => ConversationItemToolSearchCall.fromJson(json),
  'tool_search_output' => ConversationItemToolSearchOutput.fromJson(json),
  'reasoning' => ConversationItemReasoning.fromJson(json),
  'code_interpreter_call' => ConversationItemCodeInterpreterCall.fromJson(json),
  'local_shell_call' => ConversationItemLocalShellCall.fromJson(json),
  'local_shell_call_output' => ConversationItemLocalShellCallOutput.fromJson(json),
  'shell_call' => ConversationItemShellCall.fromJson(json),
  'shell_call_output' => ConversationItemShellCallOutput.fromJson(json),
  'apply_patch_call' => ConversationItemApplyPatchCall.fromJson(json),
  'apply_patch_call_output' => ConversationItemApplyPatchCallOutput.fromJson(json),
  'mcp_list_tools' => ConversationItemMcpListTools.fromJson(json),
  'mcp_approval_request' => ConversationItemMcpApprovalRequest.fromJson(json),
  'mcp_approval_response' => ConversationItemMcpApprovalResponse.fromJson(json),
  'mcp_call' => ConversationItemMcpCall.fromJson(json),
  'custom_tool_call' => ConversationItemCustomToolCall.fromJson(json),
  'custom_tool_call_output' => ConversationItemCustomToolCallOutput.fromJson(json),
  _ => ConversationItem$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is ConversationItem$Unknown; } 
 }
final class ConversationItemMessage extends ConversationItem {const ConversationItemMessage(this.message);

factory ConversationItemMessage.fromJson(Map<String, dynamic> json) { return ConversationItemMessage(Message.fromJson(json)); }

final Message message;

@override String get type { return 'message'; } 
@override Map<String, dynamic> toJson() { return {...message.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ConversationItemMessage && message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'ConversationItemMessage(message: $message)'; } 
 }
final class ConversationItemFunctionToolCallResource extends ConversationItem {const ConversationItemFunctionToolCallResource(this.functionToolCall);

factory ConversationItemFunctionToolCallResource.fromJson(Map<String, dynamic> json) { return ConversationItemFunctionToolCallResource(FunctionToolCall.fromJson(json)); }

final FunctionToolCall functionToolCall;

@override String get type { return 'FunctionToolCallResource'; } 
@override Map<String, dynamic> toJson() { return {...functionToolCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ConversationItemFunctionToolCallResource && functionToolCall == other.functionToolCall; } 
@override int get hashCode { return functionToolCall.hashCode; } 
@override String toString() { return 'ConversationItemFunctionToolCallResource(functionToolCall: $functionToolCall)'; } 
 }
final class ConversationItemFunctionToolCallOutputResource extends ConversationItem {const ConversationItemFunctionToolCallOutputResource(this.functionToolCallOutput);

factory ConversationItemFunctionToolCallOutputResource.fromJson(Map<String, dynamic> json) { return ConversationItemFunctionToolCallOutputResource(FunctionToolCallOutput.fromJson(json)); }

final FunctionToolCallOutput functionToolCallOutput;

@override String get type { return 'FunctionToolCallOutputResource'; } 
@override Map<String, dynamic> toJson() { return {...functionToolCallOutput.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ConversationItemFunctionToolCallOutputResource && functionToolCallOutput == other.functionToolCallOutput; } 
@override int get hashCode { return functionToolCallOutput.hashCode; } 
@override String toString() { return 'ConversationItemFunctionToolCallOutputResource(functionToolCallOutput: $functionToolCallOutput)'; } 
 }
final class ConversationItemFileSearchCall extends ConversationItem {const ConversationItemFileSearchCall(this.fileSearchToolCall);

factory ConversationItemFileSearchCall.fromJson(Map<String, dynamic> json) { return ConversationItemFileSearchCall(FileSearchToolCall.fromJson(json)); }

final FileSearchToolCall fileSearchToolCall;

@override String get type { return 'file_search_call'; } 
@override Map<String, dynamic> toJson() { return {...fileSearchToolCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ConversationItemFileSearchCall && fileSearchToolCall == other.fileSearchToolCall; } 
@override int get hashCode { return fileSearchToolCall.hashCode; } 
@override String toString() { return 'ConversationItemFileSearchCall(fileSearchToolCall: $fileSearchToolCall)'; } 
 }
final class ConversationItemWebSearchCall extends ConversationItem {const ConversationItemWebSearchCall(this.webSearchToolCall);

factory ConversationItemWebSearchCall.fromJson(Map<String, dynamic> json) { return ConversationItemWebSearchCall(WebSearchToolCall.fromJson(json)); }

final WebSearchToolCall webSearchToolCall;

@override String get type { return 'web_search_call'; } 
@override Map<String, dynamic> toJson() { return {...webSearchToolCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ConversationItemWebSearchCall && webSearchToolCall == other.webSearchToolCall; } 
@override int get hashCode { return webSearchToolCall.hashCode; } 
@override String toString() { return 'ConversationItemWebSearchCall(webSearchToolCall: $webSearchToolCall)'; } 
 }
final class ConversationItemImageGenerationCall extends ConversationItem {const ConversationItemImageGenerationCall(this.imageGenToolCall);

factory ConversationItemImageGenerationCall.fromJson(Map<String, dynamic> json) { return ConversationItemImageGenerationCall(ImageGenToolCall.fromJson(json)); }

final ImageGenToolCall imageGenToolCall;

@override String get type { return 'image_generation_call'; } 
@override Map<String, dynamic> toJson() { return {...imageGenToolCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ConversationItemImageGenerationCall && imageGenToolCall == other.imageGenToolCall; } 
@override int get hashCode { return imageGenToolCall.hashCode; } 
@override String toString() { return 'ConversationItemImageGenerationCall(imageGenToolCall: $imageGenToolCall)'; } 
 }
final class ConversationItemComputerCall extends ConversationItem {const ConversationItemComputerCall(this.computerToolCall);

factory ConversationItemComputerCall.fromJson(Map<String, dynamic> json) { return ConversationItemComputerCall(ComputerToolCall.fromJson(json)); }

final ComputerToolCall computerToolCall;

@override String get type { return 'computer_call'; } 
@override Map<String, dynamic> toJson() { return {...computerToolCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ConversationItemComputerCall && computerToolCall == other.computerToolCall; } 
@override int get hashCode { return computerToolCall.hashCode; } 
@override String toString() { return 'ConversationItemComputerCall(computerToolCall: $computerToolCall)'; } 
 }
final class ConversationItemComputerToolCallOutputResource extends ConversationItem {const ConversationItemComputerToolCallOutputResource(this.computerToolCallOutput);

factory ConversationItemComputerToolCallOutputResource.fromJson(Map<String, dynamic> json) { return ConversationItemComputerToolCallOutputResource(ComputerToolCallOutput.fromJson(json)); }

final ComputerToolCallOutput computerToolCallOutput;

@override String get type { return 'ComputerToolCallOutputResource'; } 
@override Map<String, dynamic> toJson() { return {...computerToolCallOutput.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ConversationItemComputerToolCallOutputResource && computerToolCallOutput == other.computerToolCallOutput; } 
@override int get hashCode { return computerToolCallOutput.hashCode; } 
@override String toString() { return 'ConversationItemComputerToolCallOutputResource(computerToolCallOutput: $computerToolCallOutput)'; } 
 }
final class ConversationItemToolSearchCall extends ConversationItem {const ConversationItemToolSearchCall(this.toolSearchCall);

factory ConversationItemToolSearchCall.fromJson(Map<String, dynamic> json) { return ConversationItemToolSearchCall(ToolSearchCall.fromJson(json)); }

final ToolSearchCall toolSearchCall;

@override String get type { return 'tool_search_call'; } 
@override Map<String, dynamic> toJson() { return {...toolSearchCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ConversationItemToolSearchCall && toolSearchCall == other.toolSearchCall; } 
@override int get hashCode { return toolSearchCall.hashCode; } 
@override String toString() { return 'ConversationItemToolSearchCall(toolSearchCall: $toolSearchCall)'; } 
 }
final class ConversationItemToolSearchOutput extends ConversationItem {const ConversationItemToolSearchOutput(this.toolSearchOutput);

factory ConversationItemToolSearchOutput.fromJson(Map<String, dynamic> json) { return ConversationItemToolSearchOutput(ToolSearchOutput.fromJson(json)); }

final ToolSearchOutput toolSearchOutput;

@override String get type { return 'tool_search_output'; } 
@override Map<String, dynamic> toJson() { return {...toolSearchOutput.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ConversationItemToolSearchOutput && toolSearchOutput == other.toolSearchOutput; } 
@override int get hashCode { return toolSearchOutput.hashCode; } 
@override String toString() { return 'ConversationItemToolSearchOutput(toolSearchOutput: $toolSearchOutput)'; } 
 }
final class ConversationItemReasoning extends ConversationItem {const ConversationItemReasoning(this.reasoningItem);

factory ConversationItemReasoning.fromJson(Map<String, dynamic> json) { return ConversationItemReasoning(ReasoningItem.fromJson(json)); }

final ReasoningItem reasoningItem;

@override String get type { return 'reasoning'; } 
@override Map<String, dynamic> toJson() { return {...reasoningItem.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ConversationItemReasoning && reasoningItem == other.reasoningItem; } 
@override int get hashCode { return reasoningItem.hashCode; } 
@override String toString() { return 'ConversationItemReasoning(reasoningItem: $reasoningItem)'; } 
 }
final class ConversationItemCodeInterpreterCall extends ConversationItem {const ConversationItemCodeInterpreterCall(this.codeInterpreterToolCall);

factory ConversationItemCodeInterpreterCall.fromJson(Map<String, dynamic> json) { return ConversationItemCodeInterpreterCall(CodeInterpreterToolCall.fromJson(json)); }

final CodeInterpreterToolCall codeInterpreterToolCall;

@override String get type { return 'code_interpreter_call'; } 
@override Map<String, dynamic> toJson() { return {...codeInterpreterToolCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ConversationItemCodeInterpreterCall && codeInterpreterToolCall == other.codeInterpreterToolCall; } 
@override int get hashCode { return codeInterpreterToolCall.hashCode; } 
@override String toString() { return 'ConversationItemCodeInterpreterCall(codeInterpreterToolCall: $codeInterpreterToolCall)'; } 
 }
final class ConversationItemLocalShellCall extends ConversationItem {const ConversationItemLocalShellCall(this.localShellToolCall);

factory ConversationItemLocalShellCall.fromJson(Map<String, dynamic> json) { return ConversationItemLocalShellCall(LocalShellToolCall.fromJson(json)); }

final LocalShellToolCall localShellToolCall;

@override String get type { return 'local_shell_call'; } 
@override Map<String, dynamic> toJson() { return {...localShellToolCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ConversationItemLocalShellCall && localShellToolCall == other.localShellToolCall; } 
@override int get hashCode { return localShellToolCall.hashCode; } 
@override String toString() { return 'ConversationItemLocalShellCall(localShellToolCall: $localShellToolCall)'; } 
 }
final class ConversationItemLocalShellCallOutput extends ConversationItem {const ConversationItemLocalShellCallOutput(this.localShellToolCallOutput);

factory ConversationItemLocalShellCallOutput.fromJson(Map<String, dynamic> json) { return ConversationItemLocalShellCallOutput(LocalShellToolCallOutput.fromJson(json)); }

final LocalShellToolCallOutput localShellToolCallOutput;

@override String get type { return 'local_shell_call_output'; } 
@override Map<String, dynamic> toJson() { return {...localShellToolCallOutput.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ConversationItemLocalShellCallOutput && localShellToolCallOutput == other.localShellToolCallOutput; } 
@override int get hashCode { return localShellToolCallOutput.hashCode; } 
@override String toString() { return 'ConversationItemLocalShellCallOutput(localShellToolCallOutput: $localShellToolCallOutput)'; } 
 }
final class ConversationItemShellCall extends ConversationItem {const ConversationItemShellCall(this.functionShellCall);

factory ConversationItemShellCall.fromJson(Map<String, dynamic> json) { return ConversationItemShellCall(FunctionShellCall.fromJson(json)); }

final FunctionShellCall functionShellCall;

@override String get type { return 'shell_call'; } 
@override Map<String, dynamic> toJson() { return {...functionShellCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ConversationItemShellCall && functionShellCall == other.functionShellCall; } 
@override int get hashCode { return functionShellCall.hashCode; } 
@override String toString() { return 'ConversationItemShellCall(functionShellCall: $functionShellCall)'; } 
 }
final class ConversationItemShellCallOutput extends ConversationItem {const ConversationItemShellCallOutput(this.functionShellCallOutput);

factory ConversationItemShellCallOutput.fromJson(Map<String, dynamic> json) { return ConversationItemShellCallOutput(FunctionShellCallOutput.fromJson(json)); }

final FunctionShellCallOutput functionShellCallOutput;

@override String get type { return 'shell_call_output'; } 
@override Map<String, dynamic> toJson() { return {...functionShellCallOutput.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ConversationItemShellCallOutput && functionShellCallOutput == other.functionShellCallOutput; } 
@override int get hashCode { return functionShellCallOutput.hashCode; } 
@override String toString() { return 'ConversationItemShellCallOutput(functionShellCallOutput: $functionShellCallOutput)'; } 
 }
final class ConversationItemApplyPatchCall extends ConversationItem {const ConversationItemApplyPatchCall(this.applyPatchToolCall);

factory ConversationItemApplyPatchCall.fromJson(Map<String, dynamic> json) { return ConversationItemApplyPatchCall(ApplyPatchToolCall.fromJson(json)); }

final ApplyPatchToolCall applyPatchToolCall;

@override String get type { return 'apply_patch_call'; } 
@override Map<String, dynamic> toJson() { return {...applyPatchToolCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ConversationItemApplyPatchCall && applyPatchToolCall == other.applyPatchToolCall; } 
@override int get hashCode { return applyPatchToolCall.hashCode; } 
@override String toString() { return 'ConversationItemApplyPatchCall(applyPatchToolCall: $applyPatchToolCall)'; } 
 }
final class ConversationItemApplyPatchCallOutput extends ConversationItem {const ConversationItemApplyPatchCallOutput(this.applyPatchToolCallOutput);

factory ConversationItemApplyPatchCallOutput.fromJson(Map<String, dynamic> json) { return ConversationItemApplyPatchCallOutput(ApplyPatchToolCallOutput.fromJson(json)); }

final ApplyPatchToolCallOutput applyPatchToolCallOutput;

@override String get type { return 'apply_patch_call_output'; } 
@override Map<String, dynamic> toJson() { return {...applyPatchToolCallOutput.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ConversationItemApplyPatchCallOutput && applyPatchToolCallOutput == other.applyPatchToolCallOutput; } 
@override int get hashCode { return applyPatchToolCallOutput.hashCode; } 
@override String toString() { return 'ConversationItemApplyPatchCallOutput(applyPatchToolCallOutput: $applyPatchToolCallOutput)'; } 
 }
final class ConversationItemMcpListTools extends ConversationItem {const ConversationItemMcpListTools(this.mcpListTools);

factory ConversationItemMcpListTools.fromJson(Map<String, dynamic> json) { return ConversationItemMcpListTools(McpListTools.fromJson(json)); }

final McpListTools mcpListTools;

@override String get type { return 'mcp_list_tools'; } 
@override Map<String, dynamic> toJson() { return {...mcpListTools.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ConversationItemMcpListTools && mcpListTools == other.mcpListTools; } 
@override int get hashCode { return mcpListTools.hashCode; } 
@override String toString() { return 'ConversationItemMcpListTools(mcpListTools: $mcpListTools)'; } 
 }
final class ConversationItemMcpApprovalRequest extends ConversationItem {const ConversationItemMcpApprovalRequest(this.mcpApprovalRequest);

factory ConversationItemMcpApprovalRequest.fromJson(Map<String, dynamic> json) { return ConversationItemMcpApprovalRequest(McpApprovalRequest.fromJson(json)); }

final McpApprovalRequest mcpApprovalRequest;

@override String get type { return 'mcp_approval_request'; } 
@override Map<String, dynamic> toJson() { return {...mcpApprovalRequest.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ConversationItemMcpApprovalRequest && mcpApprovalRequest == other.mcpApprovalRequest; } 
@override int get hashCode { return mcpApprovalRequest.hashCode; } 
@override String toString() { return 'ConversationItemMcpApprovalRequest(mcpApprovalRequest: $mcpApprovalRequest)'; } 
 }
final class ConversationItemMcpApprovalResponse extends ConversationItem {const ConversationItemMcpApprovalResponse(this.mcpApprovalResponseResource);

factory ConversationItemMcpApprovalResponse.fromJson(Map<String, dynamic> json) { return ConversationItemMcpApprovalResponse(McpApprovalResponseResource.fromJson(json)); }

final McpApprovalResponseResource mcpApprovalResponseResource;

@override String get type { return 'mcp_approval_response'; } 
@override Map<String, dynamic> toJson() { return {...mcpApprovalResponseResource.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ConversationItemMcpApprovalResponse && mcpApprovalResponseResource == other.mcpApprovalResponseResource; } 
@override int get hashCode { return mcpApprovalResponseResource.hashCode; } 
@override String toString() { return 'ConversationItemMcpApprovalResponse(mcpApprovalResponseResource: $mcpApprovalResponseResource)'; } 
 }
final class ConversationItemMcpCall extends ConversationItem {const ConversationItemMcpCall(this.mcpToolCall);

factory ConversationItemMcpCall.fromJson(Map<String, dynamic> json) { return ConversationItemMcpCall(McpToolCall.fromJson(json)); }

final McpToolCall mcpToolCall;

@override String get type { return 'mcp_call'; } 
@override Map<String, dynamic> toJson() { return {...mcpToolCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ConversationItemMcpCall && mcpToolCall == other.mcpToolCall; } 
@override int get hashCode { return mcpToolCall.hashCode; } 
@override String toString() { return 'ConversationItemMcpCall(mcpToolCall: $mcpToolCall)'; } 
 }
final class ConversationItemCustomToolCall extends ConversationItem {const ConversationItemCustomToolCall(this.customToolCall);

factory ConversationItemCustomToolCall.fromJson(Map<String, dynamic> json) { return ConversationItemCustomToolCall(CustomToolCall.fromJson(json)); }

final CustomToolCall customToolCall;

@override String get type { return 'custom_tool_call'; } 
@override Map<String, dynamic> toJson() { return {...customToolCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ConversationItemCustomToolCall && customToolCall == other.customToolCall; } 
@override int get hashCode { return customToolCall.hashCode; } 
@override String toString() { return 'ConversationItemCustomToolCall(customToolCall: $customToolCall)'; } 
 }
final class ConversationItemCustomToolCallOutput extends ConversationItem {const ConversationItemCustomToolCallOutput(this.customToolCallOutput);

factory ConversationItemCustomToolCallOutput.fromJson(Map<String, dynamic> json) { return ConversationItemCustomToolCallOutput(CustomToolCallOutput.fromJson(json)); }

final CustomToolCallOutput customToolCallOutput;

@override String get type { return 'custom_tool_call_output'; } 
@override Map<String, dynamic> toJson() { return {...customToolCallOutput.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ConversationItemCustomToolCallOutput && customToolCallOutput == other.customToolCallOutput; } 
@override int get hashCode { return customToolCallOutput.hashCode; } 
@override String toString() { return 'ConversationItemCustomToolCallOutput(customToolCallOutput: $customToolCallOutput)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
final class ConversationItem$Unknown extends ConversationItem {const ConversationItem$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ConversationItem$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'ConversationItem.unknown($json)'; } 
 }
