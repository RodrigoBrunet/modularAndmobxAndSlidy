import 'package:dio/dio.dart';
import 'package:novo/app/models/pokemons_model.dart';
import 'package:novo/app/shared/constants.dart';

class MainRepository {
  final Dio dio;

  MainRepository(this.dio);

  Future<Pokemons> fetchPokemons() async {
    try {
      Response response = await dio.get(API_BASE_URL + methodGetPokemons);

      if (response.statusCode == 200) {
        Pokemons saida = Pokemons.fromJson(response.data);

        return saida;
      }
    } on DioError catch (exp) {
      print("Excessão: " + exp.message);
      throw ("Erro de acesso aos dados");
    }
    return null;
  }
}
