// GENERATED CODE - DO NOT MODIFY BY HAND

import 'inline_skill_param.dart';import 'skill_reference_param.dart';sealed class CreateContainerBodySkills {const CreateContainerBodySkills();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory CreateContainerBodySkills.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'skill_reference' => CreateContainerBodySkillsSkillReference.fromJson(json),
  'inline' => CreateContainerBodySkillsInline.fromJson(json),
  _ => CreateContainerBodySkills$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is CreateContainerBodySkills$Unknown; } 
 }
final class CreateContainerBodySkillsSkillReference extends CreateContainerBodySkills {const CreateContainerBodySkillsSkillReference(this.skillReferenceParam);

factory CreateContainerBodySkillsSkillReference.fromJson(Map<String, dynamic> json) { return CreateContainerBodySkillsSkillReference(SkillReferenceParam.fromJson(json)); }

final SkillReferenceParam skillReferenceParam;

@override String get type { return 'skill_reference'; } 
@override Map<String, dynamic> toJson() { return {...skillReferenceParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateContainerBodySkillsSkillReference && skillReferenceParam == other.skillReferenceParam; } 
@override int get hashCode { return skillReferenceParam.hashCode; } 
@override String toString() { return 'CreateContainerBodySkillsSkillReference(skillReferenceParam: $skillReferenceParam)'; } 
 }
final class CreateContainerBodySkillsInline extends CreateContainerBodySkills {const CreateContainerBodySkillsInline(this.inlineSkillParam);

factory CreateContainerBodySkillsInline.fromJson(Map<String, dynamic> json) { return CreateContainerBodySkillsInline(InlineSkillParam.fromJson(json)); }

final InlineSkillParam inlineSkillParam;

@override String get type { return 'inline'; } 
@override Map<String, dynamic> toJson() { return {...inlineSkillParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateContainerBodySkillsInline && inlineSkillParam == other.inlineSkillParam; } 
@override int get hashCode { return inlineSkillParam.hashCode; } 
@override String toString() { return 'CreateContainerBodySkillsInline(inlineSkillParam: $inlineSkillParam)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
final class CreateContainerBodySkills$Unknown extends CreateContainerBodySkills {const CreateContainerBodySkills$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateContainerBodySkills$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'CreateContainerBodySkills.unknown($json)'; } 
 }
