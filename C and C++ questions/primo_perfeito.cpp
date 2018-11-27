#include <stdio.h>
#include <math.h>

int ehPrimo(int);

int ehPrimo(int num)
{
  int i = 2;
  while (i * i <= num)
  {
    if (num % i == 0)
      return 0;
    i++;
  }
  return 1;
}

int main()
{
  int num, aux;

  scanf("%d", &num);

  aux = num + 2;

  if (ehPrimo(num) == 1 && ehPrimo(aux) == 1)
  {
    printf("PRIMO CASADO!");
  }
  else if (ehPrimo(num) == 1)
  {
    printf("PRIMO!");
  }
  else
    printf("NÃO PRIMO!");
  return 0;

  return 0;
}
