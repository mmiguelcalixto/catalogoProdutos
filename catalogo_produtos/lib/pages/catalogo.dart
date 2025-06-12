import 'package:catalogo_produtos/widgets/roupa.dart';
import 'package:flutter/material.dart';

class Catalogo extends StatefulWidget {
  const Catalogo({super.key});

  @override
  State<Catalogo> createState() => _CatalogoState();
}

class _CatalogoState extends State<Catalogo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catálogo de produtos"),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            RoupaWidget(nome: "Camiseta", descricao: "Camiseta básica", imagemUrl: Image.asset("images/tshirt.jpg", width: 200), preco: 40.00, marca: "Levis", tamanho: "M", onTap: (){}),
            
            RoupaWidget(nome: "Camiseta2", descricao: "Camiseta básica", imagemUrl: Image.asset("images/tshirt.jpg", width: 200), preco: 40.00, marca: "Levis", tamanho: "M", onTap: (){}),
          ],
        ),
      )
    );
  }
}