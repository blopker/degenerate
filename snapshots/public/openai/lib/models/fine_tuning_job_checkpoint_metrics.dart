// GENERATED CODE - DO NOT MODIFY BY HAND

/// Metrics at the step number during the fine-tuning job.
final class FineTuningJobCheckpointMetrics {const FineTuningJobCheckpointMetrics({this.step, this.trainLoss, this.trainMeanTokenAccuracy, this.validLoss, this.validMeanTokenAccuracy, this.fullValidLoss, this.fullValidMeanTokenAccuracy, });

factory FineTuningJobCheckpointMetrics.fromJson(Map<String, dynamic> json) { return FineTuningJobCheckpointMetrics(
  step: json['step'] != null ? (json['step'] as num).toDouble() : null,
  trainLoss: json['train_loss'] != null ? (json['train_loss'] as num).toDouble() : null,
  trainMeanTokenAccuracy: json['train_mean_token_accuracy'] != null ? (json['train_mean_token_accuracy'] as num).toDouble() : null,
  validLoss: json['valid_loss'] != null ? (json['valid_loss'] as num).toDouble() : null,
  validMeanTokenAccuracy: json['valid_mean_token_accuracy'] != null ? (json['valid_mean_token_accuracy'] as num).toDouble() : null,
  fullValidLoss: json['full_valid_loss'] != null ? (json['full_valid_loss'] as num).toDouble() : null,
  fullValidMeanTokenAccuracy: json['full_valid_mean_token_accuracy'] != null ? (json['full_valid_mean_token_accuracy'] as num).toDouble() : null,
); }

final double? step;

final double? trainLoss;

final double? trainMeanTokenAccuracy;

final double? validLoss;

final double? validMeanTokenAccuracy;

final double? fullValidLoss;

final double? fullValidMeanTokenAccuracy;

Map<String, dynamic> toJson() { return {
  'step': ?step,
  'train_loss': ?trainLoss,
  'train_mean_token_accuracy': ?trainMeanTokenAccuracy,
  'valid_loss': ?validLoss,
  'valid_mean_token_accuracy': ?validMeanTokenAccuracy,
  'full_valid_loss': ?fullValidLoss,
  'full_valid_mean_token_accuracy': ?fullValidMeanTokenAccuracy,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'step', 'train_loss', 'train_mean_token_accuracy', 'valid_loss', 'valid_mean_token_accuracy', 'full_valid_loss', 'full_valid_mean_token_accuracy'}.contains(key)); } 
FineTuningJobCheckpointMetrics copyWith({double Function()? step, double Function()? trainLoss, double Function()? trainMeanTokenAccuracy, double Function()? validLoss, double Function()? validMeanTokenAccuracy, double Function()? fullValidLoss, double Function()? fullValidMeanTokenAccuracy, }) { return FineTuningJobCheckpointMetrics(
  step: step != null ? step() : this.step,
  trainLoss: trainLoss != null ? trainLoss() : this.trainLoss,
  trainMeanTokenAccuracy: trainMeanTokenAccuracy != null ? trainMeanTokenAccuracy() : this.trainMeanTokenAccuracy,
  validLoss: validLoss != null ? validLoss() : this.validLoss,
  validMeanTokenAccuracy: validMeanTokenAccuracy != null ? validMeanTokenAccuracy() : this.validMeanTokenAccuracy,
  fullValidLoss: fullValidLoss != null ? fullValidLoss() : this.fullValidLoss,
  fullValidMeanTokenAccuracy: fullValidMeanTokenAccuracy != null ? fullValidMeanTokenAccuracy() : this.fullValidMeanTokenAccuracy,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FineTuningJobCheckpointMetrics &&
          step == other.step &&
          trainLoss == other.trainLoss &&
          trainMeanTokenAccuracy == other.trainMeanTokenAccuracy &&
          validLoss == other.validLoss &&
          validMeanTokenAccuracy == other.validMeanTokenAccuracy &&
          fullValidLoss == other.fullValidLoss &&
          fullValidMeanTokenAccuracy == other.fullValidMeanTokenAccuracy; } 
@override int get hashCode { return Object.hash(step, trainLoss, trainMeanTokenAccuracy, validLoss, validMeanTokenAccuracy, fullValidLoss, fullValidMeanTokenAccuracy); } 
@override String toString() { return 'FineTuningJobCheckpointMetrics(step: $step, trainLoss: $trainLoss, trainMeanTokenAccuracy: $trainMeanTokenAccuracy, validLoss: $validLoss, validMeanTokenAccuracy: $validMeanTokenAccuracy, fullValidLoss: $fullValidLoss, fullValidMeanTokenAccuracy: $fullValidMeanTokenAccuracy)'; } 
 }
