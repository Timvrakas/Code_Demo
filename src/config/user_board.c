#include <user_board.h>
#include <asf.h>

void system_board_init(void){

    //Setup LED Pin
    struct port_config p;
    port_get_config_defaults(&p);
    p.direction = PORT_PIN_DIR_OUTPUT;
    port_pin_set_config(PIN_PA23, &p);
    port_pin_set_config(PIN_PA28, &p);

   
    port_pin_set_config(PIN_PA11, &p);    
    port_pin_set_config(PIN_PA09, &p);    
    port_pin_set_config(PIN_PA15, &p);    
    port_pin_set_config(PIN_PA17, &p);    
    port_pin_set_config(PIN_PA19, &p);    
    port_pin_set_config(PIN_PA27, &p);


    port_pin_set_output_level(PIN_PA28,true);//heater

	port_pin_set_output_level(PIN_PA11,true);
	port_pin_set_output_level(PIN_PA09,true);
	port_pin_set_output_level(PIN_PA15,true);
	port_pin_set_output_level(PIN_PA17,true);
	port_pin_set_output_level(PIN_PA19,true);
	port_pin_set_output_level(PIN_PA27,true);
    //Setup USB Serial
    stdio_usb_init();
    stdio_usb_enable();
}