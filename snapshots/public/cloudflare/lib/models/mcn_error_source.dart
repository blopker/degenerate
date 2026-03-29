// GENERATED CODE - DO NOT MODIFY BY HAND

final class McnErrorSource {const McnErrorSource({this.parameter, this.parameterValueIndex, this.pointer, });

factory McnErrorSource.fromJson(Map<String, dynamic> json) { return McnErrorSource(
  parameter: json['parameter'] as String?,
  parameterValueIndex: json['parameter_value_index'] != null ? (json['parameter_value_index'] as num).toInt() : null,
  pointer: json['pointer'] as String?,
); }

final String? parameter;

final int? parameterValueIndex;

final String? pointer;

Map<String, dynamic> toJson() { return {
  'parameter': ?parameter,
  'parameter_value_index': ?parameterValueIndex,
  'pointer': ?pointer,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
McnErrorSource copyWith({String Function()? parameter, int Function()? parameterValueIndex, String Function()? pointer, }) { return McnErrorSource(
  parameter: parameter != null ? parameter() : this.parameter,
  parameterValueIndex: parameterValueIndex != null ? parameterValueIndex() : this.parameterValueIndex,
  pointer: pointer != null ? pointer() : this.pointer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is McnErrorSource &&
          parameter == other.parameter &&
          parameterValueIndex == other.parameterValueIndex &&
          pointer == other.pointer; } 
@override int get hashCode { return Object.hash(parameter, parameterValueIndex, pointer); } 
@override String toString() { return 'McnErrorSource(parameter: $parameter, parameterValueIndex: $parameterValueIndex, pointer: $pointer)'; } 
 }
