main(){
   //Sem setar tipo
  var c = "Teste";
  //Inferência de tipo
  print(c is String);

  //Listas
  var nomes = ["Sarah","Lucas","Maria"];
  nomes.add("Priscila");
  nomes.add("Renato");
  //Print posição 0
  print(nomes.elementAt(0));
  //Print posição 4
  print(nomes[4]);
  //Print tamanho da lista
  print(nomes.length);
  //Remove último elemento
  print(nomes.removeLast());
  print(nomes);

  //Conjuntos com Set
  Set<int> conjunto = {0,1,2,3,4,5,5,5,5};
  //Repare que o tamanho não é 9 e sim 6, os repetidos ele ignora
  print(conjunto.length);
  //Valida se é um Set
  print(conjunto is Set);
  //Reduce (fold) , somando valores
  print(conjunto.fold(0, (prev, element) => element + prev));

  //Map - Listas de notas
  Map<String, double> notasDosAlunos= {
    'Ana':9.7,
    'Bia':8.2,
    'Carlos':10
  };

  //Map - Lista de ingredientes de bolo
  Map<String, dynamic> receitaDeBolo = {
    'Farinha de Trigo' : '1kg',
    'Ovos' : 4,
    'Açucar' : '3 xícaras',
    'Pimenta' : '1 colher de sopa de chá'
  };

  //Função do tipo dynamic lendo Map de qualquer tipo
  //Daria para melhorar e deixar apenas um for para fazer td
  //Esse tipo dynamic recebe qualquer tipo, seja int, bool, string e etc
  dynamic retornaItensMap(Map mapEscolhido){
    //Somente as chaves da lista
    for(var chave in mapEscolhido.keys){
      print('chave: ${chave}');
    }    
    //Somente os valores da lista
    for(var valor in mapEscolhido.values){
      print('valor = $valor');
    }    
    //Chave e valor da lista
    for(var registro in mapEscolhido.entries){
      print('${registro.key} = ${registro.value}');
    }    
  }

  //Abrindo Maps
  retornaItensMap(receitaDeBolo);

  //Tipos de variáveis(atributos)
  var a = 3; //Você pode alterar o valor sempre, sempre que usar var, você não pode inferir o tipo, ex: var int a.
  //Você não pode alterar o valor, porém ela é inicializa somente quando acessada e deve ser usada em classes, além de poder ser inicializada somente uma vez. 
  //Variável final do nível de classe deve ser inicializado na mesma linha, final a = 10;
  final int b = 3; 
  const int d = 4; //Você não pode alterar o valor porém ela é sempre inicializa, mesmo sem ser utilizada. Outro ponto, const pode ser usada em listas, já final não.

  




}