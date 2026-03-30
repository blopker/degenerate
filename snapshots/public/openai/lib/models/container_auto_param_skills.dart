// GENERATED CODE - DO NOT MODIFY BY HAND

import 'inline_skill_param.dart';import 'skill_reference_param.dart';sealed class ContainerAutoParamSkills {const ContainerAutoParamSkills();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory ContainerAutoParamSkills.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'skill_reference' => ContainerAutoParamSkillsSkillReference.fromJson(json),
  'inline' => ContainerAutoParamSkillsInline.fromJson(json),
  _ => ContainerAutoParamSkills$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is ContainerAutoParamSkills$Unknown; } 
 }
final class ContainerAutoParamSkillsSkillReference extends ContainerAutoParamSkills {const ContainerAutoParamSkillsSkillReference(this.skillReferenceParam);

factory ContainerAutoParamSkillsSkillReference.fromJson(Map<String, dynamic> json) { return ContainerAutoParamSkillsSkillReference(SkillReferenceParam.fromJson(json)); }

final SkillReferenceParam skillReferenceParam;

@override String get type { return 'skill_reference'; } 
@override Map<String, dynamic> toJson() { return {...skillReferenceParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ContainerAutoParamSkillsSkillReference && skillReferenceParam == other.skillReferenceParam; } 
@override int get hashCode { return skillReferenceParam.hashCode; } 
@override String toString() { return 'ContainerAutoParamSkillsSkillReference(skillReferenceParam: $skillReferenceParam)'; } 
 }
final class ContainerAutoParamSkillsInline extends ContainerAutoParamSkills {const ContainerAutoParamSkillsInline(this.inlineSkillParam);

factory ContainerAutoParamSkillsInline.fromJson(Map<String, dynamic> json) { return ContainerAutoParamSkillsInline(InlineSkillParam.fromJson(json)); }

final InlineSkillParam inlineSkillParam;

@override String get type { return 'inline'; } 
@override Map<String, dynamic> toJson() { return {...inlineSkillParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ContainerAutoParamSkillsInline && inlineSkillParam == other.inlineSkillParam; } 
@override int get hashCode { return inlineSkillParam.hashCode; } 
@override String toString() { return 'ContainerAutoParamSkillsInline(inlineSkillParam: $inlineSkillParam)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
final class ContainerAutoParamSkills$Unknown extends ContainerAutoParamSkills {const ContainerAutoParamSkills$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ContainerAutoParamSkills$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'ContainerAutoParamSkills.unknown($json)'; } 
 }
