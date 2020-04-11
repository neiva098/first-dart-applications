void main() {
  List team = [
    'valdir',
    'andre',
    'mateus'
  ];

  var nome = 'Cristiano';
  print('Bem Vindo ' + nome);
  
  for(var individuo in team) {
    print(individuo);
  }
}