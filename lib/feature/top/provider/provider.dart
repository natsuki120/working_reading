import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../repository/top_repository.dart';

final topProvider = Provider((ref) => TopRepositoryWithSupabase());
