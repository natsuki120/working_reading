// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'training.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Training _$TrainingFromJson(Map<String, dynamic> json) {
  return _Training.fromJson(json);
}

/// @nodoc
mixin _$Training {
  String get lastWord => throw _privateConstructorUsedError;
  bool get readingEnough => throw _privateConstructorUsedError;
  bool get readingEnabled => throw _privateConstructorUsedError;
  double get voiceIndicatorValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrainingCopyWith<Training> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainingCopyWith<$Res> {
  factory $TrainingCopyWith(Training value, $Res Function(Training) then) =
      _$TrainingCopyWithImpl<$Res, Training>;
  @useResult
  $Res call(
      {String lastWord,
      bool readingEnough,
      bool readingEnabled,
      double voiceIndicatorValue});
}

/// @nodoc
class _$TrainingCopyWithImpl<$Res, $Val extends Training>
    implements $TrainingCopyWith<$Res> {
  _$TrainingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastWord = null,
    Object? readingEnough = null,
    Object? readingEnabled = null,
    Object? voiceIndicatorValue = null,
  }) {
    return _then(_value.copyWith(
      lastWord: null == lastWord
          ? _value.lastWord
          : lastWord // ignore: cast_nullable_to_non_nullable
              as String,
      readingEnough: null == readingEnough
          ? _value.readingEnough
          : readingEnough // ignore: cast_nullable_to_non_nullable
              as bool,
      readingEnabled: null == readingEnabled
          ? _value.readingEnabled
          : readingEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      voiceIndicatorValue: null == voiceIndicatorValue
          ? _value.voiceIndicatorValue
          : voiceIndicatorValue // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TrainingCopyWith<$Res> implements $TrainingCopyWith<$Res> {
  factory _$$_TrainingCopyWith(
          _$_Training value, $Res Function(_$_Training) then) =
      __$$_TrainingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String lastWord,
      bool readingEnough,
      bool readingEnabled,
      double voiceIndicatorValue});
}

/// @nodoc
class __$$_TrainingCopyWithImpl<$Res>
    extends _$TrainingCopyWithImpl<$Res, _$_Training>
    implements _$$_TrainingCopyWith<$Res> {
  __$$_TrainingCopyWithImpl(
      _$_Training _value, $Res Function(_$_Training) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastWord = null,
    Object? readingEnough = null,
    Object? readingEnabled = null,
    Object? voiceIndicatorValue = null,
  }) {
    return _then(_$_Training(
      lastWord: null == lastWord
          ? _value.lastWord
          : lastWord // ignore: cast_nullable_to_non_nullable
              as String,
      readingEnough: null == readingEnough
          ? _value.readingEnough
          : readingEnough // ignore: cast_nullable_to_non_nullable
              as bool,
      readingEnabled: null == readingEnabled
          ? _value.readingEnabled
          : readingEnabled // ignore: cast_nullable_to_non_nullable
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
class _$_Training with DiagnosticableTreeMixin implements _Training {
  const _$_Training(
      {this.lastWord = '',
      this.readingEnough = false,
      this.readingEnabled = false,
      this.voiceIndicatorValue = 0.0});

  factory _$_Training.fromJson(Map<String, dynamic> json) =>
      _$$_TrainingFromJson(json);

  @override
  @JsonKey()
  final String lastWord;
  @override
  @JsonKey()
  final bool readingEnough;
  @override
  @JsonKey()
  final bool readingEnabled;
  @override
  @JsonKey()
  final double voiceIndicatorValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Training(lastWord: $lastWord, readingEnough: $readingEnough, readingEnabled: $readingEnabled, voiceIndicatorValue: $voiceIndicatorValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Training'))
      ..add(DiagnosticsProperty('lastWord', lastWord))
      ..add(DiagnosticsProperty('readingEnough', readingEnough))
      ..add(DiagnosticsProperty('readingEnabled', readingEnabled))
      ..add(DiagnosticsProperty('voiceIndicatorValue', voiceIndicatorValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Training &&
            (identical(other.lastWord, lastWord) ||
                other.lastWord == lastWord) &&
            (identical(other.readingEnough, readingEnough) ||
                other.readingEnough == readingEnough) &&
            (identical(other.readingEnabled, readingEnabled) ||
                other.readingEnabled == readingEnabled) &&
            (identical(other.voiceIndicatorValue, voiceIndicatorValue) ||
                other.voiceIndicatorValue == voiceIndicatorValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lastWord, readingEnough,
      readingEnabled, voiceIndicatorValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TrainingCopyWith<_$_Training> get copyWith =>
      __$$_TrainingCopyWithImpl<_$_Training>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrainingToJson(
      this,
    );
  }
}

abstract class _Training implements Training {
  const factory _Training(
      {final String lastWord,
      final bool readingEnough,
      final bool readingEnabled,
      final double voiceIndicatorValue}) = _$_Training;

  factory _Training.fromJson(Map<String, dynamic> json) = _$_Training.fromJson;

  @override
  String get lastWord;
  @override
  bool get readingEnough;
  @override
  bool get readingEnabled;
  @override
  double get voiceIndicatorValue;
  @override
  @JsonKey(ignore: true)
  _$$_TrainingCopyWith<_$_Training> get copyWith =>
      throw _privateConstructorUsedError;
}
