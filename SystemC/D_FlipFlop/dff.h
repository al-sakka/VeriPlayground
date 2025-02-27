#ifndef DFF_H_
#define DFF_H_

#include <systemc.h>
#include "nand.h"
#include "notgate.h"

SC_MODULE(dff)
{
    // Ports
    sc_in<bool> clk{"Clock"}, clr{"Clear"}, din{"Input"}; // Inputs
    sc_out<bool> dout{"Output"};                          // Data output port

    // NAND gates
    nand_gate n1{"nand1"}, n2{"nand2"}, n3{"nand3"}, n4{"nand4"};

    // NOT gate
    not_gate ng{"not_gate"};

    // Created signals
    sc_signal<bool> s_ng_n2, S1, S2, S3, S4;

    void dff_process()
    {
        if (clr.read())
        {
            dout.write(0);   // Output 0 when clear is active
        }
        else
        {
            dout.write(S3.read());  // Q = S3
        }
    }

    // Constructor
    SC_CTOR(dff)
    {
        // Connect NOT gate
        ng.in(din);
        ng.out(s_ng_n2);

        // Connect NAND gates
        n1.A(clk);
        n1.B(s_ng_n2);
        n1.out(S1);

        n2.A(s_ng_n2);
        n2.B(S1);
        n2.out(S2);

        n3.A(clk);
        n3.B(S2);
        n3.out(S3);

        n4.A(S1);
        n4.B(S3);
        n4.out(S4);

        // Output Q from n3
        // dout(S3);

        // Sensitivity to the positive edge of the clock
        SC_METHOD(dff_process);
        sensitive << clk.pos();
    }
};

#endif /* DFF_H_ */
