// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Represents custom text to be displayed when collecting the input using a reader
@immutable final class TerminalReaderReaderResourceCustomText {const TerminalReaderReaderResourceCustomText({this.description = const Omittable.absent(), this.skipButton = const Omittable.absent(), this.submitButton = const Omittable.absent(), this.title = const Omittable.absent(), });

factory TerminalReaderReaderResourceCustomText.fromJson(Map<String, dynamic> json) { return TerminalReaderReaderResourceCustomText(
  description: json.containsKey('description') ? Omittable(json['description'] as String?) : const Omittable.absent(),
  skipButton: json.containsKey('skip_button') ? Omittable(json['skip_button'] as String?) : const Omittable.absent(),
  submitButton: json.containsKey('submit_button') ? Omittable(json['submit_button'] as String?) : const Omittable.absent(),
  title: json.containsKey('title') ? Omittable(json['title'] as String?) : const Omittable.absent(),
); }

/// Customize the default description for this input
final Omittable<String?> description;

/// Customize the default label for this input's skip button
final Omittable<String?> skipButton;

/// Customize the default label for this input's submit button
final Omittable<String?> submitButton;

/// Customize the default title for this input
final Omittable<String?> title;

Map<String, dynamic> toJson() { return {
  if (description.isPresent) 'description': description.value,
  if (skipButton.isPresent) 'skip_button': skipButton.value,
  if (submitButton.isPresent) 'submit_button': submitButton.value,
  if (title.isPresent) 'title': title.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'description', 'skip_button', 'submit_button', 'title'}.contains(key)); } 
TerminalReaderReaderResourceCustomText copyWith({Omittable<String?>? description, Omittable<String?>? skipButton, Omittable<String?>? submitButton, Omittable<String?>? title, }) { return TerminalReaderReaderResourceCustomText(
  description: description ?? this.description,
  skipButton: skipButton ?? this.skipButton,
  submitButton: submitButton ?? this.submitButton,
  title: title ?? this.title,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TerminalReaderReaderResourceCustomText &&
          description == other.description &&
          skipButton == other.skipButton &&
          submitButton == other.submitButton &&
          title == other.title; } 
@override int get hashCode { return Object.hash(description, skipButton, submitButton, title); } 
@override String toString() { return 'TerminalReaderReaderResourceCustomText(description: $description, skipButton: $skipButton, submitButton: $submitButton, title: $title)'; } 
 }
