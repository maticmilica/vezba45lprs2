################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
ELFSIZE += \
my_peripheral_test.elf.size \

ELFCHECK += \
my_peripheral_test.elf.elfcheck \


# All Target
all: my_peripheral_test.elf secondary-outputs

# Tool invocations
my_peripheral_test.elf: $(OBJS) ../src/lscript.ld $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: MicroBlaze gcc linker'
	mb-gcc -Wl,-T -Wl,../src/lscript.ld -L../../my_peripheral_test_bsp/microblaze_0/lib -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mcpu=v8.50.b -mno-xl-soft-mul -Wl,--no-relax -Wl,--gc-sections -o "my_peripheral_test.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

my_peripheral_test.elf.size: my_peripheral_test.elf
	@echo 'Invoking: MicroBlaze Print Size'
	mb-size my_peripheral_test.elf  |tee "my_peripheral_test.elf.size"
	@echo 'Finished building: $@'
	@echo ' '

my_peripheral_test.elf.elfcheck: my_peripheral_test.elf
	@echo 'Invoking: Xilinx ELF Check'
	elfcheck my_peripheral_test.elf -hw ../../vezba7_hw_platform/system.xml -pe microblaze_0  |tee "my_peripheral_test.elf.elfcheck"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(C_DEPS)$(EXECUTABLES)$(ELFSIZE)$(ELFCHECK)$(S_UPPER_DEPS) my_peripheral_test.elf
	-@echo ' '

secondary-outputs: $(ELFSIZE) $(ELFCHECK)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
