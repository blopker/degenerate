// GENERATED CODE - DO NOT MODIFY BY HAND

import 'apply_patch_tool_param.dart';import 'code_interpreter_tool.dart';import 'computer_tool.dart';import 'computer_use_preview_tool.dart';import 'custom_tool_param.dart';import 'file_search_tool.dart';import 'function_shell_tool_param.dart';import 'function_tool.dart';import 'image_gen_tool.dart';import 'local_shell_tool_param.dart';import 'mcp_tool.dart';import 'namespace_tool_param.dart';import 'tool_search_tool_param.dart';import 'web_search_preview_tool.dart';import 'web_search_tool.dart';/// A tool that can be used to generate a response.
/// 
sealed class Tool {const Tool();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory Tool.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'function' => ToolFunction.fromJson(json),
  'file_search' => ToolFileSearch.fromJson(json),
  'computer' => ToolComputer.fromJson(json),
  'computer_use_preview' => ToolComputerUsePreview.fromJson(json),
  'web_search' => ToolWebSearch.fromJson(json),
  'mcp' => ToolMcp.fromJson(json),
  'code_interpreter' => ToolCodeInterpreter.fromJson(json),
  'image_generation' => ToolImageGeneration.fromJson(json),
  'local_shell' => ToolLocalShell.fromJson(json),
  'shell' => ToolShell.fromJson(json),
  'custom' => ToolCustom.fromJson(json),
  'namespace' => ToolNamespace.fromJson(json),
  'tool_search' => ToolToolSearch.fromJson(json),
  'web_search_preview' => ToolWebSearchPreview.fromJson(json),
  'apply_patch' => ToolApplyPatch.fromJson(json),
  _ => Tool$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is Tool$Unknown; } 
 }
final class ToolFunction extends Tool {const ToolFunction(this.functionTool);

factory ToolFunction.fromJson(Map<String, dynamic> json) { return ToolFunction(FunctionTool.fromJson(json)); }

final FunctionTool functionTool;

@override String get type { return 'function'; } 
@override Map<String, dynamic> toJson() { return {...functionTool.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ToolFunction && functionTool == other.functionTool; } 
@override int get hashCode { return functionTool.hashCode; } 
@override String toString() { return 'ToolFunction(functionTool: $functionTool)'; } 
 }
final class ToolFileSearch extends Tool {const ToolFileSearch(this.fileSearchTool);

factory ToolFileSearch.fromJson(Map<String, dynamic> json) { return ToolFileSearch(FileSearchTool.fromJson(json)); }

final FileSearchTool fileSearchTool;

@override String get type { return 'file_search'; } 
@override Map<String, dynamic> toJson() { return {...fileSearchTool.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ToolFileSearch && fileSearchTool == other.fileSearchTool; } 
@override int get hashCode { return fileSearchTool.hashCode; } 
@override String toString() { return 'ToolFileSearch(fileSearchTool: $fileSearchTool)'; } 
 }
final class ToolComputer extends Tool {const ToolComputer(this.computerTool);

factory ToolComputer.fromJson(Map<String, dynamic> json) { return ToolComputer(ComputerTool.fromJson(json)); }

final ComputerTool computerTool;

@override String get type { return 'computer'; } 
@override Map<String, dynamic> toJson() { return {...computerTool.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ToolComputer && computerTool == other.computerTool; } 
@override int get hashCode { return computerTool.hashCode; } 
@override String toString() { return 'ToolComputer(computerTool: $computerTool)'; } 
 }
final class ToolComputerUsePreview extends Tool {const ToolComputerUsePreview(this.computerUsePreviewTool);

factory ToolComputerUsePreview.fromJson(Map<String, dynamic> json) { return ToolComputerUsePreview(ComputerUsePreviewTool.fromJson(json)); }

final ComputerUsePreviewTool computerUsePreviewTool;

@override String get type { return 'computer_use_preview'; } 
@override Map<String, dynamic> toJson() { return {...computerUsePreviewTool.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ToolComputerUsePreview && computerUsePreviewTool == other.computerUsePreviewTool; } 
@override int get hashCode { return computerUsePreviewTool.hashCode; } 
@override String toString() { return 'ToolComputerUsePreview(computerUsePreviewTool: $computerUsePreviewTool)'; } 
 }
final class ToolWebSearch extends Tool {const ToolWebSearch(this.webSearchTool);

factory ToolWebSearch.fromJson(Map<String, dynamic> json) { return ToolWebSearch(WebSearchTool.fromJson(json)); }

final WebSearchTool webSearchTool;

@override String get type { return 'web_search'; } 
@override Map<String, dynamic> toJson() { return {...webSearchTool.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ToolWebSearch && webSearchTool == other.webSearchTool; } 
@override int get hashCode { return webSearchTool.hashCode; } 
@override String toString() { return 'ToolWebSearch(webSearchTool: $webSearchTool)'; } 
 }
final class ToolMcp extends Tool {const ToolMcp(this.mcpTool);

factory ToolMcp.fromJson(Map<String, dynamic> json) { return ToolMcp(McpTool.fromJson(json)); }

final McpTool mcpTool;

@override String get type { return 'mcp'; } 
@override Map<String, dynamic> toJson() { return {...mcpTool.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ToolMcp && mcpTool == other.mcpTool; } 
@override int get hashCode { return mcpTool.hashCode; } 
@override String toString() { return 'ToolMcp(mcpTool: $mcpTool)'; } 
 }
final class ToolCodeInterpreter extends Tool {const ToolCodeInterpreter(this.codeInterpreterTool);

factory ToolCodeInterpreter.fromJson(Map<String, dynamic> json) { return ToolCodeInterpreter(CodeInterpreterTool.fromJson(json)); }

final CodeInterpreterTool codeInterpreterTool;

@override String get type { return 'code_interpreter'; } 
@override Map<String, dynamic> toJson() { return {...codeInterpreterTool.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ToolCodeInterpreter && codeInterpreterTool == other.codeInterpreterTool; } 
@override int get hashCode { return codeInterpreterTool.hashCode; } 
@override String toString() { return 'ToolCodeInterpreter(codeInterpreterTool: $codeInterpreterTool)'; } 
 }
final class ToolImageGeneration extends Tool {const ToolImageGeneration(this.imageGenTool);

factory ToolImageGeneration.fromJson(Map<String, dynamic> json) { return ToolImageGeneration(ImageGenTool.fromJson(json)); }

final ImageGenTool imageGenTool;

@override String get type { return 'image_generation'; } 
@override Map<String, dynamic> toJson() { return {...imageGenTool.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ToolImageGeneration && imageGenTool == other.imageGenTool; } 
@override int get hashCode { return imageGenTool.hashCode; } 
@override String toString() { return 'ToolImageGeneration(imageGenTool: $imageGenTool)'; } 
 }
final class ToolLocalShell extends Tool {const ToolLocalShell(this.localShellToolParam);

factory ToolLocalShell.fromJson(Map<String, dynamic> json) { return ToolLocalShell(LocalShellToolParam.fromJson(json)); }

final LocalShellToolParam localShellToolParam;

@override String get type { return 'local_shell'; } 
@override Map<String, dynamic> toJson() { return {...localShellToolParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ToolLocalShell && localShellToolParam == other.localShellToolParam; } 
@override int get hashCode { return localShellToolParam.hashCode; } 
@override String toString() { return 'ToolLocalShell(localShellToolParam: $localShellToolParam)'; } 
 }
final class ToolShell extends Tool {const ToolShell(this.functionShellToolParam);

factory ToolShell.fromJson(Map<String, dynamic> json) { return ToolShell(FunctionShellToolParam.fromJson(json)); }

final FunctionShellToolParam functionShellToolParam;

@override String get type { return 'shell'; } 
@override Map<String, dynamic> toJson() { return {...functionShellToolParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ToolShell && functionShellToolParam == other.functionShellToolParam; } 
@override int get hashCode { return functionShellToolParam.hashCode; } 
@override String toString() { return 'ToolShell(functionShellToolParam: $functionShellToolParam)'; } 
 }
final class ToolCustom extends Tool {const ToolCustom(this.customToolParam);

factory ToolCustom.fromJson(Map<String, dynamic> json) { return ToolCustom(CustomToolParam.fromJson(json)); }

final CustomToolParam customToolParam;

@override String get type { return 'custom'; } 
@override Map<String, dynamic> toJson() { return {...customToolParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ToolCustom && customToolParam == other.customToolParam; } 
@override int get hashCode { return customToolParam.hashCode; } 
@override String toString() { return 'ToolCustom(customToolParam: $customToolParam)'; } 
 }
final class ToolNamespace extends Tool {const ToolNamespace(this.namespaceToolParam);

factory ToolNamespace.fromJson(Map<String, dynamic> json) { return ToolNamespace(NamespaceToolParam.fromJson(json)); }

final NamespaceToolParam namespaceToolParam;

@override String get type { return 'namespace'; } 
@override Map<String, dynamic> toJson() { return {...namespaceToolParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ToolNamespace && namespaceToolParam == other.namespaceToolParam; } 
@override int get hashCode { return namespaceToolParam.hashCode; } 
@override String toString() { return 'ToolNamespace(namespaceToolParam: $namespaceToolParam)'; } 
 }
final class ToolToolSearch extends Tool {const ToolToolSearch(this.toolSearchToolParam);

factory ToolToolSearch.fromJson(Map<String, dynamic> json) { return ToolToolSearch(ToolSearchToolParam.fromJson(json)); }

final ToolSearchToolParam toolSearchToolParam;

@override String get type { return 'tool_search'; } 
@override Map<String, dynamic> toJson() { return {...toolSearchToolParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ToolToolSearch && toolSearchToolParam == other.toolSearchToolParam; } 
@override int get hashCode { return toolSearchToolParam.hashCode; } 
@override String toString() { return 'ToolToolSearch(toolSearchToolParam: $toolSearchToolParam)'; } 
 }
final class ToolWebSearchPreview extends Tool {const ToolWebSearchPreview(this.webSearchPreviewTool);

factory ToolWebSearchPreview.fromJson(Map<String, dynamic> json) { return ToolWebSearchPreview(WebSearchPreviewTool.fromJson(json)); }

final WebSearchPreviewTool webSearchPreviewTool;

@override String get type { return 'web_search_preview'; } 
@override Map<String, dynamic> toJson() { return {...webSearchPreviewTool.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ToolWebSearchPreview && webSearchPreviewTool == other.webSearchPreviewTool; } 
@override int get hashCode { return webSearchPreviewTool.hashCode; } 
@override String toString() { return 'ToolWebSearchPreview(webSearchPreviewTool: $webSearchPreviewTool)'; } 
 }
final class ToolApplyPatch extends Tool {const ToolApplyPatch(this.applyPatchToolParam);

factory ToolApplyPatch.fromJson(Map<String, dynamic> json) { return ToolApplyPatch(ApplyPatchToolParam.fromJson(json)); }

final ApplyPatchToolParam applyPatchToolParam;

@override String get type { return 'apply_patch'; } 
@override Map<String, dynamic> toJson() { return {...applyPatchToolParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ToolApplyPatch && applyPatchToolParam == other.applyPatchToolParam; } 
@override int get hashCode { return applyPatchToolParam.hashCode; } 
@override String toString() { return 'ToolApplyPatch(applyPatchToolParam: $applyPatchToolParam)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
final class Tool$Unknown extends Tool {const Tool$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Tool$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'Tool.unknown($json)'; } 
 }
