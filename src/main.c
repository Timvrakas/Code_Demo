#include <asf.h>
#include "sdio.h"

static TaskHandle_t xCreatedLedTask;


static void task_led(void * pvParameters){
	while(true){
		port_pin_toggle_output_level(PIN_PA23);
		vTaskDelay(250);
	}
}

static void task_sdio(void * pvParameters){
	sdio();
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
			printf("Free: %d\r\n",xPortGetFreeHeapSize());
			break;
			case 'c':
			printf("Starting SD card boi\r\n");
			printf("Free: %d\r\n",xPortGetFreeHeapSize());
			if(xTaskCreate(task_sdio,"SDIO",100,NULL,3,NULL) == errCOULD_NOT_ALLOCATE_REQUIRED_MEMORY){
				printf("Error");
			}
			break;
		}
	}
}


int main(void){
	system_init();
	xTaskCreate(task_led,"LED Task",64,NULL,2,&xCreatedLedTask); //target method, name, stack size, parameters, priority, handle
	xTaskCreate(task_usb_monitor,"Monitor Task",175,NULL,1,NULL); //target method, name, stack size, parameters, priority, handle
	vTaskStartScheduler();
}
