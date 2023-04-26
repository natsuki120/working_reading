import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../repository/top_repository.dart';

final topProvider = Provider((ref) => TopRepositoryWithSupabase());

final fetchFamousSaying =
    FutureProvider((ref) => ref.watch(topProvider).fetchRandomFamousSaying());

// トップ画面にて選択したn数を格納するprovider
final nBackNumProvider = StateProvider((ref) => 1);
