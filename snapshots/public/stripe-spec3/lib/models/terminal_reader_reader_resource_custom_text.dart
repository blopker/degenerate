// GENERATED CODE - DO NOT MODIFY BY HAND

/// Represents custom text to be displayed when collecting the input using a reader
final class TerminalReaderReaderResourceCustomText {const TerminalReaderReaderResourceCustomText({this.description, this.skipButton, this.submitButton, this.title, });

factory TerminalReaderReaderResourceCustomText.fromJson(Map<String, dynamic> json) { return TerminalReaderReaderResourceCustomText(
  description: json['description'] as String?,
  skipButton: json['skip_button'] as String?,
  submitButton: json['submit_button'] as String?,
  title: json['title'] as String?,
); }

/// Customize the default description for this input
final String? description;

/// Customize the default label for this input's skip button
final String? skipButton;

/// Customize the default label for this input's submit button
final String? submitButton;

/// Customize the default title for this input
final String? title;

Map<String, dynamic> toJson() { return {
  'description': ?description,
  'skip_button': ?skipButton,
  'submit_button': ?submitButton,
  'title': ?title,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
TerminalReaderReaderResourceCustomText copyWith({String? Function()? description, String? Function()? skipButton, String? Function()? submitButton, String? Function()? title, }) { return TerminalReaderReaderResourceCustomText(
  description: description != null ? description() : this.description,
  skipButton: skipButton != null ? skipButton() : this.skipButton,
  submitButton: submitButton != null ? submitButton() : this.submitButton,
  title: title != null ? title() : this.title,
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
