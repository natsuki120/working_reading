import 'package:hooks_riverpod/hooks_riverpod.dart';

// トレーニングの回数を記録するprovider
// 2回トレーニングしたら結果発表画面に遷移させる
final trainingNum = StateProvider((ref) => 1);
