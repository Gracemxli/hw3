#ifndef HEAP_H
#define HEAP_H
#include <functional>
#include <stdexcept>
#include <algorithm>
#include <vector>

template <typename T, typename PComparator = std::less<T> >
class Heap : private std::vector<T>
{
public:
  /**
   * @brief Construct a new Heap object
   * 
   * @param m ary-ness of heap tree (default to 2)
   * @param c binary predicate function/functor that takes two items
   *          as an argument and returns a bool if the first argument has
   *          priority over the second.
   */
  Heap(int m=2, PComparator c = PComparator()) {

  }

  /**
  * @brief Destroy the Heap object
  * 
  */
  ~Heap(){

  }

  /**
   * @brief Push an item to the heap
   * 
   * @param item item to heap
   */
  void push(const T& item){

    std::vector<T>::push_back(item);
    size_t i = std::vector<T>::size()-1;
    while(i!=0){
      size_t parent = (i-1)/2;

      T& current = std::vector<T>::at(i);
      T& above = std::vector<T>::at(parent);

    PComparator comp; 
    if(comp(above,current)){
      break;
    }
    std::swap<T>(current,above);
      i = parent;
    }
    
  }

  /**
   * @brief Returns the top (priority) item
   * 
   * @return T const& top priority item
   * @throw std::underflow_error if the heap is empty
   */
  T const & top() const;

  /**
   * @brief Remove the top priority item
   * 
   * @throw std::underflow_error if the heap is empty
   */
  void pop();

  /// returns true if the heap is empty

  /**
   * @brief Returns true if the heap is empty
   * 
   */
  bool empty() const{
    return std::vector<T>::empty();
  }

    /**
   * @brief Returns size of the heap
   * 
   */
  size_t size() const{
    return std::vector<T>::size();
  }

private:
  /// Add whatever helper functions and data members you need below
  void heapify(size_t i){
    size_t left =  2*i +1;
    size_t right = 2*i + 2;
    size_t largest =  i; 
    
    PComparator comp; 
    if (left < size() && comp(std::vector<T>::at(left), std::vector<T>::at(largest))){
      largest= left;
    }
    if (right < size() && comp(std::vector<T>::at(right), std::vector<T>::at(largest))){
      largest= right;
    }
    if(largest!= i){
      std::swap(std::vector<T>::at(i), std::vector<T>::at(largest));
      heapify(largest);
    }
  }
};

// Add implementation of member functions here
 

// We will start top() for you to handle the case of 
// calling top on an empty heap
template <typename T, typename PComparator>
T const & Heap<T,PComparator>::top() const
{
  // Here we use exceptions to handle the case of trying
  // to access the top element of an empty heap
  if(empty()){
    // ================================
    // throw the appropriate exception
    // ================================
    throw std::underflow_error("bad heap");

  }
  // If we get here we know the heap has at least 1 item
  // Add code to return the top element

  return std::vector<T>::at(0);

}


// We will start pop() for you to handle the case of 
// calling top on an empty heap
template <typename T, typename PComparator>
void Heap<T,PComparator>::pop()
{
  if(empty()){
    // ================================
    // throw the appropriate exception
    // ================================
    throw std::underflow_error("bad pop");
  }
  std::swap<T>(std::vector<T>::at(0), std::vector<T>::at(size()-1));
  std::vector<T>::pop_back();

  heapify(0);

}





#endif

