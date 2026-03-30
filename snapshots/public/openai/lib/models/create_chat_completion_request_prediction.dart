// GENERATED CODE - DO NOT MODIFY BY HAND

import 'prediction_content.dart';/// A value that is one of: `PredictionContent`.
sealed class CreateChatCompletionRequestPrediction {const CreateChatCompletionRequestPrediction();

factory CreateChatCompletionRequestPrediction.fromJson(Map<String, dynamic> json) {   if (PredictionContent.canParse(json)) {
    return CreateChatCompletionRequestPredictionPredictionContent(PredictionContent.fromJson(json));
  }
  return CreateChatCompletionRequestPrediction$Unknown(json); }

/// The underlying raw value.
dynamic get value;
dynamic toJson() { return value; } 
 }
final class CreateChatCompletionRequestPredictionPredictionContent extends CreateChatCompletionRequestPrediction {const CreateChatCompletionRequestPredictionPredictionContent(this._value);

final PredictionContent _value;

@override PredictionContent get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateChatCompletionRequestPredictionPredictionContent && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'CreateChatCompletionRequestPrediction.predictionContent($_value)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
final class CreateChatCompletionRequestPrediction$Unknown extends CreateChatCompletionRequestPrediction {const CreateChatCompletionRequestPrediction$Unknown(this._value);

final dynamic _value;

@override dynamic get value { return _value ?? ''; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateChatCompletionRequestPrediction$Unknown && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'CreateChatCompletionRequestPrediction.unknown($_value)'; } 
 }
