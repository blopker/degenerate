// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'chat_completion_stream_options.dart';import 'create_completion_request_model.dart';import 'create_completion_request_prompt.dart';import 'stop_configuration.dart';@immutable final class CreateCompletionRequest {const CreateCompletionRequest({required this.model, required this.prompt, this.bestOf = const Omittable.absent(), this.echo = const Omittable.absent(), this.frequencyPenalty = const Omittable.absent(), this.logitBias = const Omittable.absent(), this.logprobs = const Omittable.absent(), this.maxTokens = const Omittable.absent(), this.n = const Omittable.absent(), this.presencePenalty = const Omittable.absent(), this.seed = const Omittable.absent(), this.stop = const Omittable.absent(), this.stream = const Omittable.absent(), this.streamOptions = const Omittable.absent(), this.suffix = const Omittable.absent(), this.temperature = const Omittable.absent(), this.topP = const Omittable.absent(), this.user, });

factory CreateCompletionRequest.fromJson(Map<String, dynamic> json) {return CreateCompletionRequest(
  model: CreateCompletionRequestModel.fromJson(json['model']),
  prompt: json['prompt'] != null ? OneOf4.parse(json['prompt'], fromA: (v) => v as String, fromB: (v) => (v as List<dynamic>).map((e) => e as String).toList(), fromC: (v) => (v as List<dynamic>).map((e) => (e as num).toInt()).toList(), fromD: (v) => (v as List<dynamic>).map((e) => (e as List<dynamic>).map((e) => (e as num).toInt()).toList()).toList(),) : null,
  bestOf: json.containsKey('best_of') ? Omittable(json['best_of'] != null ? (json['best_of'] as num).toInt() : null) : const Omittable.absent(),
  echo: json.containsKey('echo') ? Omittable(json['echo'] as bool?) : const Omittable.absent(),
  frequencyPenalty: json.containsKey('frequency_penalty') ? Omittable(json['frequency_penalty'] != null ? (json['frequency_penalty'] as num).toDouble() : null) : const Omittable.absent(),
  logitBias: json.containsKey('logit_bias') ? Omittable((json['logit_bias'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, (v as num).toInt()))) : const Omittable.absent(),
  logprobs: json.containsKey('logprobs') ? Omittable(json['logprobs'] != null ? (json['logprobs'] as num).toInt() : null) : const Omittable.absent(),
  maxTokens: json.containsKey('max_tokens') ? Omittable(json['max_tokens'] != null ? (json['max_tokens'] as num).toInt() : null) : const Omittable.absent(),
  n: json.containsKey('n') ? Omittable(json['n'] != null ? (json['n'] as num).toInt() : null) : const Omittable.absent(),
  presencePenalty: json.containsKey('presence_penalty') ? Omittable(json['presence_penalty'] != null ? (json['presence_penalty'] as num).toDouble() : null) : const Omittable.absent(),
  seed: json.containsKey('seed') ? Omittable(json['seed'] != null ? (json['seed'] as num).toInt() : null) : const Omittable.absent(),
  stop: json.containsKey('stop') ? Omittable(json['stop'] != null ? OneOf2.parse(json['stop'], fromA: (v) => v as String, fromB: (v) => (v as List<dynamic>).map((e) => e as String).toList(),) : null) : const Omittable.absent(),
  stream: json.containsKey('stream') ? Omittable(json['stream'] as bool?) : const Omittable.absent(),
  streamOptions: json.containsKey('stream_options') ? Omittable(json['stream_options'] != null ? ChatCompletionStreamOptions.fromJson(json['stream_options'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  suffix: json.containsKey('suffix') ? Omittable(json['suffix'] as String?) : const Omittable.absent(),
  temperature: json.containsKey('temperature') ? Omittable(json['temperature'] != null ? (json['temperature'] as num).toDouble() : null) : const Omittable.absent(),
  topP: json.containsKey('top_p') ? Omittable(json['top_p'] != null ? (json['top_p'] as num).toDouble() : null) : const Omittable.absent(),
  user: json['user'] as String?,
);}

/// ID of the model to use. You can use the [List models](/docs/api-reference/models/list) API to see all of your available models, or see our [Model overview](/docs/models) for descriptions of them.
/// 
final CreateCompletionRequestModel model;

/// The prompt(s) to generate completions for, encoded as a string, array of strings, array of tokens, or array of token arrays.
/// 
/// Note that `<|endoftext|>` is the document separator that the model sees during training, so if a prompt is not specified the model will generate as if from the beginning of a new document.
/// 
final CreateCompletionRequestPrompt? prompt;

/// Generates `best_of` completions server-side and returns the "best" (the one with the highest log probability per token). Results cannot be streamed.
/// 
/// When used with `n`, `best_of` controls the number of candidate completions and `n` specifies how many to return – `best_of` must be greater than `n`.
/// 
/// **Note:** Because this parameter generates many completions, it can quickly consume your token quota. Use carefully and ensure that you have reasonable settings for `max_tokens` and `stop`.
/// 
final Omittable<int?> bestOf;

/// Echo back the prompt in addition to the completion
/// 
final Omittable<bool?> echo;

/// Number between -2.0 and 2.0. Positive values penalize new tokens based on their existing frequency in the text so far, decreasing the model's likelihood to repeat the same line verbatim.
/// 
/// [See more information about frequency and presence penalties.](/docs/guides/text-generation)
/// 
final Omittable<double?> frequencyPenalty;

/// Modify the likelihood of specified tokens appearing in the completion.
/// 
/// Accepts a JSON object that maps tokens (specified by their token ID in the GPT tokenizer) to an associated bias value from -100 to 100. You can use this [tokenizer tool](/tokenizer?view=bpe) to convert text to token IDs. Mathematically, the bias is added to the logits generated by the model prior to sampling. The exact effect will vary per model, but values between -1 and 1 should decrease or increase likelihood of selection; values like -100 or 100 should result in a ban or exclusive selection of the relevant token.
/// 
/// As an example, you can pass `{"50256": -100}` to prevent the `<|endoftext|>` token from being generated.
/// 
final Omittable<Map<String,int>?> logitBias;

/// Include the log probabilities on the `logprobs` most likely output tokens, as well the chosen tokens. For example, if `logprobs` is 5, the API will return a list of the 5 most likely tokens. The API will always return the `logprob` of the sampled token, so there may be up to `logprobs+1` elements in the response.
/// 
/// The maximum value for `logprobs` is 5.
/// 
final Omittable<int?> logprobs;

/// The maximum number of [tokens](/tokenizer) that can be generated in the completion.
/// 
/// The token count of your prompt plus `max_tokens` cannot exceed the model's context length. [Example Python code](https://cookbook.openai.com/examples/how_to_count_tokens_with_tiktoken) for counting tokens.
/// 
final Omittable<int?> maxTokens;

/// How many completions to generate for each prompt.
/// 
/// **Note:** Because this parameter generates many completions, it can quickly consume your token quota. Use carefully and ensure that you have reasonable settings for `max_tokens` and `stop`.
/// 
final Omittable<int?> n;

/// Number between -2.0 and 2.0. Positive values penalize new tokens based on whether they appear in the text so far, increasing the model's likelihood to talk about new topics.
/// 
/// [See more information about frequency and presence penalties.](/docs/guides/text-generation)
/// 
final Omittable<double?> presencePenalty;

/// If specified, our system will make a best effort to sample deterministically, such that repeated requests with the same `seed` and parameters should return the same result.
/// 
/// Determinism is not guaranteed, and you should refer to the `system_fingerprint` response parameter to monitor changes in the backend.
/// 
final Omittable<int?> seed;

final Omittable<StopConfiguration?> stop;

/// Whether to stream back partial progress. If set, tokens will be sent as data-only [server-sent events](https://developer.mozilla.org/en-US/docs/Web/API/Server-sent_events/Using_server-sent_events#Event_stream_format) as they become available, with the stream terminated by a `data: [DONE]` message. [Example Python code](https://cookbook.openai.com/examples/how_to_stream_completions).
/// 
final Omittable<bool?> stream;

final Omittable<ChatCompletionStreamOptions?> streamOptions;

/// The suffix that comes after a completion of inserted text.
/// 
/// This parameter is only supported for `gpt-3.5-turbo-instruct`.
/// 
final Omittable<String?> suffix;

/// What sampling temperature to use, between 0 and 2. Higher values like 0.8 will make the output more random, while lower values like 0.2 will make it more focused and deterministic.
/// 
/// We generally recommend altering this or `top_p` but not both.
/// 
final Omittable<double?> temperature;

/// An alternative to sampling with temperature, called nucleus sampling, where the model considers the results of the tokens with top_p probability mass. So 0.1 means only the tokens comprising the top 10% probability mass are considered.
/// 
/// We generally recommend altering this or `temperature` but not both.
/// 
final Omittable<double?> topP;

/// A unique identifier representing your end-user, which can help OpenAI to monitor and detect abuse. [Learn more](/docs/guides/safety-best-practices#end-user-ids).
/// 
final String? user;

/// The value with the schema default applied when absent.
int? get bestOfOrDefault {return bestOf.valueOr(1);}
/// The value with the schema default applied when absent.
bool? get echoOrDefault {return echo.valueOr(false);}
/// The value with the schema default applied when absent.
double? get frequencyPenaltyOrDefault {return frequencyPenalty.valueOr(0.0);}
/// The value with the schema default applied when absent.
int? get maxTokensOrDefault {return maxTokens.valueOr(16);}
/// The value with the schema default applied when absent.
int? get nOrDefault {return n.valueOr(1);}
/// The value with the schema default applied when absent.
double? get presencePenaltyOrDefault {return presencePenalty.valueOr(0.0);}
/// The value with the schema default applied when absent.
bool? get streamOrDefault {return stream.valueOr(false);}
/// The value with the schema default applied when absent.
double? get temperatureOrDefault {return temperature.valueOr(1.0);}
/// The value with the schema default applied when absent.
double? get topPOrDefault {return topP.valueOr(1.0);}
Map<String, dynamic> toJson() {return {
  'model': model.toJson(),
  'prompt': prompt?.toJson(),
  if (bestOf.isPresent) 'best_of': bestOf.value,
  if (echo.isPresent) 'echo': echo.value,
  if (frequencyPenalty.isPresent) 'frequency_penalty': frequencyPenalty.value,
  if (logitBias.isPresent) 'logit_bias': logitBias.value,
  if (logprobs.isPresent) 'logprobs': logprobs.value,
  if (maxTokens.isPresent) 'max_tokens': maxTokens.value,
  if (n.isPresent) 'n': n.value,
  if (presencePenalty.isPresent) 'presence_penalty': presencePenalty.value,
  if (seed.isPresent) 'seed': seed.value,
  if (stop.isPresent) 'stop': stop.value?.toJson(),
  if (stream.isPresent) 'stream': stream.value,
  if (streamOptions.isPresent) 'stream_options': streamOptions.value?.toJson(),
  if (suffix.isPresent) 'suffix': suffix.value,
  if (temperature.isPresent) 'temperature': temperature.value,
  if (topP.isPresent) 'top_p': topP.value,
  'user': ?user,
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('model') &&
      json.containsKey('prompt');}
CreateCompletionRequest copyWith({CreateCompletionRequestModel? model, CreateCompletionRequestPrompt? Function()? prompt, Omittable<int?>? bestOf, Omittable<bool?>? echo, Omittable<double?>? frequencyPenalty, Omittable<Map<String,int>?>? logitBias, Omittable<int?>? logprobs, Omittable<int?>? maxTokens, Omittable<int?>? n, Omittable<double?>? presencePenalty, Omittable<int?>? seed, Omittable<StopConfiguration?>? stop, Omittable<bool?>? stream, Omittable<ChatCompletionStreamOptions?>? streamOptions, Omittable<String?>? suffix, Omittable<double?>? temperature, Omittable<double?>? topP, String? Function()? user, }) {return CreateCompletionRequest(
  model: model ?? this.model,
  prompt: prompt != null ? prompt() : this.prompt,
  bestOf: bestOf ?? this.bestOf,
  echo: echo ?? this.echo,
  frequencyPenalty: frequencyPenalty ?? this.frequencyPenalty,
  logitBias: logitBias ?? this.logitBias,
  logprobs: logprobs ?? this.logprobs,
  maxTokens: maxTokens ?? this.maxTokens,
  n: n ?? this.n,
  presencePenalty: presencePenalty ?? this.presencePenalty,
  seed: seed ?? this.seed,
  stop: stop ?? this.stop,
  stream: stream ?? this.stream,
  streamOptions: streamOptions ?? this.streamOptions,
  suffix: suffix ?? this.suffix,
  temperature: temperature ?? this.temperature,
  topP: topP ?? this.topP,
  user: user != null ? user() : this.user,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is CreateCompletionRequest &&
          model == other.model &&
          prompt == other.prompt &&
          bestOf == other.bestOf &&
          echo == other.echo &&
          frequencyPenalty == other.frequencyPenalty &&
          logitBias == other.logitBias &&
          logprobs == other.logprobs &&
          maxTokens == other.maxTokens &&
          n == other.n &&
          presencePenalty == other.presencePenalty &&
          seed == other.seed &&
          stop == other.stop &&
          stream == other.stream &&
          streamOptions == other.streamOptions &&
          suffix == other.suffix &&
          temperature == other.temperature &&
          topP == other.topP &&
          user == other.user;}
@override int get hashCode {return Object.hash(model, prompt, bestOf, echo, frequencyPenalty, logitBias, logprobs, maxTokens, n, presencePenalty, seed, stop, stream, streamOptions, suffix, temperature, topP, user);}
@override String toString() {return 'CreateCompletionRequest(model: $model, prompt: $prompt, bestOf: $bestOf, echo: $echo, frequencyPenalty: $frequencyPenalty, logitBias: $logitBias, logprobs: $logprobs, maxTokens: $maxTokens, n: $n, presencePenalty: $presencePenalty, seed: $seed, stop: $stop, stream: $stream, streamOptions: $streamOptions, suffix: $suffix, temperature: $temperature, topP: $topP, user: $user)';}
}
