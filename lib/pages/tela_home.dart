import 'package:flutter/material.dart';
import '../widgets/card_icone.dart';
import 'tela_perfil.dart';
import 'tela_configuracoes.dart';
import 'tela_favoritos.dart';

class TelaHome extends StatefulWidget {
  const TelaHome({super.key});

  @override
  State<TelaHome> createState() => _TelaHomeState();
}

class _TelaHomeState extends State<TelaHome> {
  String mensagem = "Clique no botão para explorar!";

  
  void _abrirModalAjuda(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(20),
          height: 220,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'Central de Atendimento 🛠️',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.purple),
              ),
              const Text(
                'Nosso suporte funciona 24 horas por dia. Deseja abrir um chamado?',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purple, foregroundColor: Colors.white),
                onPressed: () {
                  Navigator.pop(context); 
                },
                child: const Text('Fechar'),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meu App de Icones', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 60, 88, 179),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                mensagem,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            
            
            CardIcone(
              icone: Icons.person,
              titulo: 'Perfil',
              descricao: 'Gerencie suas informações pessoais e foto.',
              textoBotao: 'Ver Perfil',
              cor: Colors.blue,
              aoClicar: () {
                setState(() {
                  mensagem = 'Você clicou em Perfil';
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TelaPerfil()),
                );
              },
            ),

        
            CardIcone(
              icone: Icons.settings,
              titulo: 'Configurações',
              descricao: 'Ajuste as preferências e segurança do app.',
              textoBotao: 'Abrir Ajustes',
              cor: const Color.fromARGB(255, 110, 110, 110),
              aoClicar: () {
                setState(() {
                  mensagem = 'Você clicou em Configurações';
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TelaConfiguracoes()),
                );
              },
            ),

            
            CardIcone(
              icone: Icons.favorite,
              titulo: 'Favoritos',
              descricao: 'Confira os itens que você salvou na lista.',
              textoBotao: 'Meus Favoritos',
              cor: Colors.red,
              aoClicar: () {
                setState(() {
                  mensagem = 'Você clicou em Favoritos';
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TelaFavoritos()),
                );
              },
            ),

            
            CardIcone(
              icone: Icons.help,
              titulo: 'Ajuda',
              descricao: 'Precisa de suporte? Central de atendimento.',
              textoBotao: 'Obter Ajuda',
              cor: Colors.purple,
              aoClicar: () {
                setState(() {
                  mensagem = 'Você clicou em Ajuda';
                });
                _abrirModalAjuda(context);
              },
            ),

            const SizedBox(height: 24),
            const Padding(
              padding: EdgeInsets.only(bottom: 24.0),
              child: Text(
                'Desenvolvido por: Mateus Torres',
                style: TextStyle(
                  fontSize: 14,
                  fontStyle: FontStyle.italic,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            mensagem = 'Ação do botão flutuante!';
          });
        },
        backgroundColor: const Color.fromARGB(255, 43, 80, 158),
        child: const Icon(Icons.refresh, color: Colors.white),
      ),
    );
  }
}
