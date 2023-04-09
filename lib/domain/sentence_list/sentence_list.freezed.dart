// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sentence_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SentenceList _$SentenceListFromJson(Map<String, dynamic> json) {
  return _SentenceList.fromJson(json);
}

/// @nodoc
mixin _$SentenceList {
  List<Sentence> get sentenceList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SentenceListCopyWith<SentenceList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SentenceListCopyWith<$Res> {
  factory $SentenceListCopyWith(
          SentenceList value, $Res Function(SentenceList) then) =
      _$SentenceListCopyWithImpl<$Res, SentenceList>;
  @useResult
  $Res call({List<Sentence> sentenceList});
}

/// @nodoc
class _$SentenceListCopyWithImpl<$Res, $Val extends SentenceList>
    implements $SentenceListCopyWith<$Res> {
  _$SentenceListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sentenceList = null,
  }) {
    return _then(_value.copyWith(
      sentenceList: null == sentenceList
          ? _value.sentenceList
          : sentenceList // ignore: cast_nullable_to_non_nullable
              as List<Sentence>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SentenceListCopyWith<$Res>
    implements $SentenceListCopyWith<$Res> {
  factory _$$_SentenceListCopyWith(
          _$_SentenceList value, $Res Function(_$_SentenceList) then) =
      __$$_SentenceListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Sentence> sentenceList});
}

/// @nodoc
class __$$_SentenceListCopyWithImpl<$Res>
    extends _$SentenceListCopyWithImpl<$Res, _$_SentenceList>
    implements _$$_SentenceListCopyWith<$Res> {
  __$$_SentenceListCopyWithImpl(
      _$_SentenceList _value, $Res Function(_$_SentenceList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sentenceList = null,
  }) {
    return _then(_$_SentenceList(
      sentenceList: null == sentenceList
          ? _value._sentenceList
          : sentenceList // ignore: cast_nullable_to_non_nullable
              as List<Sentence>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SentenceList with DiagnosticableTreeMixin implements _SentenceList {
  const _$_SentenceList({final List<Sentence> sentenceList = const []})
      : _sentenceList = sentenceList;

  factory _$_SentenceList.fromJson(Map<String, dynamic> json) =>
      _$$_SentenceListFromJson(json);

  final List<Sentence> _sentenceList;
  @override
  @JsonKey()
  List<Sentence> get sentenceList {
    if (_sentenceList is EqualUnmodifiableListView) return _sentenceList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sentenceList);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SentenceList(sentenceList: $sentenceList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SentenceList'))
      ..add(DiagnosticsProperty('sentenceList', sentenceList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SentenceList &&
            const DeepCollectionEquality()
                .equals(other._sentenceList, _sentenceList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_sentenceList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SentenceListCopyWith<_$_SentenceList> get copyWith =>
      __$$_SentenceListCopyWithImpl<_$_SentenceList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SentenceListToJson(
      this,
    );
  }
}

abstract class _SentenceList implements SentenceList {
  const factory _SentenceList({final List<Sentence> sentenceList}) =
      _$_SentenceList;

  factory _SentenceList.fromJson(Map<String, dynamic> json) =
      _$_SentenceList.fromJson;

  @override
  List<Sentence> get sentenceList;
  @override
  @JsonKey(ignore: true)
  _$$_SentenceListCopyWith<_$_SentenceList> get copyWith =>
      throw _privateConstructorUsedError;
}
