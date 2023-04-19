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
  List<String> get sentenceList => throw _privateConstructorUsedError;
  String get lastWord => throw _privateConstructorUsedError;
  String get properNoun => throw _privateConstructorUsedError;
  bool get readingEnough => throw _privateConstructorUsedError;
  bool get readingEnabled => throw _privateConstructorUsedError;
  double get voiceIndicatorValue => throw _privateConstructorUsedError;
  int get listIndex => throw _privateConstructorUsedError;
  int get nBackNum => throw _privateConstructorUsedError;

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
      {List<String> sentenceList,
      String lastWord,
      String properNoun,
      bool readingEnough,
      bool readingEnabled,
      double voiceIndicatorValue,
      int listIndex,
      int nBackNum});
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
    Object? sentenceList = null,
    Object? lastWord = null,
    Object? properNoun = null,
    Object? readingEnough = null,
    Object? readingEnabled = null,
    Object? voiceIndicatorValue = null,
    Object? listIndex = null,
    Object? nBackNum = null,
  }) {
    return _then(_value.copyWith(
      sentenceList: null == sentenceList
          ? _value.sentenceList
          : sentenceList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lastWord: null == lastWord
          ? _value.lastWord
          : lastWord // ignore: cast_nullable_to_non_nullable
              as String,
      properNoun: null == properNoun
          ? _value.properNoun
          : properNoun // ignore: cast_nullable_to_non_nullable
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
      listIndex: null == listIndex
          ? _value.listIndex
          : listIndex // ignore: cast_nullable_to_non_nullable
              as int,
      nBackNum: null == nBackNum
          ? _value.nBackNum
          : nBackNum // ignore: cast_nullable_to_non_nullable
              as int,
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
      {List<String> sentenceList,
      String lastWord,
      String properNoun,
      bool readingEnough,
      bool readingEnabled,
      double voiceIndicatorValue,
      int listIndex,
      int nBackNum});
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
    Object? sentenceList = null,
    Object? lastWord = null,
    Object? properNoun = null,
    Object? readingEnough = null,
    Object? readingEnabled = null,
    Object? voiceIndicatorValue = null,
    Object? listIndex = null,
    Object? nBackNum = null,
  }) {
    return _then(_$_Training(
      sentenceList: null == sentenceList
          ? _value._sentenceList
          : sentenceList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lastWord: null == lastWord
          ? _value.lastWord
          : lastWord // ignore: cast_nullable_to_non_nullable
              as String,
      properNoun: null == properNoun
          ? _value.properNoun
          : properNoun // ignore: cast_nullable_to_non_nullable
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
      listIndex: null == listIndex
          ? _value.listIndex
          : listIndex // ignore: cast_nullable_to_non_nullable
              as int,
      nBackNum: null == nBackNum
          ? _value.nBackNum
          : nBackNum // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Training with DiagnosticableTreeMixin implements _Training {
  const _$_Training(
      {final List<String> sentenceList = const [],
      this.lastWord = '',
      this.properNoun = '',
      this.readingEnough = false,
      this.readingEnabled = false,
      this.voiceIndicatorValue = 0.0,
      this.listIndex = 1,
      this.nBackNum = 1})
      : _sentenceList = sentenceList;

  factory _$_Training.fromJson(Map<String, dynamic> json) =>
      _$$_TrainingFromJson(json);

  final List<String> _sentenceList;
  @override
  @JsonKey()
  List<String> get sentenceList {
    if (_sentenceList is EqualUnmodifiableListView) return _sentenceList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sentenceList);
  }

  @override
  @JsonKey()
  final String lastWord;
  @override
  @JsonKey()
  final String properNoun;
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
  @JsonKey()
  final int listIndex;
  @override
  @JsonKey()
  final int nBackNum;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Training(sentenceList: $sentenceList, lastWord: $lastWord, properNoun: $properNoun, readingEnough: $readingEnough, readingEnabled: $readingEnabled, voiceIndicatorValue: $voiceIndicatorValue, listIndex: $listIndex, nBackNum: $nBackNum)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Training'))
      ..add(DiagnosticsProperty('sentenceList', sentenceList))
      ..add(DiagnosticsProperty('lastWord', lastWord))
      ..add(DiagnosticsProperty('properNoun', properNoun))
      ..add(DiagnosticsProperty('readingEnough', readingEnough))
      ..add(DiagnosticsProperty('readingEnabled', readingEnabled))
      ..add(DiagnosticsProperty('voiceIndicatorValue', voiceIndicatorValue))
      ..add(DiagnosticsProperty('listIndex', listIndex))
      ..add(DiagnosticsProperty('nBackNum', nBackNum));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Training &&
            const DeepCollectionEquality()
                .equals(other._sentenceList, _sentenceList) &&
            (identical(other.lastWord, lastWord) ||
                other.lastWord == lastWord) &&
            (identical(other.properNoun, properNoun) ||
                other.properNoun == properNoun) &&
            (identical(other.readingEnough, readingEnough) ||
                other.readingEnough == readingEnough) &&
            (identical(other.readingEnabled, readingEnabled) ||
                other.readingEnabled == readingEnabled) &&
            (identical(other.voiceIndicatorValue, voiceIndicatorValue) ||
                other.voiceIndicatorValue == voiceIndicatorValue) &&
            (identical(other.listIndex, listIndex) ||
                other.listIndex == listIndex) &&
            (identical(other.nBackNum, nBackNum) ||
                other.nBackNum == nBackNum));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_sentenceList),
      lastWord,
      properNoun,
      readingEnough,
      readingEnabled,
      voiceIndicatorValue,
      listIndex,
      nBackNum);

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
      {final List<String> sentenceList,
      final String lastWord,
      final String properNoun,
      final bool readingEnough,
      final bool readingEnabled,
      final double voiceIndicatorValue,
      final int listIndex,
      final int nBackNum}) = _$_Training;

  factory _Training.fromJson(Map<String, dynamic> json) = _$_Training.fromJson;

  @override
  List<String> get sentenceList;
  @override
  String get lastWord;
  @override
  String get properNoun;
  @override
  bool get readingEnough;
  @override
  bool get readingEnabled;
  @override
  double get voiceIndicatorValue;
  @override
  int get listIndex;
  @override
  int get nBackNum;
  @override
  @JsonKey(ignore: true)
  _$$_TrainingCopyWith<_$_Training> get copyWith =>
      throw _privateConstructorUsedError;
}
