#ifndef NANDGATE_H_
#define NANDGATE_H_
#include <systemc.h>

SC_MODULE(nand_gate) // declare nand sc_module
{
    sc_in<bool> A, B; // input signal ports
    sc_out<bool> out; // output signal ports

    void n_gate(void)
    {
        next_trigger();
        out = (!(A && B));
    }

    SC_CTOR(nand_gate) // constructor for nand2
    {
        SC_METHOD(n_gate);   // register nand with kernel
        sensitive << A << B; // sensitivity list
    }
};
#endif /* NANDGATE_H_ */