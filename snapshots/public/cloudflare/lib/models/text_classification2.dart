// GENERATED CODE - DO NOT MODIFY BY HAND

final class TextClassification2 {const TextClassification2({this.label, this.score, });

factory TextClassification2.fromJson(Map<String, dynamic> json) { return TextClassification2(
  label: json['label'] as String?,
  score: json['score'] != null ? (json['score'] as num).toDouble() : null,
); }

/// The classification label assigned to the text (e.g., 'POSITIVE' or 'NEGATIVE')
final String? label;

/// Confidence score indicating the likelihood that the text belongs to the specified label
final double? score;

Map<String, dynamic> toJson() { return {
  'label': ?label,
  'score': ?score,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
TextClassification2 copyWith({String Function()? label, double Function()? score, }) { return TextClassification2(
  label: label != null ? label() : this.label,
  score: score != null ? score() : this.score,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TextClassification2 &&
          label == other.label &&
          score == other.score; } 
@override int get hashCode { return Object.hash(label, score); } 
@override String toString() { return 'TextClassification2(label: $label, score: $score)'; } 
 }
