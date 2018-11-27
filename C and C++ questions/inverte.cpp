#include <bits/stdc++.h>

using namespace std;

string Replace(string a, string b, string c)
{
	int pos = a.find(b);
	a.replace(pos, c.length(), c);

	return a;
}

int main()
{
	string palavra, nome, invertida;

	int n;
	cin >> nome;
	cin >> n;

	for (int i = nome.length() - 1; i > -1; i--)
		invertida += nome[i];

	for (int i = 0; i < n; i++)
	{
		cin >> palavra;
		int posicao = palavra.find(nome);

		if (posicao != -1)
			std::cout << Replace(palavra, nome, invertida) << "\n";
		else
			cout << palavra << "\n";
	}
	return 0;
}
