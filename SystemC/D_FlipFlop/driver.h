#include <systemc.h>

SC_MODULE(driver)
{
    sc_out<bool> d_din, d_clr;

    void drive(void)
    {
        d_clr = 0;
        d_din = 0;
        wait(4, SC_NS);
        while (true)
        {
            wait(10, SC_NS); // wait for next clock trigger
            d_din = 1;
            wait(10, SC_NS); // wait for next clock trigger
            d_din = 0;
        }
    }

    SC_CTOR(driver)
    {
        SC_THREAD(drive);
    }
};