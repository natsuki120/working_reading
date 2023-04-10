import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:working_reading/domain/famous_saying/famous_saying.dart';
import 'dart:math' as math;

class FamousSayingRepositoryWithSupabase {
  final supabase = Supabase.instance.client;

  Future<FamousSaying> fetchRandomFamousSaying() async {
    final random = math.Random().nextInt(9);
    final data =
        await supabase.from('famouse saying').select('*').eq('id', random);
    return FamousSaying.fromJson(data[0]);
  }
}
