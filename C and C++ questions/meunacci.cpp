#include <iostream>
#include <stdlib.h>

using namespace std;

long long fibonacci(int number)
{
	if (number == 0)
		return 0;
	else if (number == 1 || number == 2)
		return 1;
	else
		return fibonacci(number - 1) + fibonacci(number - 2);
}

int main()
{
	long number;
	cin >> number;

	long sum = 0;

	long first = fibonacci(number);
	long second = fibonacci(number + 1);
	long third = fibonacci(number + 2);

	long un_first = first % 10;
	long un_second = second % 10;
	long un_third = third % 10;

	sum = un_first + un_second + un_third;
	cout << sum << endl;
	return 0;
}
