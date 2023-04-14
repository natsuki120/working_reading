// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'voice_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VoiceInput _$VoiceInputFromJson(Map<String, dynamic> json) {
  return _VoiceInput.fromJson(json);
}

/// @nodoc
mixin _$VoiceInput {
  String get lastWord => throw _privateConstructorUsedError;
  bool get speechEnabled => throw _privateConstructorUsedError;
  bool get hasSpeechEnough => throw _privateConstructorUsedError;
  double get voiceIndicatorValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VoiceInputCopyWith<VoiceInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoiceInputCopyWith<$Res> {
  factory $VoiceInputCopyWith(
          VoiceInput value, $Res Function(VoiceInput) then) =
      _$VoiceInputCopyWithImpl<$Res, VoiceInput>;
  @useResult
  $Res call(
      {String lastWord,
      bool speechEnabled,
      bool hasSpeechEnough,
      double voiceIndicatorValue});
}

/// @nodoc
class _$VoiceInputCopyWithImpl<$Res, $Val extends VoiceInput>
    implements $VoiceInputCopyWith<$Res> {
  _$VoiceInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastWord = null,
    Object? speechEnabled = null,
    Object? hasSpeechEnough = null,
    Object? voiceIndicatorValue = null,
  }) {
    return _then(_value.copyWith(
      lastWord: null == lastWord
          ? _value.lastWord
          : lastWord // ignore: cast_nullable_to_non_nullable
              as String,
      speechEnabled: null == speechEnabled
          ? _value.speechEnabled
          : speechEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      hasSpeechEnough: null == hasSpeechEnough
          ? _value.hasSpeechEnough
          : hasSpeechEnough // ignore: cast_nullable_to_non_nullable
              as bool,
      voiceIndicatorValue: null == voiceIndicatorValue
          ? _value.voiceIndicatorValue
          : voiceIndicatorValue // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VoiceInputCopyWith<$Res>
    implements $VoiceInputCopyWith<$Res> {
  factory _$$_VoiceInputCopyWith(
          _$_VoiceInput value, $Res Function(_$_VoiceInput) then) =
      __$$_VoiceInputCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String lastWord,
      bool speechEnabled,
      bool hasSpeechEnough,
      double voiceIndicatorValue});
}

/// @nodoc
class __$$_VoiceInputCopyWithImpl<$Res>
    extends _$VoiceInputCopyWithImpl<$Res, _$_VoiceInput>
    implements _$$_VoiceInputCopyWith<$Res> {
  __$$_VoiceInputCopyWithImpl(
      _$_VoiceInput _value, $Res Function(_$_VoiceInput) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastWord = null,
    Object? speechEnabled = null,
    Object? hasSpeechEnough = null,
    Object? voiceIndicatorValue = null,
  }) {
    return _then(_$_VoiceInput(
      lastWord: null == lastWord
          ? _value.lastWord
          : lastWord // ignore: cast_nullable_to_non_nullable
              as String,
      speechEnabled: null == speechEnabled
          ? _value.speechEnabled
          : speechEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      hasSpeechEnough: null == hasSpeechEnough
          ? _value.hasSpeechEnough
          : hasSpeechEnough // ignore: cast_nullable_to_non_nullable
              as bool,
      voiceIndicatorValue: null == voiceIndicatorValue
          ? _value.voiceIndicatorValue
          : voiceIndicatorValue // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VoiceInput with DiagnosticableTreeMixin implements _VoiceInput {
  const _$_VoiceInput(
      {this.lastWord = '',
      this.speechEnabled = false,
      this.hasSpeechEnough = false,
      this.voiceIndicatorValue = 0.0});

  factory _$_VoiceInput.fromJson(Map<String, dynamic> json) =>
      _$$_VoiceInputFromJson(json);

  @override
  @JsonKey()
  final String lastWord;
  @override
  @JsonKey()
  final bool speechEnabled;
  @override
  @JsonKey()
  final bool hasSpeechEnough;
  @override
  @JsonKey()
  final double voiceIndicatorValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VoiceInput(lastWord: $lastWord, speechEnabled: $speechEnabled, hasSpeechEnough: $hasSpeechEnough, voiceIndicatorValue: $voiceIndicatorValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VoiceInput'))
      ..add(DiagnosticsProperty('lastWord', lastWord))
      ..add(DiagnosticsProperty('speechEnabled', speechEnabled))
      ..add(DiagnosticsProperty('hasSpeechEnough', hasSpeechEnough))
      ..add(DiagnosticsProperty('voiceIndicatorValue', voiceIndicatorValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VoiceInput &&
            (identical(other.lastWord, lastWord) ||
                other.lastWord == lastWord) &&
            (identical(other.speechEnabled, speechEnabled) ||
                other.speechEnabled == speechEnabled) &&
            (identical(other.hasSpeechEnough, hasSpeechEnough) ||
                other.hasSpeechEnough == hasSpeechEnough) &&
            (identical(other.voiceIndicatorValue, voiceIndicatorValue) ||
                other.voiceIndicatorValue == voiceIndicatorValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lastWord, speechEnabled,
      hasSpeechEnough, voiceIndicatorValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VoiceInputCopyWith<_$_VoiceInput> get copyWith =>
      __$$_VoiceInputCopyWithImpl<_$_VoiceInput>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VoiceInputToJson(
      this,
    );
  }
}

abstract class _VoiceInput implements VoiceInput {
  const factory _VoiceInput(
      {final String lastWord,
      final bool speechEnabled,
      final bool hasSpeechEnough,
      final double voiceIndicatorValue}) = _$_VoiceInput;

  factory _VoiceInput.fromJson(Map<String, dynamic> json) =
      _$_VoiceInput.fromJson;

  @override
  String get lastWord;
  @override
  bool get speechEnabled;
  @override
  bool get hasSpeechEnough;
  @override
  double get voiceIndicatorValue;
  @override
  @JsonKey(ignore: true)
  _$$_VoiceInputCopyWith<_$_VoiceInput> get copyWith =>
      throw _privateConstructorUsedError;
}
