import 'package:catalogo_produtos/widgets/produto.dart';
import 'package:flutter/material.dart';

class EletronicoWidget extends ProdutoWidget {
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

  @override
  String getTipoProduto() => "Eletrônico";

  @override
  Widget build(BuildContext context) {
    return Center(
        child: InkWell(
          onTap: onTap,
          child: Container(
          height: 200,
          width: 400,
          margin: EdgeInsets.symmetric(),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color.fromARGB(255, 200, 200, 200),
          ),
          child: Row(
            children: [
              imagemUrl,
              Column(
                children: [
                  Text(nome, style: TextStyle(fontSize: 30),),
                  Text("R\$${preco.toStringAsFixed(2)}", style: TextStyle(fontSize: 25),),
                  Text(descricao),
                  Column(
                    children: [
                      Text("Modelo: $modelo"),
                      SizedBox(width: 20),
                      Text("Tipo: $tipo")
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}