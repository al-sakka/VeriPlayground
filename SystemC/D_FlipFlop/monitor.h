#include<systemc.h>

SC_MODULE(monitor){
	sc_in<bool>  m_dout, m_clr, m_din;

    void monita(void){
        cout<< "at " << sc_time_stamp() << " clear is:" << m_clr << " output is: | " << m_dout << " | " << " input is: " << m_din << endl;
    }
	
	SC_CTOR(monitor){
		SC_METHOD(monita);
		sensitive<<m_din<<m_clr<<m_dout;
		dont_initialize();
	}
};