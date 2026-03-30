// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:typed_data';import 'automatic_speech_recognition2.dart';import 'image_classification2.dart';import 'image_text_to_text2.dart';import 'image_to_text2.dart';import 'multimodal_embeddings2.dart';import 'object_detection2.dart';import 'summarization2.dart';import 'text_classification2.dart';import 'text_embeddings2.dart';import 'text_to_speech2.dart';import 'translation2.dart';/// A value that is one of: `List<TextClassification2>`, `Uint8List`, `TextToSpeech2`, `TextEmbeddings2`, `AutomaticSpeechRecognition2`, `List<ImageClassification2>`, `List<ObjectDetection2>`, `Translation2`, `Summarization2`, `ImageToText2`, `ImageTextToText2`, `MultimodalEmbeddings2`.
sealed class WorkersAiPostRunModelResponseResult {const WorkersAiPostRunModelResponseResult();

factory WorkersAiPostRunModelResponseResult.fromJson(Map<String, dynamic> json) {   if (TextEmbeddings2.canParse(json)) {
    return WorkersAiPostRunModelResponseResultTextEmbeddings2(TextEmbeddings2.fromJson(json));
  }
  if (AutomaticSpeechRecognition2.canParse(json)) {
    return WorkersAiPostRunModelResponseResultAutomaticSpeechRecognition2(AutomaticSpeechRecognition2.fromJson(json));
  }
  if (Translation2.canParse(json)) {
    return WorkersAiPostRunModelResponseResultTranslation2(Translation2.fromJson(json));
  }
  if (Summarization2.canParse(json)) {
    return WorkersAiPostRunModelResponseResultSummarization2(Summarization2.fromJson(json));
  }
  if (ImageToText2.canParse(json)) {
    return WorkersAiPostRunModelResponseResultImageToText2(ImageToText2.fromJson(json));
  }
  if (ImageTextToText2.canParse(json)) {
    return WorkersAiPostRunModelResponseResultImageTextToText2(ImageTextToText2.fromJson(json));
  }
  if (MultimodalEmbeddings2.canParse(json)) {
    return WorkersAiPostRunModelResponseResultMultimodalEmbeddings2(MultimodalEmbeddings2.fromJson(json));
  }
  return WorkersAiPostRunModelResponseResult$Unknown(json); }

/// The underlying raw value.
dynamic get value;
dynamic toJson() { return value; } 
 }
final class WorkersAiPostRunModelResponseResultListTextClassification2 extends WorkersAiPostRunModelResponseResult {const WorkersAiPostRunModelResponseResultListTextClassification2(this._value);

final List<TextClassification2> _value;

@override List<TextClassification2> get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersAiPostRunModelResponseResultListTextClassification2 && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'WorkersAiPostRunModelResponseResult.list<TextClassification2>($_value)'; } 
 }
final class WorkersAiPostRunModelResponseResultUint8List extends WorkersAiPostRunModelResponseResult {const WorkersAiPostRunModelResponseResultUint8List(this._value);

final Uint8List _value;

@override Uint8List get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersAiPostRunModelResponseResultUint8List && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'WorkersAiPostRunModelResponseResult.uint8List($_value)'; } 
 }
final class WorkersAiPostRunModelResponseResultTextToSpeech2 extends WorkersAiPostRunModelResponseResult {const WorkersAiPostRunModelResponseResultTextToSpeech2(this._value);

final TextToSpeech2 _value;

@override TextToSpeech2 get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersAiPostRunModelResponseResultTextToSpeech2 && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'WorkersAiPostRunModelResponseResult.textToSpeech2($_value)'; } 
 }
final class WorkersAiPostRunModelResponseResultTextEmbeddings2 extends WorkersAiPostRunModelResponseResult {const WorkersAiPostRunModelResponseResultTextEmbeddings2(this._value);

final TextEmbeddings2 _value;

@override TextEmbeddings2 get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersAiPostRunModelResponseResultTextEmbeddings2 && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'WorkersAiPostRunModelResponseResult.textEmbeddings2($_value)'; } 
 }
final class WorkersAiPostRunModelResponseResultAutomaticSpeechRecognition2 extends WorkersAiPostRunModelResponseResult {const WorkersAiPostRunModelResponseResultAutomaticSpeechRecognition2(this._value);

final AutomaticSpeechRecognition2 _value;

@override AutomaticSpeechRecognition2 get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersAiPostRunModelResponseResultAutomaticSpeechRecognition2 && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'WorkersAiPostRunModelResponseResult.automaticSpeechRecognition2($_value)'; } 
 }
final class WorkersAiPostRunModelResponseResultListImageClassification2 extends WorkersAiPostRunModelResponseResult {const WorkersAiPostRunModelResponseResultListImageClassification2(this._value);

final List<ImageClassification2> _value;

@override List<ImageClassification2> get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersAiPostRunModelResponseResultListImageClassification2 && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'WorkersAiPostRunModelResponseResult.list<ImageClassification2>($_value)'; } 
 }
final class WorkersAiPostRunModelResponseResultListObjectDetection2 extends WorkersAiPostRunModelResponseResult {const WorkersAiPostRunModelResponseResultListObjectDetection2(this._value);

final List<ObjectDetection2> _value;

@override List<ObjectDetection2> get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersAiPostRunModelResponseResultListObjectDetection2 && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'WorkersAiPostRunModelResponseResult.list<ObjectDetection2>($_value)'; } 
 }
final class WorkersAiPostRunModelResponseResultTranslation2 extends WorkersAiPostRunModelResponseResult {const WorkersAiPostRunModelResponseResultTranslation2(this._value);

final Translation2 _value;

@override Translation2 get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersAiPostRunModelResponseResultTranslation2 && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'WorkersAiPostRunModelResponseResult.translation2($_value)'; } 
 }
final class WorkersAiPostRunModelResponseResultSummarization2 extends WorkersAiPostRunModelResponseResult {const WorkersAiPostRunModelResponseResultSummarization2(this._value);

final Summarization2 _value;

@override Summarization2 get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersAiPostRunModelResponseResultSummarization2 && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'WorkersAiPostRunModelResponseResult.summarization2($_value)'; } 
 }
final class WorkersAiPostRunModelResponseResultImageToText2 extends WorkersAiPostRunModelResponseResult {const WorkersAiPostRunModelResponseResultImageToText2(this._value);

final ImageToText2 _value;

@override ImageToText2 get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersAiPostRunModelResponseResultImageToText2 && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'WorkersAiPostRunModelResponseResult.imageToText2($_value)'; } 
 }
final class WorkersAiPostRunModelResponseResultImageTextToText2 extends WorkersAiPostRunModelResponseResult {const WorkersAiPostRunModelResponseResultImageTextToText2(this._value);

final ImageTextToText2 _value;

@override ImageTextToText2 get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersAiPostRunModelResponseResultImageTextToText2 && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'WorkersAiPostRunModelResponseResult.imageTextToText2($_value)'; } 
 }
final class WorkersAiPostRunModelResponseResultMultimodalEmbeddings2 extends WorkersAiPostRunModelResponseResult {const WorkersAiPostRunModelResponseResultMultimodalEmbeddings2(this._value);

final MultimodalEmbeddings2 _value;

@override MultimodalEmbeddings2 get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersAiPostRunModelResponseResultMultimodalEmbeddings2 && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'WorkersAiPostRunModelResponseResult.multimodalEmbeddings2($_value)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
final class WorkersAiPostRunModelResponseResult$Unknown extends WorkersAiPostRunModelResponseResult {const WorkersAiPostRunModelResponseResult$Unknown(this._value);

final dynamic _value;

@override dynamic get value { return _value ?? ''; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersAiPostRunModelResponseResult$Unknown && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'WorkersAiPostRunModelResponseResult.unknown($_value)'; } 
 }
