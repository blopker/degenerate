// GENERATED CODE - DO NOT MODIFY BY HAND

import 'code_scanning_analysis_tool_guid.dart';import 'code_scanning_analysis_tool_name.dart';/// The version of the tool used to generate the code scanning analysis.
extension type const CodeScanningAnalysisToolVersion(String value) {
factory CodeScanningAnalysisToolVersion.fromJson(String json) => CodeScanningAnalysisToolVersion(json);

String toJson() => value;

}
final class CodeScanningAnalysisTool {const CodeScanningAnalysisTool({this.name, this.version, this.guid, });

factory CodeScanningAnalysisTool.fromJson(Map<String, dynamic> json) { return CodeScanningAnalysisTool(
  name: json['name'] != null ? CodeScanningAnalysisToolName.fromJson(json['name'] as String) : null,
  version: json['version'] != null ? CodeScanningAnalysisToolVersion.fromJson(json['version'] as String) : null,
  guid: json['guid'] != null ? CodeScanningAnalysisToolGuid.fromJson(json['guid'] as String) : null,
); }

/// The name of the tool used to generate the code scanning analysis.
final CodeScanningAnalysisToolName? name;

/// The version of the tool used to generate the code scanning analysis.
final CodeScanningAnalysisToolVersion? version;

/// The GUID of the tool used to generate the code scanning analysis, if provided in the uploaded SARIF data.
final CodeScanningAnalysisToolGuid? guid;

Map<String, dynamic> toJson() { return {
  if (name != null) 'name': name?.toJson(),
  if (version != null) 'version': version?.toJson(),
  if (guid != null) 'guid': guid?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
CodeScanningAnalysisTool copyWith({CodeScanningAnalysisToolName Function()? name, CodeScanningAnalysisToolVersion? Function()? version, CodeScanningAnalysisToolGuid? Function()? guid, }) { return CodeScanningAnalysisTool(
  name: name != null ? name() : this.name,
  version: version != null ? version() : this.version,
  guid: guid != null ? guid() : this.guid,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CodeScanningAnalysisTool &&
          name == other.name &&
          version == other.version &&
          guid == other.guid; } 
@override int get hashCode { return Object.hash(name, version, guid); } 
@override String toString() { return 'CodeScanningAnalysisTool(name: $name, version: $version, guid: $guid)'; } 
 }
