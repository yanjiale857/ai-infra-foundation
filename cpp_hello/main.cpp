#include <iostream>
#include <vector>
#include <string>

int main() {
    std::string name = "AI Infra";
    std::vector<int> nums = {1, 2, 3, 4, 5};

    int sum = 0;
    for (int x : nums) {
        sum += x;
    }

    std::cout << "Hello, " << name << std::endl;
    std::cout << "sum = " << sum << std::endl;

    return 0;
}
