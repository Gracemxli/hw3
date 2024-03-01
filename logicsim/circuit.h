#ifndef CIRCUIT_H
#define CIRCUIT_H
#include <vector>

#include "../heap.h"
#include "event.h"
#include "gate.h"

struct TimeComparator{
	bool operator()(Event* a, Event* b){
		return	(a->time< b->time); 
	}

};

class Circuit 
{
	public:
		Circuit();
		~Circuit();
		void test();
		bool advance(std::ostream&);
		void run(std::ostream&);
    bool parse(const char*);
    void startUml(std::ostream&);
    void endUml(std::ostream&);
		
	private:
		uint64_t m_current_time;
    std::vector<Gate*> m_gates;
    std::vector<Wire*> m_wires;
		// we need to add the m_pq data member. It should be a min-heap of Event*;
    Heap<Event*,TimeComparator> m_pq;

};

#endif
