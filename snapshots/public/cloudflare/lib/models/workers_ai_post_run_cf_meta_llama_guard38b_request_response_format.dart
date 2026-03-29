// GENERATED CODE - DO NOT MODIFY BY HAND

/// Dictate the output format of the generated response.
final class WorkersAiPostRunCfMetaLlamaGuard38bRequestResponseFormat {const WorkersAiPostRunCfMetaLlamaGuard38bRequestResponseFormat({this.type});

factory WorkersAiPostRunCfMetaLlamaGuard38bRequestResponseFormat.fromJson(Map<String, dynamic> json) { return WorkersAiPostRunCfMetaLlamaGuard38bRequestResponseFormat(
  type: json['type'] as String?,
); }

/// Set to json_object to process and output generated text as JSON.
final String? type;

Map<String, dynamic> toJson() { return {
  'type': ?type,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
WorkersAiPostRunCfMetaLlamaGuard38bRequestResponseFormat copyWith({String Function()? type}) { return WorkersAiPostRunCfMetaLlamaGuard38bRequestResponseFormat(
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersAiPostRunCfMetaLlamaGuard38bRequestResponseFormat &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'WorkersAiPostRunCfMetaLlamaGuard38bRequestResponseFormat(type: $type)'; } 
 }
