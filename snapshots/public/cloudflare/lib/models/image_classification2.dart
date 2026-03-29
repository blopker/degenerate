// GENERATED CODE - DO NOT MODIFY BY HAND

final class ImageClassification2 {const ImageClassification2({this.label, this.score, });

factory ImageClassification2.fromJson(Map<String, dynamic> json) { return ImageClassification2(
  label: json['label'] as String?,
  score: json['score'] != null ? (json['score'] as num).toDouble() : null,
); }

/// The predicted category or class for the input image based on analysis
final String? label;

/// A confidence value, between 0 and 1, indicating how certain the model is about the predicted label
final double? score;

Map<String, dynamic> toJson() { return {
  'label': ?label,
  'score': ?score,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ImageClassification2 copyWith({String Function()? label, double Function()? score, }) { return ImageClassification2(
  label: label != null ? label() : this.label,
  score: score != null ? score() : this.score,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ImageClassification2 &&
          label == other.label &&
          score == other.score; } 
@override int get hashCode { return Object.hash(label, score); } 
@override String toString() { return 'ImageClassification2(label: $label, score: $score)'; } 
 }
