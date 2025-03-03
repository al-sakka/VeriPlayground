#include <systemc.h>

SC_MODULE(driver)
{
    sc_out<bool> d_A, d_B;

    void drive(void)
    {
        while (true)
        {
            d_A = 0;
            d_B = 0;
            wait(5, SC_NS);
            d_A = 0;
            d_B = 1;
            wait(5, SC_NS);
            d_A = 1;
            d_B = 0;
            wait(5, SC_NS);
            d_A = 1;
            d_B = 1;
            wait(5, SC_NS);
        }
    }

    SC_CTOR(driver)
    {
        SC_THREAD(drive);
    }
};