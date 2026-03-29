// GENERATED CODE - DO NOT MODIFY BY HAND

import 'messages51_prediction_content.dart';final class Messages51Prediction {const Messages51Prediction({this.messages51PredictionContent});

factory Messages51Prediction.fromJson(Map<String, dynamic> json) { return Messages51Prediction(
  messages51PredictionContent: Messages51PredictionContent.canParse(json) ? Messages51PredictionContent.fromJson(json) : null,
); }

final Messages51PredictionContent? messages51PredictionContent;

/// At least one variant must be present.
bool get isValid { return messages51PredictionContent != null; } 
Map<String, dynamic> toJson() { return {
  ...?messages51PredictionContent?.toJson(),
}; } 
 }
