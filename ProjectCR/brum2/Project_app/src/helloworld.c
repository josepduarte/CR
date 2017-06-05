/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include <stdlib.h>
#include "platform.h"
#include "xparameters.h"
#include "xgpio.h"
#include "microblaze_sleep.h"

XGpio GPIO_0;
XGpio_Config GPIO_0_conf;

int main()
{
     //GPIO Configuration
	 GPIO_0_conf.BaseAddress 	= XPAR_AXI_GPIO_0_BASEADDR;
	 GPIO_0_conf.DeviceId 		= XPAR_GPIO_0_DEVICE_ID;
	 GPIO_0_conf.IsDual 		= XPAR_GPIO_0_IS_DUAL;

        //Initialize GPIO
     XGpio_CfgInitialize(&GPIO_0, &GPIO_0_conf, GPIO_0_conf.BaseAddress);

	init_platform();

	int array[]={452,390, 123, 5012,
				 345, 6544, 24525, 3546};

	//int i = 3;
	//xil_printf("addr = %d\n", i<< 22);

	for (int i = 0; i < 8; i++ ){
		int address = i << 22;
		//int addressMask = 0x01c00000;
		int writeEnable = 0b010000000000000000000000000; //0x02000000;
		int wordToWrite = array[i];
		xil_printf("addr1 = %d\n", address);
		XGpio_DiscreteWrite(&GPIO_0, 1, wordToWrite | writeEnable | address );

		xil_printf("addr = %d\ni = %d\n", address, wordToWrite | writeEnable | address);

	}

	/*
	for (int i =0 ; i<num_words; i++ ){

		word=word|array[i];
		word=word|0x2000000; //write enable
		word=0x03FFFFFF;
		XGpio_DiscreteWrite(&GPIO, 1, word);
		word=0x00000000;
	}
	word =0x00000000;
	XGpio_DiscreteWrite(&GPIO, 1, word);
	*/

    cleanup_platform();
    return 0;
}
