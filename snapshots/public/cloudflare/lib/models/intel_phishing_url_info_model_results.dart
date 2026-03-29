// GENERATED CODE - DO NOT MODIFY BY HAND

final class IntelPhishingUrlInfoModelResults {const IntelPhishingUrlInfoModelResults({this.modelName, this.modelScore, });

factory IntelPhishingUrlInfoModelResults.fromJson(Map<String, dynamic> json) { return IntelPhishingUrlInfoModelResults(
  modelName: json['model_name'] as String?,
  modelScore: json['model_score'] != null ? (json['model_score'] as num).toDouble() : null,
); }

/// Name of the model.
final String? modelName;

/// This is the score that is outputted by the model for this submission.
final double? modelScore;

Map<String, dynamic> toJson() { return {
  'model_name': ?modelName,
  'model_score': ?modelScore,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
IntelPhishingUrlInfoModelResults copyWith({String Function()? modelName, double Function()? modelScore, }) { return IntelPhishingUrlInfoModelResults(
  modelName: modelName != null ? modelName() : this.modelName,
  modelScore: modelScore != null ? modelScore() : this.modelScore,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IntelPhishingUrlInfoModelResults &&
          modelName == other.modelName &&
          modelScore == other.modelScore; } 
@override int get hashCode { return Object.hash(modelName, modelScore); } 
@override String toString() { return 'IntelPhishingUrlInfoModelResults(modelName: $modelName, modelScore: $modelScore)'; } 
 }
