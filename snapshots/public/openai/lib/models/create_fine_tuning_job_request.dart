// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'create_fine_tuning_job_request_hyperparameters.dart';import 'create_fine_tuning_job_request_integrations.dart';import 'create_fine_tuning_job_request_model.dart';import 'fine_tune_method.dart';@immutable final class CreateFineTuningJobRequest {const CreateFineTuningJobRequest({required this.model, required this.trainingFile, this.hyperparameters, this.suffix = const Omittable.absent(), this.validationFile = const Omittable.absent(), this.integrations = const Omittable.absent(), this.seed = const Omittable.absent(), this.method, this.metadata = const Omittable.absent(), });

factory CreateFineTuningJobRequest.fromJson(Map<String, dynamic> json) { return CreateFineTuningJobRequest(
  model: OneOf2.parse(json['model'], fromA: (v) => v as String, fromB: (v) => CreateFineTuningJobRequestModelVariant2.fromJson(v as String),),
  trainingFile: json['training_file'] as String,
  hyperparameters: json['hyperparameters'] != null ? CreateFineTuningJobRequestHyperparameters.fromJson(json['hyperparameters'] as Map<String, dynamic>) : null,
  suffix: json.containsKey('suffix') ? Omittable(json['suffix'] as String?) : const Omittable.absent(),
  validationFile: json.containsKey('validation_file') ? Omittable(json['validation_file'] as String?) : const Omittable.absent(),
  integrations: json.containsKey('integrations') ? Omittable((json['integrations'] as List<dynamic>?)?.map((e) => CreateFineTuningJobRequestIntegrations.fromJson(e as Map<String, dynamic>)).toList()) : const Omittable.absent(),
  seed: json.containsKey('seed') ? Omittable(json['seed'] != null ? (json['seed'] as num).toInt() : null) : const Omittable.absent(),
  method: json['method'] != null ? FineTuneMethod.fromJson(json['method'] as Map<String, dynamic>) : null,
  metadata: json.containsKey('metadata') ? Omittable((json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String))) : const Omittable.absent(),
); }

/// The name of the model to fine-tune. You can select one of the
/// [supported models](/docs/guides/fine-tuning#which-models-can-be-fine-tuned).
/// 
final CreateFineTuningJobRequestModel model;

/// The ID of an uploaded file that contains training data.
/// 
/// See [upload file](/docs/api-reference/files/create) for how to upload a file.
/// 
/// Your dataset must be formatted as a JSONL file. Additionally, you must upload your file with the purpose `fine-tune`.
/// 
/// The contents of the file should differ depending on if the model uses the [chat](/docs/api-reference/fine-tuning/chat-input), [completions](/docs/api-reference/fine-tuning/completions-input) format, or if the fine-tuning method uses the [preference](/docs/api-reference/fine-tuning/preference-input) format.
/// 
/// See the [fine-tuning guide](/docs/guides/model-optimization) for more details.
/// 
final String trainingFile;

/// The hyperparameters used for the fine-tuning job.
/// This value is now deprecated in favor of `method`, and should be passed in under the `method` parameter.
/// 
final CreateFineTuningJobRequestHyperparameters? hyperparameters;

/// A string of up to 64 characters that will be added to your fine-tuned model name.
/// 
/// For example, a `suffix` of "custom-model-name" would produce a model name like `ft:gpt-4o-mini:openai:custom-model-name:7p4lURel`.
/// 
final Omittable<String?> suffix;

/// The ID of an uploaded file that contains validation data.
/// 
/// If you provide this file, the data is used to generate validation
/// metrics periodically during fine-tuning. These metrics can be viewed in
/// the fine-tuning results file.
/// The same data should not be present in both train and validation files.
/// 
/// Your dataset must be formatted as a JSONL file. You must upload your file with the purpose `fine-tune`.
/// 
/// See the [fine-tuning guide](/docs/guides/model-optimization) for more details.
/// 
final Omittable<String?> validationFile;

/// A list of integrations to enable for your fine-tuning job.
final Omittable<List<CreateFineTuningJobRequestIntegrations>?> integrations;

/// The seed controls the reproducibility of the job. Passing in the same seed and job parameters should produce the same results, but may differ in rare cases.
/// If a seed is not specified, one will be generated for you.
/// 
final Omittable<int?> seed;

final FineTuneMethod? method;

final Omittable<Map<String,String>?> metadata;

Map<String, dynamic> toJson() { return {
  'model': model.toJson(),
  'training_file': trainingFile,
  if (hyperparameters != null) 'hyperparameters': hyperparameters?.toJson(),
  if (suffix.isPresent) 'suffix': suffix.value,
  if (validationFile.isPresent) 'validation_file': validationFile.value,
  if (integrations.isPresent) 'integrations': integrations.value?.map((e) => e.toJson()).toList(),
  if (seed.isPresent) 'seed': seed.value,
  if (method != null) 'method': method?.toJson(),
  if (metadata.isPresent) 'metadata': metadata.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('model') &&
      json.containsKey('training_file') && json['training_file'] is String; } 
CreateFineTuningJobRequest copyWith({CreateFineTuningJobRequestModel? model, String? trainingFile, CreateFineTuningJobRequestHyperparameters? Function()? hyperparameters, Omittable<String?>? suffix, Omittable<String?>? validationFile, Omittable<List<CreateFineTuningJobRequestIntegrations>?>? integrations, Omittable<int?>? seed, FineTuneMethod? Function()? method, Omittable<Map<String,String>?>? metadata, }) { return CreateFineTuningJobRequest(
  model: model ?? this.model,
  trainingFile: trainingFile ?? this.trainingFile,
  hyperparameters: hyperparameters != null ? hyperparameters() : this.hyperparameters,
  suffix: suffix ?? this.suffix,
  validationFile: validationFile ?? this.validationFile,
  integrations: integrations ?? this.integrations,
  seed: seed ?? this.seed,
  method: method != null ? method() : this.method,
  metadata: metadata ?? this.metadata,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateFineTuningJobRequest &&
          model == other.model &&
          trainingFile == other.trainingFile &&
          hyperparameters == other.hyperparameters &&
          suffix == other.suffix &&
          validationFile == other.validationFile &&
          integrations.isPresent == other.integrations.isPresent &&
          listEquals(integrations.value, other.integrations.value) &&
          seed == other.seed &&
          method == other.method &&
          metadata == other.metadata; } 
@override int get hashCode { return Object.hash(model, trainingFile, hyperparameters, suffix, validationFile, Object.hashAll(integrations.value ?? const []), seed, method, metadata); } 
@override String toString() { return 'CreateFineTuningJobRequest(model: $model, trainingFile: $trainingFile, hyperparameters: $hyperparameters, suffix: $suffix, validationFile: $validationFile, integrations: $integrations, seed: $seed, method: $method, metadata: $metadata)'; } 
 }
