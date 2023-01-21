import 'package:dio/dio.dart';

//trazendo a API do Strapi
class ProductRepository {
  //estanciando o dio
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: 'http://localhost:1337/api',
      //utilizando o Token
      headers: {
        'Authorization':
            'Bearer eb3e5821138c93f82b89f66d8d0f8a5e7cd0e39f8d9b9b7b37350c5d0e0ede89fdaf07357b333af002e728aaa01c73b8febb422a3beb69737d6428499192f78aa02196b0c68df34899df1b7d3152ee08b387a6de8249ea169a9d225a55123b2219e00009c170488b75105065514fb776271781b7041a1b22f4c83e62f2b02a1f',
      },
    ),
  );
}
