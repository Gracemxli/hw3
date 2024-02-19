#ifndef STACK_H
#define STACK_H

#include <vector>
#include <stdexcept>

// Use inheritance from std::vector (choose public/private) as appropriate
template <typename T>
class Stack 
{
public:
    Stack() {

    }
    ~Stack() {

    }
    bool empty() const {
        return false;
    }
    size_t size() const {
        return 0; 
    }
    void push(const T& item) {

    }
    void pop() {  // throws std::underflow_error if empty
    }
    const T& top() const { 
        return v;
        // throws std::underflow_error if empty
    // Add other members only if necessary
    }
private:
    T v;
};


#endif