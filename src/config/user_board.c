#include <user_board.h>
#include <asf.h>

void system_board_init(void){

    //Setup LED Pin
    struct port_config p;
    port_get_config_defaults(&p);
    p.direction = PORT_PIN_DIR_OUTPUT;
    port_pin_set_config(PIN_PA23, &p);
    port_pin_set_config(PIN_PA28, &p);

    //Setup USB Serial
    stdio_usb_init();
    stdio_usb_enable();
}