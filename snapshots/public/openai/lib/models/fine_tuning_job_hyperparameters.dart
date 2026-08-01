// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'fine_tuning_job_hyperparameters_batch_size.dart';import 'fine_tuning_job_hyperparameters_learning_rate_multiplier.dart';import 'fine_tuning_job_hyperparameters_n_epochs.dart';/// The hyperparameters used for the fine-tuning job. This value will only be returned when running `supervised` jobs.
@immutable final class FineTuningJobHyperparameters {const FineTuningJobHyperparameters({this.batchSize = const Omittable.absent(), this.learningRateMultiplier, this.nEpochs, });

factory FineTuningJobHyperparameters.fromJson(Map<String, dynamic> json) { return FineTuningJobHyperparameters(
  batchSize: json.containsKey('batch_size') ? Omittable(json['batch_size'] != null ? OneOf2.parse(json['batch_size'], fromA: (v) => FineTuningJobHyperparametersBatchSizeVariant1.fromJson(v as String), fromB: (v) => (v as num).toInt(),) : null) : const Omittable.absent(),
  learningRateMultiplier: json['learning_rate_multiplier'] != null ? OneOf2.parse(json['learning_rate_multiplier'], fromA: (v) => FineTuningJobHyperparametersLearningRateMultiplierVariant1.fromJson(v as String), fromB: (v) => (v as num).toDouble(),) : null,
  nEpochs: json['n_epochs'] != null ? OneOf2.parse(json['n_epochs'], fromA: (v) => FineTuningJobHyperparametersNEpochsVariant1.fromJson(v as String), fromB: (v) => (v as num).toInt(),) : null,
); }

/// Number of examples in each batch. A larger batch size means that model parameters
/// are updated less frequently, but with lower variance.
/// 
final Omittable<FineTuningJobHyperparametersBatchSize?> batchSize;

/// Scaling factor for the learning rate. A smaller learning rate may be useful to avoid
/// overfitting.
/// 
final FineTuningJobHyperparametersLearningRateMultiplier? learningRateMultiplier;

/// The number of epochs to train the model for. An epoch refers to one full cycle
/// through the training dataset.
/// 
final FineTuningJobHyperparametersNEpochs? nEpochs;

Map<String, dynamic> toJson() { return {
  if (batchSize.isPresent) 'batch_size': batchSize.value?.toJson(),
  if (learningRateMultiplier != null) 'learning_rate_multiplier': learningRateMultiplier?.toJson(),
  if (nEpochs != null) 'n_epochs': nEpochs?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'batch_size', 'learning_rate_multiplier', 'n_epochs'}.contains(key)); } 
FineTuningJobHyperparameters copyWith({Omittable<FineTuningJobHyperparametersBatchSize?>? batchSize, FineTuningJobHyperparametersLearningRateMultiplier? Function()? learningRateMultiplier, FineTuningJobHyperparametersNEpochs? Function()? nEpochs, }) { return FineTuningJobHyperparameters(
  batchSize: batchSize ?? this.batchSize,
  learningRateMultiplier: learningRateMultiplier != null ? learningRateMultiplier() : this.learningRateMultiplier,
  nEpochs: nEpochs != null ? nEpochs() : this.nEpochs,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FineTuningJobHyperparameters &&
          batchSize == other.batchSize &&
          learningRateMultiplier == other.learningRateMultiplier &&
          nEpochs == other.nEpochs; } 
@override int get hashCode { return Object.hash(batchSize, learningRateMultiplier, nEpochs); } 
@override String toString() { return 'FineTuningJobHyperparameters(batchSize: $batchSize, learningRateMultiplier: $learningRateMultiplier, nEpochs: $nEpochs)'; } 
 }
