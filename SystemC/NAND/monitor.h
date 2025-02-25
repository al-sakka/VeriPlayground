#include <systemc.h>

SC_MODULE(monitor)
{
    sc_in<bool> m_A, m_B, m_out;

    void moniter(void)
    {
        cout << "at " << sc_time_stamp() << " input is: " << m_A << " and " << m_B << ", output is: | " << m_out << " | " << endl;
    }

    SC_CTOR(monitor)
    {
        SC_METHOD(moniter);
        sensitive << m_A << m_B << m_out;
        dont_initialize();
    }
};