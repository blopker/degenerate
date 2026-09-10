// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'terminal_reader_reader_resource_custom_text.dart';import 'terminal_reader_reader_resource_email.dart';import 'terminal_reader_reader_resource_numeric.dart';import 'terminal_reader_reader_resource_phone.dart';import 'terminal_reader_reader_resource_selection.dart';import 'terminal_reader_reader_resource_signature.dart';import 'terminal_reader_reader_resource_text.dart';import 'terminal_reader_reader_resource_toggle.dart';/// Type of input being collected.
@immutable final class TerminalReaderReaderResourceInputType {const TerminalReaderReaderResourceInputType._(this.value);

factory TerminalReaderReaderResourceInputType.fromJson(String json) { return switch (json) {
  'email' => email,
  'numeric' => numeric,
  'phone' => phone,
  'selection' => selection,
  'signature' => signature,
  'text' => text,
  _ => TerminalReaderReaderResourceInputType._(json),
}; }

static const TerminalReaderReaderResourceInputType email = TerminalReaderReaderResourceInputType._('email');

static const TerminalReaderReaderResourceInputType numeric = TerminalReaderReaderResourceInputType._('numeric');

static const TerminalReaderReaderResourceInputType phone = TerminalReaderReaderResourceInputType._('phone');

static const TerminalReaderReaderResourceInputType selection = TerminalReaderReaderResourceInputType._('selection');

static const TerminalReaderReaderResourceInputType signature = TerminalReaderReaderResourceInputType._('signature');

static const TerminalReaderReaderResourceInputType text = TerminalReaderReaderResourceInputType._('text');

static const List<TerminalReaderReaderResourceInputType> values = [email, numeric, phone, selection, signature, text];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TerminalReaderReaderResourceInputType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TerminalReaderReaderResourceInputType($value)'; } 
 }
/// Represents an input to be collected using the reader
@immutable final class TerminalReaderReaderResourceInput {const TerminalReaderReaderResourceInput({required this.type, this.customText = const Omittable.absent(), this.email, this.numeric, this.phone, this.$required = const Omittable.absent(), this.selection, this.signature, this.skipped, this.text, this.toggles = const Omittable.absent(), });

factory TerminalReaderReaderResourceInput.fromJson(Map<String, dynamic> json) { return TerminalReaderReaderResourceInput(
  customText: json.containsKey('custom_text') ? Omittable(json['custom_text'] != null ? TerminalReaderReaderResourceCustomText.fromJson(json['custom_text'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  email: json['email'] != null ? TerminalReaderReaderResourceEmail.fromJson(json['email'] as Map<String, dynamic>) : null,
  numeric: json['numeric'] != null ? TerminalReaderReaderResourceNumeric.fromJson(json['numeric'] as Map<String, dynamic>) : null,
  phone: json['phone'] != null ? TerminalReaderReaderResourcePhone.fromJson(json['phone'] as Map<String, dynamic>) : null,
  $required: json.containsKey('required') ? Omittable(json['required'] as bool?) : const Omittable.absent(),
  selection: json['selection'] != null ? TerminalReaderReaderResourceSelection.fromJson(json['selection'] as Map<String, dynamic>) : null,
  signature: json['signature'] != null ? TerminalReaderReaderResourceSignature.fromJson(json['signature'] as Map<String, dynamic>) : null,
  skipped: json['skipped'] as bool?,
  text: json['text'] != null ? TerminalReaderReaderResourceText.fromJson(json['text'] as Map<String, dynamic>) : null,
  toggles: json.containsKey('toggles') ? Omittable((json['toggles'] as List<dynamic>?)?.map((e) => TerminalReaderReaderResourceToggle.fromJson(e as Map<String, dynamic>)).toList()) : const Omittable.absent(),
  type: TerminalReaderReaderResourceInputType.fromJson(json['type'] as String),
); }

/// Default text of input being collected.
final Omittable<TerminalReaderReaderResourceCustomText?> customText;

final TerminalReaderReaderResourceEmail? email;

final TerminalReaderReaderResourceNumeric? numeric;

final TerminalReaderReaderResourcePhone? phone;

/// Indicate that this input is required, disabling the skip button.
final Omittable<bool?> $required;

final TerminalReaderReaderResourceSelection? selection;

final TerminalReaderReaderResourceSignature? signature;

/// Indicate that this input was skipped by the user.
final bool? skipped;

final TerminalReaderReaderResourceText? text;

/// List of toggles being collected. Values are present if collection is complete.
final Omittable<List<TerminalReaderReaderResourceToggle>?> toggles;

/// Type of input being collected.
final TerminalReaderReaderResourceInputType type;

Map<String, dynamic> toJson() { return {
  if (customText.isPresent) 'custom_text': customText.value?.toJson(),
  if (email != null) 'email': email?.toJson(),
  if (numeric != null) 'numeric': numeric?.toJson(),
  if (phone != null) 'phone': phone?.toJson(),
  if ($required.isPresent) 'required': $required.value,
  if (selection != null) 'selection': selection?.toJson(),
  if (signature != null) 'signature': signature?.toJson(),
  'skipped': ?skipped,
  if (text != null) 'text': text?.toJson(),
  if (toggles.isPresent) 'toggles': toggles.value?.map((e) => e.toJson()).toList(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
TerminalReaderReaderResourceInput copyWith({Omittable<TerminalReaderReaderResourceCustomText?>? customText, TerminalReaderReaderResourceEmail? Function()? email, TerminalReaderReaderResourceNumeric? Function()? numeric, TerminalReaderReaderResourcePhone? Function()? phone, Omittable<bool?>? $required, TerminalReaderReaderResourceSelection? Function()? selection, TerminalReaderReaderResourceSignature? Function()? signature, bool? Function()? skipped, TerminalReaderReaderResourceText? Function()? text, Omittable<List<TerminalReaderReaderResourceToggle>?>? toggles, TerminalReaderReaderResourceInputType? type, }) { return TerminalReaderReaderResourceInput(
  customText: customText ?? this.customText,
  email: email != null ? email() : this.email,
  numeric: numeric != null ? numeric() : this.numeric,
  phone: phone != null ? phone() : this.phone,
  $required: $required ?? this.$required,
  selection: selection != null ? selection() : this.selection,
  signature: signature != null ? signature() : this.signature,
  skipped: skipped != null ? skipped() : this.skipped,
  text: text != null ? text() : this.text,
  toggles: toggles ?? this.toggles,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TerminalReaderReaderResourceInput &&
          customText == other.customText &&
          email == other.email &&
          numeric == other.numeric &&
          phone == other.phone &&
          $required == other.$required &&
          selection == other.selection &&
          signature == other.signature &&
          skipped == other.skipped &&
          text == other.text &&
          toggles.isPresent == other.toggles.isPresent &&
          listEquals(toggles.value, other.toggles.value) &&
          type == other.type; } 
@override int get hashCode { return Object.hash(customText, email, numeric, phone, $required, selection, signature, skipped, text, Object.hashAll(toggles.value ?? const []), type); } 
@override String toString() { return 'TerminalReaderReaderResourceInput(customText: $customText, email: $email, numeric: $numeric, phone: $phone, \$required: ${$required}, selection: $selection, signature: $signature, skipped: $skipped, text: $text, toggles: $toggles, type: $type)'; } 
 }
