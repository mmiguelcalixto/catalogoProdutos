import 'package:catalogo_produtos/widgets/produto.dart';

abstract class EletronicoWidget extends ProdutoWidget {
  final String modelo;
  final String tipo;
  
  const EletronicoWidget({
    required super.nome, 
    required super.preco, 
    required super.descricao,
    required super.imagemUrl, 
    required super.onTap,
    super.key,
    required this.modelo,
    required this.tipo,
  });
}