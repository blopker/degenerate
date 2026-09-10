// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'terminal_reader_reader_resource_input.dart';/// Represents a reader action to collect customer inputs
@immutable final class TerminalReaderReaderResourceCollectInputsAction {const TerminalReaderReaderResourceCollectInputsAction({required this.inputs, this.metadata = const Omittable.absent(), });

factory TerminalReaderReaderResourceCollectInputsAction.fromJson(Map<String, dynamic> json) { return TerminalReaderReaderResourceCollectInputsAction(
  inputs: (json['inputs'] as List<dynamic>).map((e) => TerminalReaderReaderResourceInput.fromJson(e as Map<String, dynamic>)).toList(),
  metadata: json.containsKey('metadata') ? Omittable((json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String))) : const Omittable.absent(),
); }

/// List of inputs to be collected.
final List<TerminalReaderReaderResourceInput> inputs;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
final Omittable<Map<String,String>?> metadata;

Map<String, dynamic> toJson() { return {
  'inputs': inputs.map((e) => e.toJson()).toList(),
  if (metadata.isPresent) 'metadata': metadata.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('inputs'); } 
TerminalReaderReaderResourceCollectInputsAction copyWith({List<TerminalReaderReaderResourceInput>? inputs, Omittable<Map<String,String>?>? metadata, }) { return TerminalReaderReaderResourceCollectInputsAction(
  inputs: inputs ?? this.inputs,
  metadata: metadata ?? this.metadata,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TerminalReaderReaderResourceCollectInputsAction &&
          listEquals(inputs, other.inputs) &&
          metadata == other.metadata; } 
@override int get hashCode { return Object.hash(Object.hashAll(inputs), metadata); } 
@override String toString() { return 'TerminalReaderReaderResourceCollectInputsAction(inputs: $inputs, metadata: $metadata)'; } 
 }
