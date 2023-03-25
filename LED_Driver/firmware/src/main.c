/*******************************************************************************
  Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This file contains the "main" function for a project.

  Description:
    This file contains the "main" function for a project.  The
    "main" function calls the "SYS_Initialize" function to initialize the state
    machines of all modules in the system
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes
#include <stdio.h>
#include <string.h>
#include <proc/p32mz2048efm144.h>

#define PBCKL_HZ = 100000000000
void debug(int value);

int fib(int x) {
    if (x < 1) {
        return 1;
    }
    return fib(x-1) + fib (x-2);
}

volatile bool keep_waiting = true;

void __ISR(_TIMER_2_VECTOR, ipl1SRS) wait_handler(void) {
    IEC0bits.T2IE = 0;
    T2CONbits.ON = 0;
    keep_waiting = false;
    IFS0bits.T2IF = 0;
}

void init_timer(void) {
    PMD4bits.T2MD = 0;
    T2CONbits.ON = 0;
    T2CONbits.TCKPS0 = 0;
    T2CONbits.TCKPS1 = 0;
    T2CONbits.T32 = 0;
    T2CONbits.TCS = 0;
    TMR2 = 0;
    PR2 = 0xFFFF;
    IFS0bits.T2IF = 0;
    IEC0bits.T2IE = 1;
}

void vvait(int nanosec) {
    uint16_t period = nanosec / 655;
    PR2 = period;
    TMR2 = 0;
    IEC0bits.T2IE = 1;
    keep_waiting = true;
    T2CONbits.ON = 1;
    while (keep_waiting);
}

void wait(void) {
    vvait(200000);
}





void drive_leds(uint8_t value) {

    //OE_Set();
    
    uint8_t flag = 1;
    for (int i = 0; i < 8; ++i) {
        if (value & (flag << i)) {
            SDI_Set(); 
        }
        else {
            SDI_Clear();
        }
        wait();
        CLK_Set();
        wait();
        CLK_Clear();
        wait();
    }
    LE_Set();
    wait();
    wait();
    OE_Clear();
    wait();
}
// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

void debug(int value) {
    uint8_t character;
    character = (value == 0) ? '0' : '1';
    UART6_Write(&character, 1);
    while (UART6_WriteIsBusy());
}


void setAllLow(void) {
    SDI_Clear();
    CLK_Clear();
    LE_Clear();
    OE_Clear();
}

void toggleAll(void) {
    SDI_Toggle();
    CLK_Toggle();
    LE_Toggle();
    OE_Toggle();
}

int main ( void )
{
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    
    init_timer();
    
    SDI_OutputEnable();
    CLK_OutputEnable();
    LE_OutputEnable();
    SDO_InputEnable();
    OE_OutputEnable();
    
    SDI_Clear();
    CLK_Clear();
    
    LE_Clear();
    OE_Set();
    
    drive_leds(255);
    //LE_Set();
    //OE_Clear();

    
    char outBuffer[256];
    uint8_t buffer;
    //int count = 1;
    
    while ( true )
    {
        UART6_Read(&buffer, 1);
        while (UART6_ReadIsBusy());
        drive_leds(buffer);
        sprintf(outBuffer, "Updated LEDs to %d\r\n", buffer);
        UART6_Write(outBuffer, strlen(outBuffer));
        
        SYS_Tasks ( );
    }


    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/

