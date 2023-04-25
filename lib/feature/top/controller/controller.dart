import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:working_reading/feature/top/repository/top_repository.dart';

final topController = Provider((ref) => TopRepositoryWithSupabase());

final fetchFamousSaying =
    FutureProvider((ref) => ref.watch(topController).fetchRandomFamousSaying());

// トップ画面にて選択したn数を格納するprovider
final nBackNumProvider = StateProvider((ref) => 1);
