#include <bits/stdc++.h>

using namespace std;

int main()
{
  int matriz[10][10];
  int a, b, c;
  bool answer = true;
  int n, somaLinha, somaColuna, somaPrincipal, somaSecundaria;
  int j;
  scanf("%d", &n);

  for (int i = 0; i < n; i++)
  {
    for (int j = 0; j < n; j++)
      scanf("%d", &matriz[i][j]);
  }

  int soma = 0;
  for (int i = 0; i < n; i++)
    soma += matriz[i][0];

  int teste;

  for (int i = 0; i < n; i++)
  {
    teste = 0;
    for (int j = 0; j < n; j++)
      teste += matriz[i][j];

    if (teste != soma)
      answer = false;
  }

  if (answer)
  {
    for (int i = 0; i < n; i++)
    {
      teste = 0;

      for (int j = 0; j < n; j++)
        teste += matriz[j][i];

      if (teste != soma)
        answer = false;
    }
  }

  if (answer)
  {
    teste = 0;
    int j = 0;

    for (int i = 0; i < n; i++)
    {
      teste += matriz[i][j];
      j += 1;
    }
    if (teste != soma)
      answer = false;
  }

  if (teste != soma)
  {
    answer = false;

    if (answer)
    {
      teste = 0;
      j = n - 1;

      for (int i = n - 1; i < -1; i--)
      {
        teste += matriz[i][j];
        j -= 1;
      }
    }
    if (teste != soma)
      answer = false;
  }

  if (answer)
    printf("True");
  else
    printf("False");
  return 0;
}
