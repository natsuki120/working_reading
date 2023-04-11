// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  double get percent => throw _privateConstructorUsedError;
  List<bool> get correctList => throw _privateConstructorUsedError;
  bool get isPassed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call({double percent, List<bool> correctList, bool isPassed});
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? percent = null,
    Object? correctList = null,
    Object? isPassed = null,
  }) {
    return _then(_value.copyWith(
      percent: null == percent
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as double,
      correctList: null == correctList
          ? _value.correctList
          : correctList // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      isPassed: null == isPassed
          ? _value.isPassed
          : isPassed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$_ResultCopyWith(_$_Result value, $Res Function(_$_Result) then) =
      __$$_ResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double percent, List<bool> correctList, bool isPassed});
}

/// @nodoc
class __$$_ResultCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$_Result>
    implements _$$_ResultCopyWith<$Res> {
  __$$_ResultCopyWithImpl(_$_Result _value, $Res Function(_$_Result) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? percent = null,
    Object? correctList = null,
    Object? isPassed = null,
  }) {
    return _then(_$_Result(
      percent: null == percent
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as double,
      correctList: null == correctList
          ? _value._correctList
          : correctList // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      isPassed: null == isPassed
          ? _value.isPassed
          : isPassed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Result with DiagnosticableTreeMixin implements _Result {
  const _$_Result(
      {this.percent = 0,
      final List<bool> correctList = const [],
      this.isPassed = false})
      : _correctList = correctList;

  factory _$_Result.fromJson(Map<String, dynamic> json) =>
      _$$_ResultFromJson(json);

  @override
  @JsonKey()
  final double percent;
  final List<bool> _correctList;
  @override
  @JsonKey()
  List<bool> get correctList {
    if (_correctList is EqualUnmodifiableListView) return _correctList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_correctList);
  }

  @override
  @JsonKey()
  final bool isPassed;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Result(percent: $percent, correctList: $correctList, isPassed: $isPassed)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Result'))
      ..add(DiagnosticsProperty('percent', percent))
      ..add(DiagnosticsProperty('correctList', correctList))
      ..add(DiagnosticsProperty('isPassed', isPassed));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Result &&
            (identical(other.percent, percent) || other.percent == percent) &&
            const DeepCollectionEquality()
                .equals(other._correctList, _correctList) &&
            (identical(other.isPassed, isPassed) ||
                other.isPassed == isPassed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, percent,
      const DeepCollectionEquality().hash(_correctList), isPassed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      __$$_ResultCopyWithImpl<_$_Result>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result(
      {final double percent,
      final List<bool> correctList,
      final bool isPassed}) = _$_Result;

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  double get percent;
  @override
  List<bool> get correctList;
  @override
  bool get isPassed;
  @override
  @JsonKey(ignore: true)
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      throw _privateConstructorUsedError;
}
