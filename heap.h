#ifndef HEAP_H
#define HEAP_H
#include <functional>
#include <stdexcept>

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
    if(comp(current,above)){
      break;
    }
    std::swap<T>(current,parent);
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
    return false;
  }

    /**
   * @brief Returns size of the heap
   * 
   */
  size_t size() const{
    return 0;
  }

private:
  /// Add whatever helper functions and data members you need below
  T v;



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
    throw std::underflow_error("bad heap");


  }
  



}



#endif

