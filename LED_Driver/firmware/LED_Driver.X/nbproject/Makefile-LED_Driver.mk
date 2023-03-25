#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-LED_Driver.mk)" "nbproject/Makefile-local-LED_Driver.mk"
include nbproject/Makefile-local-LED_Driver.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=LED_Driver
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/LED_Driver.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/LED_Driver.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/LED_Driver/peripheral/clk/plib_clk.c ../src/config/LED_Driver/peripheral/evic/plib_evic.c ../src/config/LED_Driver/peripheral/gpio/plib_gpio.c ../src/config/LED_Driver/peripheral/uart/plib_uart6.c ../src/config/LED_Driver/stdio/xc32_monitor.c ../src/config/LED_Driver/initialization.c ../src/config/LED_Driver/interrupts.c ../src/config/LED_Driver/exceptions.c ../src/main.c ../src/config/LED_Driver/peripheral/tmr/plib_tmr2.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1654935695/plib_clk.o ${OBJECTDIR}/_ext/236531778/plib_evic.o ${OBJECTDIR}/_ext/236477950/plib_gpio.o ${OBJECTDIR}/_ext/236075007/plib_uart6.o ${OBJECTDIR}/_ext/634778633/xc32_monitor.o ${OBJECTDIR}/_ext/889354353/initialization.o ${OBJECTDIR}/_ext/889354353/interrupts.o ${OBJECTDIR}/_ext/889354353/exceptions.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1654952070/plib_tmr2.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1654935695/plib_clk.o.d ${OBJECTDIR}/_ext/236531778/plib_evic.o.d ${OBJECTDIR}/_ext/236477950/plib_gpio.o.d ${OBJECTDIR}/_ext/236075007/plib_uart6.o.d ${OBJECTDIR}/_ext/634778633/xc32_monitor.o.d ${OBJECTDIR}/_ext/889354353/initialization.o.d ${OBJECTDIR}/_ext/889354353/interrupts.o.d ${OBJECTDIR}/_ext/889354353/exceptions.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1654952070/plib_tmr2.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1654935695/plib_clk.o ${OBJECTDIR}/_ext/236531778/plib_evic.o ${OBJECTDIR}/_ext/236477950/plib_gpio.o ${OBJECTDIR}/_ext/236075007/plib_uart6.o ${OBJECTDIR}/_ext/634778633/xc32_monitor.o ${OBJECTDIR}/_ext/889354353/initialization.o ${OBJECTDIR}/_ext/889354353/interrupts.o ${OBJECTDIR}/_ext/889354353/exceptions.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1654952070/plib_tmr2.o

# Source Files
SOURCEFILES=../src/config/LED_Driver/peripheral/clk/plib_clk.c ../src/config/LED_Driver/peripheral/evic/plib_evic.c ../src/config/LED_Driver/peripheral/gpio/plib_gpio.c ../src/config/LED_Driver/peripheral/uart/plib_uart6.c ../src/config/LED_Driver/stdio/xc32_monitor.c ../src/config/LED_Driver/initialization.c ../src/config/LED_Driver/interrupts.c ../src/config/LED_Driver/exceptions.c ../src/main.c ../src/config/LED_Driver/peripheral/tmr/plib_tmr2.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-LED_Driver.mk ${DISTDIR}/LED_Driver.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ2048EFM144
MP_LINKER_FILE_OPTION=,--script="../src/config/LED_Driver/p32MZ2048EFM144.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1654935695/plib_clk.o: ../src/config/LED_Driver/peripheral/clk/plib_clk.c  .generated_files/flags/LED_Driver/cbddca4282304c9cbda2137d960c8194461f9a7b .generated_files/flags/LED_Driver/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1654935695" 
	@${RM} ${OBJECTDIR}/_ext/1654935695/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1654935695/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/LED_Driver" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1654935695/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1654935695/plib_clk.o ../src/config/LED_Driver/peripheral/clk/plib_clk.c    -DXPRJ_LED_Driver=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/236531778/plib_evic.o: ../src/config/LED_Driver/peripheral/evic/plib_evic.c  .generated_files/flags/LED_Driver/816e51b8fe1a955b9ea37ad0cc5acefd3c8e9b4c .generated_files/flags/LED_Driver/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/236531778" 
	@${RM} ${OBJECTDIR}/_ext/236531778/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/236531778/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/LED_Driver" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/236531778/plib_evic.o.d" -o ${OBJECTDIR}/_ext/236531778/plib_evic.o ../src/config/LED_Driver/peripheral/evic/plib_evic.c    -DXPRJ_LED_Driver=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/236477950/plib_gpio.o: ../src/config/LED_Driver/peripheral/gpio/plib_gpio.c  .generated_files/flags/LED_Driver/3da6a7a5238649a60b5cb1424ad3a1cd1f5d1696 .generated_files/flags/LED_Driver/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/236477950" 
	@${RM} ${OBJECTDIR}/_ext/236477950/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/236477950/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/LED_Driver" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/236477950/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/236477950/plib_gpio.o ../src/config/LED_Driver/peripheral/gpio/plib_gpio.c    -DXPRJ_LED_Driver=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/236075007/plib_uart6.o: ../src/config/LED_Driver/peripheral/uart/plib_uart6.c  .generated_files/flags/LED_Driver/a3379276f4f9ba38fe820b2e86921e076915cfa7 .generated_files/flags/LED_Driver/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/236075007" 
	@${RM} ${OBJECTDIR}/_ext/236075007/plib_uart6.o.d 
	@${RM} ${OBJECTDIR}/_ext/236075007/plib_uart6.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/LED_Driver" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/236075007/plib_uart6.o.d" -o ${OBJECTDIR}/_ext/236075007/plib_uart6.o ../src/config/LED_Driver/peripheral/uart/plib_uart6.c    -DXPRJ_LED_Driver=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/634778633/xc32_monitor.o: ../src/config/LED_Driver/stdio/xc32_monitor.c  .generated_files/flags/LED_Driver/44eb81ebdd47afb800464b492b9ef3cf6d0c6ca5 .generated_files/flags/LED_Driver/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/634778633" 
	@${RM} ${OBJECTDIR}/_ext/634778633/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/634778633/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/LED_Driver" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/634778633/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/634778633/xc32_monitor.o ../src/config/LED_Driver/stdio/xc32_monitor.c    -DXPRJ_LED_Driver=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/889354353/initialization.o: ../src/config/LED_Driver/initialization.c  .generated_files/flags/LED_Driver/1eb77d14f34abeecb750ffe6b7ad3732351f012a .generated_files/flags/LED_Driver/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/889354353" 
	@${RM} ${OBJECTDIR}/_ext/889354353/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/889354353/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/LED_Driver" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/889354353/initialization.o.d" -o ${OBJECTDIR}/_ext/889354353/initialization.o ../src/config/LED_Driver/initialization.c    -DXPRJ_LED_Driver=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/889354353/interrupts.o: ../src/config/LED_Driver/interrupts.c  .generated_files/flags/LED_Driver/1d95061d9ce26b6cebb0a7c2ac8ebce050cbf5a0 .generated_files/flags/LED_Driver/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/889354353" 
	@${RM} ${OBJECTDIR}/_ext/889354353/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/889354353/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/LED_Driver" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/889354353/interrupts.o.d" -o ${OBJECTDIR}/_ext/889354353/interrupts.o ../src/config/LED_Driver/interrupts.c    -DXPRJ_LED_Driver=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/889354353/exceptions.o: ../src/config/LED_Driver/exceptions.c  .generated_files/flags/LED_Driver/f79ff19055118fc740a5263765b5bc5c24d1a8f1 .generated_files/flags/LED_Driver/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/889354353" 
	@${RM} ${OBJECTDIR}/_ext/889354353/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/889354353/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/LED_Driver" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/889354353/exceptions.o.d" -o ${OBJECTDIR}/_ext/889354353/exceptions.o ../src/config/LED_Driver/exceptions.c    -DXPRJ_LED_Driver=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/LED_Driver/451473bdc7d8ec8b7fec5333aa9c49a964463d2 .generated_files/flags/LED_Driver/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/LED_Driver" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_LED_Driver=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1654952070/plib_tmr2.o: ../src/config/LED_Driver/peripheral/tmr/plib_tmr2.c  .generated_files/flags/LED_Driver/8cbdb997f968ecd769f6b3b8e1cf3324104dd14 .generated_files/flags/LED_Driver/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1654952070" 
	@${RM} ${OBJECTDIR}/_ext/1654952070/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1654952070/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/LED_Driver" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1654952070/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/1654952070/plib_tmr2.o ../src/config/LED_Driver/peripheral/tmr/plib_tmr2.c    -DXPRJ_LED_Driver=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1654935695/plib_clk.o: ../src/config/LED_Driver/peripheral/clk/plib_clk.c  .generated_files/flags/LED_Driver/5c928032d1da266bbff318af18a48459e820b8ad .generated_files/flags/LED_Driver/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1654935695" 
	@${RM} ${OBJECTDIR}/_ext/1654935695/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1654935695/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/LED_Driver" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1654935695/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1654935695/plib_clk.o ../src/config/LED_Driver/peripheral/clk/plib_clk.c    -DXPRJ_LED_Driver=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/236531778/plib_evic.o: ../src/config/LED_Driver/peripheral/evic/plib_evic.c  .generated_files/flags/LED_Driver/f5f66a6f30033cee92f7eab1e8cf65a89a101fdb .generated_files/flags/LED_Driver/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/236531778" 
	@${RM} ${OBJECTDIR}/_ext/236531778/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/236531778/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/LED_Driver" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/236531778/plib_evic.o.d" -o ${OBJECTDIR}/_ext/236531778/plib_evic.o ../src/config/LED_Driver/peripheral/evic/plib_evic.c    -DXPRJ_LED_Driver=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/236477950/plib_gpio.o: ../src/config/LED_Driver/peripheral/gpio/plib_gpio.c  .generated_files/flags/LED_Driver/25f28ddc479bb78c5dda0808781ab49c494a04b3 .generated_files/flags/LED_Driver/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/236477950" 
	@${RM} ${OBJECTDIR}/_ext/236477950/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/236477950/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/LED_Driver" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/236477950/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/236477950/plib_gpio.o ../src/config/LED_Driver/peripheral/gpio/plib_gpio.c    -DXPRJ_LED_Driver=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/236075007/plib_uart6.o: ../src/config/LED_Driver/peripheral/uart/plib_uart6.c  .generated_files/flags/LED_Driver/cfe226ecd6e6415611351b46a4b4fa8d29bf5639 .generated_files/flags/LED_Driver/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/236075007" 
	@${RM} ${OBJECTDIR}/_ext/236075007/plib_uart6.o.d 
	@${RM} ${OBJECTDIR}/_ext/236075007/plib_uart6.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/LED_Driver" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/236075007/plib_uart6.o.d" -o ${OBJECTDIR}/_ext/236075007/plib_uart6.o ../src/config/LED_Driver/peripheral/uart/plib_uart6.c    -DXPRJ_LED_Driver=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/634778633/xc32_monitor.o: ../src/config/LED_Driver/stdio/xc32_monitor.c  .generated_files/flags/LED_Driver/1b5bedb64fd469686eed67e62f646752f3787301 .generated_files/flags/LED_Driver/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/634778633" 
	@${RM} ${OBJECTDIR}/_ext/634778633/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/634778633/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/LED_Driver" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/634778633/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/634778633/xc32_monitor.o ../src/config/LED_Driver/stdio/xc32_monitor.c    -DXPRJ_LED_Driver=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/889354353/initialization.o: ../src/config/LED_Driver/initialization.c  .generated_files/flags/LED_Driver/bcd45b6b4b01842a302054deb4454f2a2167dcb6 .generated_files/flags/LED_Driver/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/889354353" 
	@${RM} ${OBJECTDIR}/_ext/889354353/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/889354353/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/LED_Driver" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/889354353/initialization.o.d" -o ${OBJECTDIR}/_ext/889354353/initialization.o ../src/config/LED_Driver/initialization.c    -DXPRJ_LED_Driver=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/889354353/interrupts.o: ../src/config/LED_Driver/interrupts.c  .generated_files/flags/LED_Driver/d55af62e5a4f73b6fa00ca5f711baf7ee3388280 .generated_files/flags/LED_Driver/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/889354353" 
	@${RM} ${OBJECTDIR}/_ext/889354353/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/889354353/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/LED_Driver" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/889354353/interrupts.o.d" -o ${OBJECTDIR}/_ext/889354353/interrupts.o ../src/config/LED_Driver/interrupts.c    -DXPRJ_LED_Driver=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/889354353/exceptions.o: ../src/config/LED_Driver/exceptions.c  .generated_files/flags/LED_Driver/f48a36dfeb712255f1415883d18b0decc2a12571 .generated_files/flags/LED_Driver/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/889354353" 
	@${RM} ${OBJECTDIR}/_ext/889354353/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/889354353/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/LED_Driver" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/889354353/exceptions.o.d" -o ${OBJECTDIR}/_ext/889354353/exceptions.o ../src/config/LED_Driver/exceptions.c    -DXPRJ_LED_Driver=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/LED_Driver/950bdfca3337583fdbcc4f9e0e613600e41d8825 .generated_files/flags/LED_Driver/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/LED_Driver" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_LED_Driver=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1654952070/plib_tmr2.o: ../src/config/LED_Driver/peripheral/tmr/plib_tmr2.c  .generated_files/flags/LED_Driver/2d479e44740c99c5a480e5b16d56b67e14421388 .generated_files/flags/LED_Driver/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1654952070" 
	@${RM} ${OBJECTDIR}/_ext/1654952070/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1654952070/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/LED_Driver" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1654952070/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/1654952070/plib_tmr2.o ../src/config/LED_Driver/peripheral/tmr/plib_tmr2.c    -DXPRJ_LED_Driver=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/LED_Driver.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/LED_Driver/p32MZ2048EFM144.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/LED_Driver.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_LED_Driver=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x0:0x37F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/LED_Driver.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/LED_Driver/p32MZ2048EFM144.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/LED_Driver.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_LED_Driver=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}/xc32-bin2hex ${DISTDIR}/LED_Driver.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
