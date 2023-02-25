#ifdef LEAKS
#include <cstdlib>
#endif

#include "sayHello.hpp"

int main()
{
	sayHello();

#ifdef LEAKS
	system("leaks a.out");
#endif

	return 0;
}
