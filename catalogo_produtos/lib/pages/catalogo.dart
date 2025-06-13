import 'package:catalogo_produtos/pages/view_produto.dart';
import 'package:catalogo_produtos/widgets/alimento.dart';
import 'package:catalogo_produtos/widgets/eletronico.dart';
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
      body: Center(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: RoupaWidget(
                nome: "Camiseta",
                descricao: "Camiseta básica",
                imagemUrl: Image.asset("images/tshirt.jpg", width: 200),
                preco: 40.00,
                marca: "Levis",
                tamanho: "M",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ViewProduto(
                        nome: "Camiseta",
                        descricao: "Camiseta básica",
                        imagem: Image.asset("images/tshirt.jpg"),
                        preco: 40.00,
                        marca: "Levis",
                        tamanho: "M",
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: EletronicoWidget(
                nome: "Celular",
                descricao: "Celular da Samsung",
                modelo: "Samsung A05s",
                preco: 1000.00,
                tipo: "Celular",
                imagemUrl: Image.asset("images/phone.jpg", width: 200,),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ViewProduto(
                        nome: "Celular",
                        descricao: "Celular da Samsung",
                        modelo: "Samsung A05s",
                        preco: 1000.00,
                        tipo: "Celular",
                        imagem: Image.asset("images/phone.jpg"),
                      ),
                    ),
                  );
                }
              )
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: AlimentoWidget(
                nome: "Bolo",
                descricao: "Bolo de chocolate",
                preco: 60.00,
                imagemUrl: Image.asset("images/bolo.jpg", width: 200,),
                sabor: "Chocolate",
                tipoAlimento: "Sobremesa",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ViewProduto(
                        nome: "Bolo",
                        descricao: "Bolo de chocolate",
                        preco: 60,
                        imagem: Image.asset("images/bolo.jpg", width: 200,),
                        sabor: "Chocolate",
                        tipoAlimento: "Sobremesa",
                      ),
                    )
                  );
                }
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: AlimentoWidget(
                nome: "Strogonoff",
                descricao: "Strogonoff de Frango",
                preco: 25.00,
                imagemUrl: Image.asset("images/strog.jpg", width: 200,),
                sabor: "Frango",
                tipoAlimento: "Almoço",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ViewProduto(
                        nome: "Strogonoff",
                        descricao: "Strogonoff de Frango",
                        preco: 25,
                        imagem: Image.asset("images/strog.jpg", width: 200,),
                        sabor: "Frango",
                        tipoAlimento: "Almoço",
                      ),
                    )
                  );
                }
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: RoupaWidget(
                nome: "Shorts",
                descricao: "Shorts jeans",
                imagemUrl: Image.asset("images/shorts.jpg", width: 200),
                preco: 30.00,
                marca: "Levis",
                tamanho: "M",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ViewProduto(
                        nome: "Shorts",
                        descricao: "Shorts jeans",
                        imagem: Image.asset("images/shorts.jpg"),
                        preco: 30.00,
                        marca: "Levis",
                        tamanho: "M",
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: EletronicoWidget(
                nome: "Notebook",
                descricao: "Notebook da Samsung",
                modelo: "Samsung Book4",
                preco: 5000.00,
                tipo: "Notebook",
                imagemUrl: Image.asset("images/notebook.jpg", width: 200,),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ViewProduto(
                        nome: "Notebook",
                        descricao: "Notebook da Samsung",
                        modelo: "Samsung Book4",
                        preco: 5000.00,
                        tipo: "Notebook",
                        imagem: Image.asset("images/notebook.jpg"),
                      ),
                    ),
                  );
                }
              )
            ),
          ],
        ),
      ),
    );
  }
}
