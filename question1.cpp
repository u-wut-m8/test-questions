#include <iostream>

long long func(int num){
	if (num == 0)
		return 0;
	if (num == 1)
		return 1;
	return func(num-2) + 2*func(num-1);
}

int main(){
	int n;
	std::cin>>n;
	std::cout<<func(n-1);
	return 0;
}
