// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_terminal_readers_reader_collect_inputs_request_inputs_custom_text.dart';import 'post_terminal_readers_reader_collect_inputs_request_inputs_selection.dart';import 'post_terminal_readers_reader_collect_inputs_request_inputs_toggles.dart';@immutable final class PostTerminalReadersReaderCollectInputsRequestInputsType {const PostTerminalReadersReaderCollectInputsRequestInputsType._(this.value);

factory PostTerminalReadersReaderCollectInputsRequestInputsType.fromJson(String json) { return switch (json) {
  'email' => email,
  'numeric' => numeric,
  'phone' => phone,
  'selection' => selection,
  'signature' => signature,
  'text' => text,
  _ => PostTerminalReadersReaderCollectInputsRequestInputsType._(json),
}; }

static const PostTerminalReadersReaderCollectInputsRequestInputsType email = PostTerminalReadersReaderCollectInputsRequestInputsType._('email');

static const PostTerminalReadersReaderCollectInputsRequestInputsType numeric = PostTerminalReadersReaderCollectInputsRequestInputsType._('numeric');

static const PostTerminalReadersReaderCollectInputsRequestInputsType phone = PostTerminalReadersReaderCollectInputsRequestInputsType._('phone');

static const PostTerminalReadersReaderCollectInputsRequestInputsType selection = PostTerminalReadersReaderCollectInputsRequestInputsType._('selection');

static const PostTerminalReadersReaderCollectInputsRequestInputsType signature = PostTerminalReadersReaderCollectInputsRequestInputsType._('signature');

static const PostTerminalReadersReaderCollectInputsRequestInputsType text = PostTerminalReadersReaderCollectInputsRequestInputsType._('text');

static const List<PostTerminalReadersReaderCollectInputsRequestInputsType> values = [email, numeric, phone, selection, signature, text];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTerminalReadersReaderCollectInputsRequestInputsType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTerminalReadersReaderCollectInputsRequestInputsType($value)'; } 
 }
@immutable final class PostTerminalReadersReaderCollectInputsRequestInputs {const PostTerminalReadersReaderCollectInputsRequestInputs({required this.customText, required this.type, this.$required, this.selection, this.toggles, });

factory PostTerminalReadersReaderCollectInputsRequestInputs.fromJson(Map<String, dynamic> json) { return PostTerminalReadersReaderCollectInputsRequestInputs(
  customText: PostTerminalReadersReaderCollectInputsRequestInputsCustomText.fromJson(json['custom_text'] as Map<String, dynamic>),
  $required: json['required'] as bool?,
  selection: json['selection'] != null ? PostTerminalReadersReaderCollectInputsRequestInputsSelection.fromJson(json['selection'] as Map<String, dynamic>) : null,
  toggles: (json['toggles'] as List<dynamic>?)?.map((e) => PostTerminalReadersReaderCollectInputsRequestInputsToggles.fromJson(e as Map<String, dynamic>)).toList(),
  type: PostTerminalReadersReaderCollectInputsRequestInputsType.fromJson(json['type'] as String),
); }

final PostTerminalReadersReaderCollectInputsRequestInputsCustomText customText;

final bool? $required;

final PostTerminalReadersReaderCollectInputsRequestInputsSelection? selection;

final List<PostTerminalReadersReaderCollectInputsRequestInputsToggles>? toggles;

final PostTerminalReadersReaderCollectInputsRequestInputsType type;

Map<String, dynamic> toJson() { return {
  'custom_text': customText.toJson(),
  'required': ?$required,
  if (selection != null) 'selection': selection?.toJson(),
  if (toggles != null) 'toggles': toggles?.map((e) => e.toJson()).toList(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('custom_text') &&
      json.containsKey('type'); } 
PostTerminalReadersReaderCollectInputsRequestInputs copyWith({PostTerminalReadersReaderCollectInputsRequestInputsCustomText? customText, bool Function()? $required, PostTerminalReadersReaderCollectInputsRequestInputsSelection Function()? selection, List<PostTerminalReadersReaderCollectInputsRequestInputsToggles> Function()? toggles, PostTerminalReadersReaderCollectInputsRequestInputsType? type, }) { return PostTerminalReadersReaderCollectInputsRequestInputs(
  customText: customText ?? this.customText,
  $required: $required != null ? $required() : this.$required,
  selection: selection != null ? selection() : this.selection,
  toggles: toggles != null ? toggles() : this.toggles,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTerminalReadersReaderCollectInputsRequestInputs &&
          customText == other.customText &&
          $required == other.$required &&
          selection == other.selection &&
          listEquals(toggles, other.toggles) &&
          type == other.type; } 
@override int get hashCode { return Object.hash(customText, $required, selection, Object.hashAll(toggles ?? const []), type); } 
@override String toString() { return 'PostTerminalReadersReaderCollectInputsRequestInputs(customText: $customText, \$required: ${$required}, selection: $selection, toggles: $toggles, type: $type)'; } 
 }
