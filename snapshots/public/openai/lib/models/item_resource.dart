// GENERATED CODE - DO NOT MODIFY BY HAND

import 'apply_patch_tool_call.dart';import 'apply_patch_tool_call_output.dart';import 'code_interpreter_tool_call.dart';import 'computer_tool_call.dart';import 'computer_tool_call_output.dart';import 'file_search_tool_call.dart';import 'function_shell_call.dart';import 'function_shell_call_output.dart';import 'function_tool_call.dart';import 'function_tool_call_output.dart';import 'image_gen_tool_call.dart';import 'input_message.dart';import 'local_shell_tool_call.dart';import 'local_shell_tool_call_output.dart';import 'mcp_approval_request.dart';import 'mcp_approval_response_resource.dart';import 'mcp_list_tools.dart';import 'mcp_tool_call.dart';import 'output_message.dart';import 'tool_search_call.dart';import 'tool_search_output.dart';import 'web_search_tool_call.dart';/// Content item used to generate a response.
/// 
sealed class ItemResource {const ItemResource();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory ItemResource.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'InputMessageResource' => ItemResourceInputMessageResource.fromJson(json),
  'message' => ItemResourceMessage.fromJson(json),
  'file_search_call' => ItemResourceFileSearchCall.fromJson(json),
  'computer_call' => ItemResourceComputerCall.fromJson(json),
  'ComputerToolCallOutputResource' => ItemResourceComputerToolCallOutputResource.fromJson(json),
  'web_search_call' => ItemResourceWebSearchCall.fromJson(json),
  'FunctionToolCallResource' => ItemResourceFunctionToolCallResource.fromJson(json),
  'FunctionToolCallOutputResource' => ItemResourceFunctionToolCallOutputResource.fromJson(json),
  'tool_search_call' => ItemResourceToolSearchCall.fromJson(json),
  'tool_search_output' => ItemResourceToolSearchOutput.fromJson(json),
  'image_generation_call' => ItemResourceImageGenerationCall.fromJson(json),
  'code_interpreter_call' => ItemResourceCodeInterpreterCall.fromJson(json),
  'local_shell_call' => ItemResourceLocalShellCall.fromJson(json),
  'local_shell_call_output' => ItemResourceLocalShellCallOutput.fromJson(json),
  'shell_call' => ItemResourceShellCall.fromJson(json),
  'shell_call_output' => ItemResourceShellCallOutput.fromJson(json),
  'apply_patch_call' => ItemResourceApplyPatchCall.fromJson(json),
  'apply_patch_call_output' => ItemResourceApplyPatchCallOutput.fromJson(json),
  'mcp_list_tools' => ItemResourceMcpListTools.fromJson(json),
  'mcp_approval_request' => ItemResourceMcpApprovalRequest.fromJson(json),
  'mcp_approval_response' => ItemResourceMcpApprovalResponse.fromJson(json),
  'mcp_call' => ItemResourceMcpCall.fromJson(json),
  _ => ItemResource$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is ItemResource$Unknown; } 
 }
final class ItemResourceInputMessageResource extends ItemResource {const ItemResourceInputMessageResource(this.inputMessage);

factory ItemResourceInputMessageResource.fromJson(Map<String, dynamic> json) { return ItemResourceInputMessageResource(InputMessage.fromJson(json)); }

final InputMessage inputMessage;

@override String get type { return 'InputMessageResource'; } 
@override Map<String, dynamic> toJson() { return {...inputMessage.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemResourceInputMessageResource && inputMessage == other.inputMessage; } 
@override int get hashCode { return inputMessage.hashCode; } 
@override String toString() { return 'ItemResourceInputMessageResource(inputMessage: $inputMessage)'; } 
 }
final class ItemResourceMessage extends ItemResource {const ItemResourceMessage(this.outputMessage);

factory ItemResourceMessage.fromJson(Map<String, dynamic> json) { return ItemResourceMessage(OutputMessage.fromJson(json)); }

final OutputMessage outputMessage;

@override String get type { return 'message'; } 
@override Map<String, dynamic> toJson() { return {...outputMessage.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemResourceMessage && outputMessage == other.outputMessage; } 
@override int get hashCode { return outputMessage.hashCode; } 
@override String toString() { return 'ItemResourceMessage(outputMessage: $outputMessage)'; } 
 }
final class ItemResourceFileSearchCall extends ItemResource {const ItemResourceFileSearchCall(this.fileSearchToolCall);

factory ItemResourceFileSearchCall.fromJson(Map<String, dynamic> json) { return ItemResourceFileSearchCall(FileSearchToolCall.fromJson(json)); }

final FileSearchToolCall fileSearchToolCall;

@override String get type { return 'file_search_call'; } 
@override Map<String, dynamic> toJson() { return {...fileSearchToolCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemResourceFileSearchCall && fileSearchToolCall == other.fileSearchToolCall; } 
@override int get hashCode { return fileSearchToolCall.hashCode; } 
@override String toString() { return 'ItemResourceFileSearchCall(fileSearchToolCall: $fileSearchToolCall)'; } 
 }
final class ItemResourceComputerCall extends ItemResource {const ItemResourceComputerCall(this.computerToolCall);

factory ItemResourceComputerCall.fromJson(Map<String, dynamic> json) { return ItemResourceComputerCall(ComputerToolCall.fromJson(json)); }

final ComputerToolCall computerToolCall;

@override String get type { return 'computer_call'; } 
@override Map<String, dynamic> toJson() { return {...computerToolCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemResourceComputerCall && computerToolCall == other.computerToolCall; } 
@override int get hashCode { return computerToolCall.hashCode; } 
@override String toString() { return 'ItemResourceComputerCall(computerToolCall: $computerToolCall)'; } 
 }
final class ItemResourceComputerToolCallOutputResource extends ItemResource {const ItemResourceComputerToolCallOutputResource(this.computerToolCallOutput);

factory ItemResourceComputerToolCallOutputResource.fromJson(Map<String, dynamic> json) { return ItemResourceComputerToolCallOutputResource(ComputerToolCallOutput.fromJson(json)); }

final ComputerToolCallOutput computerToolCallOutput;

@override String get type { return 'ComputerToolCallOutputResource'; } 
@override Map<String, dynamic> toJson() { return {...computerToolCallOutput.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemResourceComputerToolCallOutputResource && computerToolCallOutput == other.computerToolCallOutput; } 
@override int get hashCode { return computerToolCallOutput.hashCode; } 
@override String toString() { return 'ItemResourceComputerToolCallOutputResource(computerToolCallOutput: $computerToolCallOutput)'; } 
 }
final class ItemResourceWebSearchCall extends ItemResource {const ItemResourceWebSearchCall(this.webSearchToolCall);

factory ItemResourceWebSearchCall.fromJson(Map<String, dynamic> json) { return ItemResourceWebSearchCall(WebSearchToolCall.fromJson(json)); }

final WebSearchToolCall webSearchToolCall;

@override String get type { return 'web_search_call'; } 
@override Map<String, dynamic> toJson() { return {...webSearchToolCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemResourceWebSearchCall && webSearchToolCall == other.webSearchToolCall; } 
@override int get hashCode { return webSearchToolCall.hashCode; } 
@override String toString() { return 'ItemResourceWebSearchCall(webSearchToolCall: $webSearchToolCall)'; } 
 }
final class ItemResourceFunctionToolCallResource extends ItemResource {const ItemResourceFunctionToolCallResource(this.functionToolCall);

factory ItemResourceFunctionToolCallResource.fromJson(Map<String, dynamic> json) { return ItemResourceFunctionToolCallResource(FunctionToolCall.fromJson(json)); }

final FunctionToolCall functionToolCall;

@override String get type { return 'FunctionToolCallResource'; } 
@override Map<String, dynamic> toJson() { return {...functionToolCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemResourceFunctionToolCallResource && functionToolCall == other.functionToolCall; } 
@override int get hashCode { return functionToolCall.hashCode; } 
@override String toString() { return 'ItemResourceFunctionToolCallResource(functionToolCall: $functionToolCall)'; } 
 }
final class ItemResourceFunctionToolCallOutputResource extends ItemResource {const ItemResourceFunctionToolCallOutputResource(this.functionToolCallOutput);

factory ItemResourceFunctionToolCallOutputResource.fromJson(Map<String, dynamic> json) { return ItemResourceFunctionToolCallOutputResource(FunctionToolCallOutput.fromJson(json)); }

final FunctionToolCallOutput functionToolCallOutput;

@override String get type { return 'FunctionToolCallOutputResource'; } 
@override Map<String, dynamic> toJson() { return {...functionToolCallOutput.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemResourceFunctionToolCallOutputResource && functionToolCallOutput == other.functionToolCallOutput; } 
@override int get hashCode { return functionToolCallOutput.hashCode; } 
@override String toString() { return 'ItemResourceFunctionToolCallOutputResource(functionToolCallOutput: $functionToolCallOutput)'; } 
 }
final class ItemResourceToolSearchCall extends ItemResource {const ItemResourceToolSearchCall(this.toolSearchCall);

factory ItemResourceToolSearchCall.fromJson(Map<String, dynamic> json) { return ItemResourceToolSearchCall(ToolSearchCall.fromJson(json)); }

final ToolSearchCall toolSearchCall;

@override String get type { return 'tool_search_call'; } 
@override Map<String, dynamic> toJson() { return {...toolSearchCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemResourceToolSearchCall && toolSearchCall == other.toolSearchCall; } 
@override int get hashCode { return toolSearchCall.hashCode; } 
@override String toString() { return 'ItemResourceToolSearchCall(toolSearchCall: $toolSearchCall)'; } 
 }
final class ItemResourceToolSearchOutput extends ItemResource {const ItemResourceToolSearchOutput(this.toolSearchOutput);

factory ItemResourceToolSearchOutput.fromJson(Map<String, dynamic> json) { return ItemResourceToolSearchOutput(ToolSearchOutput.fromJson(json)); }

final ToolSearchOutput toolSearchOutput;

@override String get type { return 'tool_search_output'; } 
@override Map<String, dynamic> toJson() { return {...toolSearchOutput.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemResourceToolSearchOutput && toolSearchOutput == other.toolSearchOutput; } 
@override int get hashCode { return toolSearchOutput.hashCode; } 
@override String toString() { return 'ItemResourceToolSearchOutput(toolSearchOutput: $toolSearchOutput)'; } 
 }
final class ItemResourceImageGenerationCall extends ItemResource {const ItemResourceImageGenerationCall(this.imageGenToolCall);

factory ItemResourceImageGenerationCall.fromJson(Map<String, dynamic> json) { return ItemResourceImageGenerationCall(ImageGenToolCall.fromJson(json)); }

final ImageGenToolCall imageGenToolCall;

@override String get type { return 'image_generation_call'; } 
@override Map<String, dynamic> toJson() { return {...imageGenToolCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemResourceImageGenerationCall && imageGenToolCall == other.imageGenToolCall; } 
@override int get hashCode { return imageGenToolCall.hashCode; } 
@override String toString() { return 'ItemResourceImageGenerationCall(imageGenToolCall: $imageGenToolCall)'; } 
 }
final class ItemResourceCodeInterpreterCall extends ItemResource {const ItemResourceCodeInterpreterCall(this.codeInterpreterToolCall);

factory ItemResourceCodeInterpreterCall.fromJson(Map<String, dynamic> json) { return ItemResourceCodeInterpreterCall(CodeInterpreterToolCall.fromJson(json)); }

final CodeInterpreterToolCall codeInterpreterToolCall;

@override String get type { return 'code_interpreter_call'; } 
@override Map<String, dynamic> toJson() { return {...codeInterpreterToolCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemResourceCodeInterpreterCall && codeInterpreterToolCall == other.codeInterpreterToolCall; } 
@override int get hashCode { return codeInterpreterToolCall.hashCode; } 
@override String toString() { return 'ItemResourceCodeInterpreterCall(codeInterpreterToolCall: $codeInterpreterToolCall)'; } 
 }
final class ItemResourceLocalShellCall extends ItemResource {const ItemResourceLocalShellCall(this.localShellToolCall);

factory ItemResourceLocalShellCall.fromJson(Map<String, dynamic> json) { return ItemResourceLocalShellCall(LocalShellToolCall.fromJson(json)); }

final LocalShellToolCall localShellToolCall;

@override String get type { return 'local_shell_call'; } 
@override Map<String, dynamic> toJson() { return {...localShellToolCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemResourceLocalShellCall && localShellToolCall == other.localShellToolCall; } 
@override int get hashCode { return localShellToolCall.hashCode; } 
@override String toString() { return 'ItemResourceLocalShellCall(localShellToolCall: $localShellToolCall)'; } 
 }
final class ItemResourceLocalShellCallOutput extends ItemResource {const ItemResourceLocalShellCallOutput(this.localShellToolCallOutput);

factory ItemResourceLocalShellCallOutput.fromJson(Map<String, dynamic> json) { return ItemResourceLocalShellCallOutput(LocalShellToolCallOutput.fromJson(json)); }

final LocalShellToolCallOutput localShellToolCallOutput;

@override String get type { return 'local_shell_call_output'; } 
@override Map<String, dynamic> toJson() { return {...localShellToolCallOutput.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemResourceLocalShellCallOutput && localShellToolCallOutput == other.localShellToolCallOutput; } 
@override int get hashCode { return localShellToolCallOutput.hashCode; } 
@override String toString() { return 'ItemResourceLocalShellCallOutput(localShellToolCallOutput: $localShellToolCallOutput)'; } 
 }
final class ItemResourceShellCall extends ItemResource {const ItemResourceShellCall(this.functionShellCall);

factory ItemResourceShellCall.fromJson(Map<String, dynamic> json) { return ItemResourceShellCall(FunctionShellCall.fromJson(json)); }

final FunctionShellCall functionShellCall;

@override String get type { return 'shell_call'; } 
@override Map<String, dynamic> toJson() { return {...functionShellCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemResourceShellCall && functionShellCall == other.functionShellCall; } 
@override int get hashCode { return functionShellCall.hashCode; } 
@override String toString() { return 'ItemResourceShellCall(functionShellCall: $functionShellCall)'; } 
 }
final class ItemResourceShellCallOutput extends ItemResource {const ItemResourceShellCallOutput(this.functionShellCallOutput);

factory ItemResourceShellCallOutput.fromJson(Map<String, dynamic> json) { return ItemResourceShellCallOutput(FunctionShellCallOutput.fromJson(json)); }

final FunctionShellCallOutput functionShellCallOutput;

@override String get type { return 'shell_call_output'; } 
@override Map<String, dynamic> toJson() { return {...functionShellCallOutput.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemResourceShellCallOutput && functionShellCallOutput == other.functionShellCallOutput; } 
@override int get hashCode { return functionShellCallOutput.hashCode; } 
@override String toString() { return 'ItemResourceShellCallOutput(functionShellCallOutput: $functionShellCallOutput)'; } 
 }
final class ItemResourceApplyPatchCall extends ItemResource {const ItemResourceApplyPatchCall(this.applyPatchToolCall);

factory ItemResourceApplyPatchCall.fromJson(Map<String, dynamic> json) { return ItemResourceApplyPatchCall(ApplyPatchToolCall.fromJson(json)); }

final ApplyPatchToolCall applyPatchToolCall;

@override String get type { return 'apply_patch_call'; } 
@override Map<String, dynamic> toJson() { return {...applyPatchToolCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemResourceApplyPatchCall && applyPatchToolCall == other.applyPatchToolCall; } 
@override int get hashCode { return applyPatchToolCall.hashCode; } 
@override String toString() { return 'ItemResourceApplyPatchCall(applyPatchToolCall: $applyPatchToolCall)'; } 
 }
final class ItemResourceApplyPatchCallOutput extends ItemResource {const ItemResourceApplyPatchCallOutput(this.applyPatchToolCallOutput);

factory ItemResourceApplyPatchCallOutput.fromJson(Map<String, dynamic> json) { return ItemResourceApplyPatchCallOutput(ApplyPatchToolCallOutput.fromJson(json)); }

final ApplyPatchToolCallOutput applyPatchToolCallOutput;

@override String get type { return 'apply_patch_call_output'; } 
@override Map<String, dynamic> toJson() { return {...applyPatchToolCallOutput.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemResourceApplyPatchCallOutput && applyPatchToolCallOutput == other.applyPatchToolCallOutput; } 
@override int get hashCode { return applyPatchToolCallOutput.hashCode; } 
@override String toString() { return 'ItemResourceApplyPatchCallOutput(applyPatchToolCallOutput: $applyPatchToolCallOutput)'; } 
 }
final class ItemResourceMcpListTools extends ItemResource {const ItemResourceMcpListTools(this.mcpListTools);

factory ItemResourceMcpListTools.fromJson(Map<String, dynamic> json) { return ItemResourceMcpListTools(McpListTools.fromJson(json)); }

final McpListTools mcpListTools;

@override String get type { return 'mcp_list_tools'; } 
@override Map<String, dynamic> toJson() { return {...mcpListTools.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemResourceMcpListTools && mcpListTools == other.mcpListTools; } 
@override int get hashCode { return mcpListTools.hashCode; } 
@override String toString() { return 'ItemResourceMcpListTools(mcpListTools: $mcpListTools)'; } 
 }
final class ItemResourceMcpApprovalRequest extends ItemResource {const ItemResourceMcpApprovalRequest(this.mcpApprovalRequest);

factory ItemResourceMcpApprovalRequest.fromJson(Map<String, dynamic> json) { return ItemResourceMcpApprovalRequest(McpApprovalRequest.fromJson(json)); }

final McpApprovalRequest mcpApprovalRequest;

@override String get type { return 'mcp_approval_request'; } 
@override Map<String, dynamic> toJson() { return {...mcpApprovalRequest.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemResourceMcpApprovalRequest && mcpApprovalRequest == other.mcpApprovalRequest; } 
@override int get hashCode { return mcpApprovalRequest.hashCode; } 
@override String toString() { return 'ItemResourceMcpApprovalRequest(mcpApprovalRequest: $mcpApprovalRequest)'; } 
 }
final class ItemResourceMcpApprovalResponse extends ItemResource {const ItemResourceMcpApprovalResponse(this.mcpApprovalResponseResource);

factory ItemResourceMcpApprovalResponse.fromJson(Map<String, dynamic> json) { return ItemResourceMcpApprovalResponse(McpApprovalResponseResource.fromJson(json)); }

final McpApprovalResponseResource mcpApprovalResponseResource;

@override String get type { return 'mcp_approval_response'; } 
@override Map<String, dynamic> toJson() { return {...mcpApprovalResponseResource.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemResourceMcpApprovalResponse && mcpApprovalResponseResource == other.mcpApprovalResponseResource; } 
@override int get hashCode { return mcpApprovalResponseResource.hashCode; } 
@override String toString() { return 'ItemResourceMcpApprovalResponse(mcpApprovalResponseResource: $mcpApprovalResponseResource)'; } 
 }
final class ItemResourceMcpCall extends ItemResource {const ItemResourceMcpCall(this.mcpToolCall);

factory ItemResourceMcpCall.fromJson(Map<String, dynamic> json) { return ItemResourceMcpCall(McpToolCall.fromJson(json)); }

final McpToolCall mcpToolCall;

@override String get type { return 'mcp_call'; } 
@override Map<String, dynamic> toJson() { return {...mcpToolCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemResourceMcpCall && mcpToolCall == other.mcpToolCall; } 
@override int get hashCode { return mcpToolCall.hashCode; } 
@override String toString() { return 'ItemResourceMcpCall(mcpToolCall: $mcpToolCall)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
final class ItemResource$Unknown extends ItemResource {const ItemResource$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ItemResource$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'ItemResource.unknown($json)'; } 
 }
