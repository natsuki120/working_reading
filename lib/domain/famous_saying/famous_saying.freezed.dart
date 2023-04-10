// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'famous_saying.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FamousSaying _$FamousSayingFromJson(Map<String, dynamic> json) {
  return _FamousSaying.fromJson(json);
}

/// @nodoc
mixin _$FamousSaying {
  int get id => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FamousSayingCopyWith<FamousSaying> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FamousSayingCopyWith<$Res> {
  factory $FamousSayingCopyWith(
          FamousSaying value, $Res Function(FamousSaying) then) =
      _$FamousSayingCopyWithImpl<$Res, FamousSaying>;
  @useResult
  $Res call({int id, String content, String author});
}

/// @nodoc
class _$FamousSayingCopyWithImpl<$Res, $Val extends FamousSaying>
    implements $FamousSayingCopyWith<$Res> {
  _$FamousSayingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? author = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FamousSayingCopyWith<$Res>
    implements $FamousSayingCopyWith<$Res> {
  factory _$$_FamousSayingCopyWith(
          _$_FamousSaying value, $Res Function(_$_FamousSaying) then) =
      __$$_FamousSayingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String content, String author});
}

/// @nodoc
class __$$_FamousSayingCopyWithImpl<$Res>
    extends _$FamousSayingCopyWithImpl<$Res, _$_FamousSaying>
    implements _$$_FamousSayingCopyWith<$Res> {
  __$$_FamousSayingCopyWithImpl(
      _$_FamousSaying _value, $Res Function(_$_FamousSaying) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? author = null,
  }) {
    return _then(_$_FamousSaying(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FamousSaying with DiagnosticableTreeMixin implements _FamousSaying {
  const _$_FamousSaying({this.id = 0, this.content = '', this.author = ''});

  factory _$_FamousSaying.fromJson(Map<String, dynamic> json) =>
      _$$_FamousSayingFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String content;
  @override
  @JsonKey()
  final String author;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FamousSaying(id: $id, content: $content, author: $author)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FamousSaying'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('author', author));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FamousSaying &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.author, author) || other.author == author));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, content, author);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FamousSayingCopyWith<_$_FamousSaying> get copyWith =>
      __$$_FamousSayingCopyWithImpl<_$_FamousSaying>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FamousSayingToJson(
      this,
    );
  }
}

abstract class _FamousSaying implements FamousSaying {
  const factory _FamousSaying(
      {final int id,
      final String content,
      final String author}) = _$_FamousSaying;

  factory _FamousSaying.fromJson(Map<String, dynamic> json) =
      _$_FamousSaying.fromJson;

  @override
  int get id;
  @override
  String get content;
  @override
  String get author;
  @override
  @JsonKey(ignore: true)
  _$$_FamousSayingCopyWith<_$_FamousSaying> get copyWith =>
      throw _privateConstructorUsedError;
}
