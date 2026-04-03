// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'create_fine_tuning_job_request_integrations_wandb.dart';/// The type of integration to enable. Currently, only "wandb" (Weights and Biases) is supported.
/// 
@immutable final class CreateFineTuningJobRequestIntegrationsType {const CreateFineTuningJobRequestIntegrationsType._(this.value);

factory CreateFineTuningJobRequestIntegrationsType.fromJson(String json) { return switch (json) {
  'wandb' => wandb,
  _ => CreateFineTuningJobRequestIntegrationsType._(json),
}; }

static const CreateFineTuningJobRequestIntegrationsType wandb = CreateFineTuningJobRequestIntegrationsType._('wandb');

static const List<CreateFineTuningJobRequestIntegrationsType> values = [wandb];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateFineTuningJobRequestIntegrationsType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CreateFineTuningJobRequestIntegrationsType($value)'; } 
 }
@immutable final class CreateFineTuningJobRequestIntegrations {const CreateFineTuningJobRequestIntegrations({required this.type, required this.wandb, });

factory CreateFineTuningJobRequestIntegrations.fromJson(Map<String, dynamic> json) { return CreateFineTuningJobRequestIntegrations(
  type: CreateFineTuningJobRequestIntegrationsType.fromJson(json['type'] as String),
  wandb: CreateFineTuningJobRequestIntegrationsWandb.fromJson(json['wandb'] as Map<String, dynamic>),
); }

/// The type of integration to enable. Currently, only "wandb" (Weights and Biases) is supported.
/// 
final CreateFineTuningJobRequestIntegrationsType type;

/// The settings for your integration with Weights and Biases. This payload specifies the project that
/// metrics will be sent to. Optionally, you can set an explicit display name for your run, add tags
/// to your run, and set a default entity (team, username, etc) to be associated with your run.
/// 
final CreateFineTuningJobRequestIntegrationsWandb wandb;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'wandb': wandb.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('wandb'); } 
CreateFineTuningJobRequestIntegrations copyWith({CreateFineTuningJobRequestIntegrationsType? type, CreateFineTuningJobRequestIntegrationsWandb? wandb, }) { return CreateFineTuningJobRequestIntegrations(
  type: type ?? this.type,
  wandb: wandb ?? this.wandb,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateFineTuningJobRequestIntegrations &&
          type == other.type &&
          wandb == other.wandb; } 
@override int get hashCode { return Object.hash(type, wandb); } 
@override String toString() { return 'CreateFineTuningJobRequestIntegrations(type: $type, wandb: $wandb)'; } 
 }
