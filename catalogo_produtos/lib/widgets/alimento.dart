import 'package:catalogo_produtos/widgets/produto.dart';

abstract class AlimentoWidget extends ProdutoWidget {
  final String sabor;
  final String tipo;
  
  const AlimentoWidget({
    required super.nome, 
    required super.preco, 
    required super.descricao,
    required super.imagemUrl, 
    required super.onTap,
    super.key,
    required this.sabor,
    required this.tipo,
  });
}