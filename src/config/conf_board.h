/**
 * \file conf_board.h
 * \brief User board configuration template
 *
 * This file defines pin interfaces for S6C Hardware.
 * 
 * Tim Vrakas
 * 9/12/2018
 */

#ifndef CONF_BOARD_H
#define CONF_BOARD_H

#define S6C_VER 10 //Version 1.0

#define LED_PIN PIN_PA28

//Si446x GPIO
#define GFSK_GPIO0  PIN_PA20
#define GFSK_GPIO1  PIN_PA21
#define GFSK_GPIO2  PIN_PB22
#define GFSK_GPIO3  PIN_PB23
#define GFSK_SDN    PIN_PB22
#define GFSK_IRQ    PIN_PA19

//Low=Busy, High=Clear To Send
#define GFSK_CTS    GFSK_GPIO1

//Si446x SPI Interface
#define GFSK_CS     PIN_PA13
#define GFSK_MOSI   PIN_PB10
#define GFSK_MISO   PIN_PA12
#define GFSK_SCK    PIN_PB11

//UART Interfaces
#define UART0_RX    PIN_PA10
#define UART0_TX    PIN_PA08
#define UART1_RX    PIN_PA18
#define UART1_TX    PIN_PA16

//GPIO Arming Interfaces
#define ARM0        PA07
#define ARM1        PA06
#define ARM2        PA05
#define ARM3        PA04

#endif // CONF_BOARD_H
