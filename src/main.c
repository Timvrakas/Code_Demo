#include <asf.h>

static TaskHandle_t xCreatedLedTask;


static void task_led(void * pvParameters){
	while(true){
		port_pin_toggle_output_level(PIN_PA23);
		vTaskDelay(250);
	}
}


static void task_usb_monitor(void * pvParameters){
	while(true){
		char ch = getchar();
		switch (ch) {
			case 'a':
			vTaskResume(xCreatedLedTask);
			printf("- LED blink task active.\r\n");
			break;
			case 's':
			vTaskSuspend(xCreatedLedTask);
			printf("- LED blink task suspended.\r\n");
			break;
		}
	}
}


int main(void){
	system_init();
	port_pin_set_output_level(PIN_PA28,true);
	xTaskCreate(task_led,"LED Task",100,NULL,2,&xCreatedLedTask); //target method, name, stack size, parameters, priority, handle
	xTaskCreate(task_usb_monitor,"Monitor Task",200,NULL,1,NULL);
	vTaskStartScheduler();
}
