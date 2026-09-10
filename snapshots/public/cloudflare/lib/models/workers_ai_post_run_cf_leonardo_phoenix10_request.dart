// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WorkersAiPostRunCfLeonardoPhoenix10Request {const WorkersAiPostRunCfLeonardoPhoenix10Request({required this.prompt, this.guidance, this.height, this.negativePrompt, this.numSteps, this.seed, this.width, });

factory WorkersAiPostRunCfLeonardoPhoenix10Request.fromJson(Map<String, dynamic> json) { return WorkersAiPostRunCfLeonardoPhoenix10Request(
  guidance: json['guidance'] != null ? (json['guidance'] as num).toDouble() : null,
  height: json['height'] != null ? (json['height'] as num).toInt() : null,
  negativePrompt: json['negative_prompt'] as String?,
  numSteps: json['num_steps'] != null ? (json['num_steps'] as num).toInt() : null,
  prompt: json['prompt'] as String,
  seed: json['seed'] != null ? (json['seed'] as num).toInt() : null,
  width: json['width'] != null ? (json['width'] as num).toInt() : null,
); }

/// Controls how closely the generated image should adhere to the prompt; higher values make the image more aligned with the prompt
final double? guidance;

/// The height of the generated image in pixels
final int? height;

/// Specify what to exclude from the generated images
final String? negativePrompt;

/// The number of diffusion steps; higher values can improve quality but take longer
final int? numSteps;

/// A text description of the image you want to generate.
final String prompt;

/// Random seed for reproducibility of the image generation
final int? seed;

/// The width of the generated image in pixels
final int? width;

/// The value with the schema default applied when absent.
double get guidanceOrDefault { return guidance ?? 2.0; } 
/// The value with the schema default applied when absent.
int get heightOrDefault { return height ?? 1024; } 
/// The value with the schema default applied when absent.
int get numStepsOrDefault { return numSteps ?? 25; } 
/// The value with the schema default applied when absent.
int get widthOrDefault { return width ?? 1024; } 
Map<String, dynamic> toJson() { return {
  'guidance': ?guidance,
  'height': ?height,
  'negative_prompt': ?negativePrompt,
  'num_steps': ?numSteps,
  'prompt': prompt,
  'seed': ?seed,
  'width': ?width,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('prompt') && json['prompt'] is String; } 
WorkersAiPostRunCfLeonardoPhoenix10Request copyWith({double? Function()? guidance, int? Function()? height, String? Function()? negativePrompt, int? Function()? numSteps, String? prompt, int? Function()? seed, int? Function()? width, }) { return WorkersAiPostRunCfLeonardoPhoenix10Request(
  guidance: guidance != null ? guidance() : this.guidance,
  height: height != null ? height() : this.height,
  negativePrompt: negativePrompt != null ? negativePrompt() : this.negativePrompt,
  numSteps: numSteps != null ? numSteps() : this.numSteps,
  prompt: prompt ?? this.prompt,
  seed: seed != null ? seed() : this.seed,
  width: width != null ? width() : this.width,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersAiPostRunCfLeonardoPhoenix10Request &&
          guidance == other.guidance &&
          height == other.height &&
          negativePrompt == other.negativePrompt &&
          numSteps == other.numSteps &&
          prompt == other.prompt &&
          seed == other.seed &&
          width == other.width; } 
@override int get hashCode { return Object.hash(guidance, height, negativePrompt, numSteps, prompt, seed, width); } 
@override String toString() { return 'WorkersAiPostRunCfLeonardoPhoenix10Request(guidance: $guidance, height: $height, negativePrompt: $negativePrompt, numSteps: $numSteps, prompt: $prompt, seed: $seed, width: $width)'; } 
 }
