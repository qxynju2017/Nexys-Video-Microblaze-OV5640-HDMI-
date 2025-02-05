/*
 * I2C_8bit.c
 *
 *  Created on: 2017��8��23��
 *      Author: Administrator
 */

#include "I2C_8bit.h"

#define DeviceId	XPAR_AXI_IIC_0_DEVICE_ID
#define Config_done	0xff



XIic	Iic;
XIntc	Intc;

u8  BusNotBusy;
u16 TransmitComplete;
int tx_success = 0;

struct config_table	ov5640_config_table[]={
	{0x3103,0x11},// system clock from pad,0x bit[1]
	{0x3008,0x82},// software reset,0x bit[7]// delay 5ms

	{0x3008,0x42},// software power down,0x bit[6]
		 //usleep(5000},
	{0x3103,0x03},// system clock from PLL,0x bit[1]
	{0x3017,0xff},// FREX,0x Vsync,0x HREF,0x PCLK,0x D[9:6] output enable
	{0x3018,0xff},// D[5:0],0x GPIO[1:0] output enable
	{0x3034,0x1A},// MIPI 10-bit
	{0x3037,0x13},// PLL root divider,0x bit[4],0x PLL pre-divider,0x bit[3:0]
	{0x3108,0x01},// PCLK root divider,0x bit[5:4],0x SCLK2x root divider,0x bit[3:2] // SCLK root divider,0x bit[1:0]
	{0x3630,0x36},
	{0x3631,0x0e},
	{0x3632,0xe2},
	{0x3633,0x12},
	{0x3621,0xe0},
	{0x3704,0xa0},
	{0x3703,0x5a},
	{0x3715,0x78},
	{0x3717,0x01},
	{0x370b,0x60},
	{0x3705,0x1a},
	{0x3905,0x02},
	{0x3906,0x10},
	{0x3901,0x0a},
	{0x3731,0x12},
	{0x3600,0x08},// VCM control
	{0x3601,0x33},// VCM control
	{0x302d,0x60},// system control
	{0x3620,0x52},
	{0x371b,0x20},
	{0x471c,0x50},
	{0x3a13,0x43},// pre-gain = 1.047x
	{0x3a18,0x00},// gain ceiling
	{0x3a19,0xf8},// gain ceiling = 15.5x
	{0x3635,0x13},
	{0x3636,0x03},
	{0x3634,0x40},
	{0x3622,0x01}, // 50/60Hz detection     50/60Hz
	{0x3c01,0x34},// Band auto,0x bit[7]
	{0x3c04,0x28},// threshold low sum
	{0x3c05,0x98},// threshold high sum
	{0x3c06,0x00},// light meter 1 threshold[15:8]
	{0x3c07,0x08},// light meter 1 threshold[7:0]
	{0x3c08,0x00},// light meter 2 threshold[15:8]
	{0x3c09,0x1c},// light meter 2 threshold[7:0]
	{0x3c0a,0x9c},// sample number[15:8]
	{0x3c0b,0x40},// sample number[7:0]
	{0x3810,0x00},// Timing Hoffset[11:8]
	{0x3811,0x10},// Timing Hoffset[7:0]
	{0x3812,0x00},// Timing Voffset[10:8]
	{0x3708,0x64},
	{0x4001,0x02},// BLC start from line 2
	{0x4005,0x1a},// BLC always update
	{0x3000,0x00},// enable blocks
	{0x3004,0xff},// enable clocks
	{0x300e,0x58},// MIPI power down,0x DVP enable
	{0x302e,0x00},
	{0x4300,0x61},// RGB565
	{0x501f,0x01},// ISP RGB
	{0x440e,0x00},
	{0x5000,0xa7}, // Lenc on,0x raw gamma on,0x BPC on,0x WPC on,0x CIP on // AEC target
	{0x3a0f,0x30},// stable range in high
	{0x3a10,0x28},// stable range in low
	{0x3a1b,0x30},// stable range out high
	{0x3a1e,0x26},// stable range out low
	{0x3a11,0x60},// fast zone high
	{0x3a1f,0x14},// fast zone low// Lens correction for
	{0x5800,0x23},
	{0x5801,0x14},
	{0x5802,0x0f},
	{0x5803,0x0f},
	{0x5804,0x12},
	{0x5805,0x26},
	{0x5806,0x0c},
	{0x5807,0x08},
	{0x5808,0x05},
	{0x5809,0x05},
	{0x580a,0x08},
	{0x580b,0x0d},
	{0x580c,0x08},
	{0x580d,0x03},
	{0x580e,0x00},
	{0x580f,0x00},
	{0x5810,0x03},
	{0x5811,0x09},
	{0x5812,0x07},
	{0x5813,0x03},
	{0x5814,0x00},
	{0x5815,0x01},
	{0x5816,0x03},
	{0x5817,0x08},
	{0x5818,0x0d},
	{0x5819,0x08},
	{0x581a,0x05},
	{0x581b,0x06},
	{0x581c,0x08},
	{0x581d,0x0e},
	{0x581e,0x29},
	{0x581f,0x17},
	{0x5820,0x11},
	{0x5821,0x11},
	{0x5822,0x15},
	{0x5823,0x28},
	{0x5824,0x46},
	{0x5825,0x26},
	{0x5826,0x08},
	{0x5827,0x26},
	{0x5828,0x64},
	{0x5829,0x26},
	{0x582a,0x24},
	{0x582b,0x22},
	{0x582c,0x24},
	{0x582d,0x24},
	{0x582e,0x06},
	{0x582f,0x22},
	{0x5830,0x40},
	{0x5831,0x42},
	{0x5832,0x24},
	{0x5833,0x26},
	{0x5834,0x24},
	{0x5835,0x22},
	{0x5836,0x22},
	{0x5837,0x26},
	{0x5838,0x44},
	{0x5839,0x24},
	{0x583a,0x26},
	{0x583b,0x28},
	{0x583c,0x42},
	{0x583d,0xce},// lenc BR offset // AWB
	{0x5180,0xff},// AWB B block
	{0x5181,0xf2},// AWB control
	{0x5182,0x00},// [7:4] max local counter,0x [3:0] max fast counter
	{0x5183,0x14},// AWB advanced
	{0x5184,0x25},
	{0x5185,0x24},
	{0x5186,0x09},
	{0x5187,0x09},
	{0x5188,0x09},
	{0x5189,0x75},
	{0x518a,0x54},
	{0x518b,0xe0},
	{0x518c,0xb2},
	{0x518d,0x42},
	{0x518e,0x3d},
	{0x518f,0x56},
	{0x5190,0x46},
	{0x5191,0xf8},// AWB top limit
	{0x5192,0x04},// AWB bottom limit
	{0x5193,0x70},// red limit
	{0x5194,0xf0},// green limit
	{0x5195,0xf0},// blue limit
	{0x5196,0x03},// AWB control
	{0x5197,0x01},// local limit
	{0x5198,0x04},
	{0x5199,0x12},
	{0x519a,0x04},
	{0x519b,0x00},
	{0x519c,0x06},
	{0x519d,0x82},
	{0x519e,0x38},// AWB control // Gamma
	{0x5480,0x01},// Gamma bias plus on,0x bit[0]
	{0x5481,0x08},
	{0x5482,0x14},
	{0x5483,0x28},
	{0x5484,0x51},
	{0x5485,0x65},
	{0x5486,0x71},
	{0x5487,0x7d},
	{0x5488,0x87},
	{0x5489,0x91},
	{0x548a,0x9a},
	{0x548b,0xaa},
	{0x548c,0xb8},
	{0x548d,0xcd},
	{0x548e,0xdd},
	{0x548f,0xea},
	{0x5490,0x1d},// color matrix
	{0x5381,0x1e},// CMX1 for Y
	{0x5382,0x5b},// CMX2 for Y
	{0x5383,0x08},// CMX3 for Y
	{0x5384,0x0a},// CMX4 for U
	{0x5385,0x7e},// CMX5 for U
	{0x5386,0x88},// CMX6 for U
	{0x5387,0x7c},// CMX7 for V
	{0x5388,0x6c},// CMX8 for V
	{0x5389,0x10},// CMX9 for V
	{0x538a,0x01},// sign[9]
	{0x538b,0x98}, // sign[8:1] // UV adjust   UV
	{0x5580,0x06},// saturation on,0x bit[1]
	{0x5583,0x40},
	{0x5584,0x10},
	{0x5589,0x10},
	{0x558a,0x00},
	{0x558b,0xf8},
	{0x501d,0x40},// enable manual offset of contrast// CIP
	{0x5300,0x08},// CIP sharpen MT threshold 1
	{0x5301,0x30},// CIP sharpen MT threshold 2
	{0x5302,0x10},// CIP sharpen MT offset 1
	{0x5303,0x00},// CIP sharpen MT offset 2
	{0x5304,0x08},// CIP DNS threshold 1
	{0x5305,0x30},// CIP DNS threshold 2
	{0x5306,0x08},// CIP DNS offset 1
	{0x5307,0x16},// CIP DNS offset 2
	{0x5309,0x08},// CIP sharpen TH threshold 1
	{0x530a,0x30},// CIP sharpen TH threshold 2
	{0x530b,0x04},// CIP sharpen TH offset 1
	{0x530c,0x06},// CIP sharpen TH offset 2
	{0x5025,0x00},
	{0x3008,0x02}, // wake up from standby,0x bit[6]

	{0x3035, 0x41}, // PLL
	{0x3036, 0x69}, // PLL
	{0x3c07, 0x07}, // lightmeter 1 threshold[7:0]
	{0x3820, 0x40}, // flip
	{0x3821, 0x01}, // mirror
	{0x3814, 0x31}, // timing X inc
	{0x3815, 0x31}, // timing Y inc
	{0x3800, 0x00}, // HS
	{0x3801, 0x00}, // HS
	{0x3802, 0x00}, // VS
	{0x3803, 0xfa}, // VS
	{0x3804, 0x0a}, // HW (HE)
	{0x3805, 0x3f}, // HW (HE)
	{0x3806, 0x06}, // VH (VE)
	{0x3807, 0xa9}, // VH (VE)
	{0x3808, 0x05}, // DVPHO
	{0x3809, 0x00}, // DVPHO
	{0x380a, 0x02}, // DVPVO
	{0x380b, 0xd0}, // DVPVO
	{0x380c, 0x07}, // HTS
	{0x380d, 0x64}, // HTS
	{0x380e, 0x02}, // VTS
	{0x380f, 0xe4}, // VTS
	{0x3813, 0x04}, // timing V offset
	{0x3618, 0x00},
	{0x3612, 0x29},
	{0x3709, 0x52},
	{0x370c, 0x03},
	{0x3a02, 0x02}, // 60Hz max exposure
	{0x3a03, 0xe0}, // 60Hz max exposure
	{0x3a14, 0x02}, // 50Hz max exposure
	{0x3a15, 0xe0}, // 50Hz max exposure
	{0x4004, 0x02}, // BLC line number
	{0x3002, 0x1c}, // reset JFIFO, SFIFO, JPG
	{0x3006, 0xc3}, // disable clock of JPEG2x, JPEG
	{0x4713, 0x03}, // JPEG mode 3
	{0x4407, 0x04}, // Quantization scale
	{0x460b, 0x37},
	{0x460c, 0x20},
	{0x4837, 0x16}, // MIPI global timing
	{0x3824, 0x04}, // PCLK manual divider
	{0x5001, 0x83}, // SDE on, CMX on, AWB on
	{0x3503, 0x00}, // AEC/AGC on
	{0x3b00,0x83},              //STROBE CTRL: strobe request ON,0x Strobe mode: LED3
	{0x3b00,0x00},             //STROBE CTRL: strobe request OFF
	{Config_done,0x00}
};

int iic_init(void)
{
	int Status;
	XIic_Config *Config;

	/*
	 * Include the multi master functionality.
	 */
	XIic_MultiMasterInclude();

	/*
	 * Initialize the IIC driver so that it's ready to use
	 * Look up the configuration in the config table,
	 * then initialize it.
	 */
	Config = XIic_LookupConfig(DeviceId);
	if (NULL == Config) {
		return XST_FAILURE;
	}

	Status = XIic_CfgInitialize(&Iic, Config, Config->BaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Set the Transmit and status handlers.
	 */
	XIic_SetSendHandler(&Iic, &Iic,
				(XIic_Handler) SendHandler);
	XIic_SetStatusHandler(&Iic, &Iic,
				  (XIic_StatusHandler) StatusHandler);

	/*
	 * Set the address of the slave.
	 */
	Status = XIic_SetAddress(&Iic, XII_ADDR_TO_SEND_TYPE,
				 OV_CAM);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	return XST_SUCCESS;

}

int I2C_write(XIic *InstancePtr,u16 addr,u8 data)
{
	u8 buf[3];
	buf[0] = addr>>8;
	buf[1] = addr;
	buf[2] = data;
	int Status = XIic_MasterSend(InstancePtr,buf,3);
	xil_printf("Write Status is %d",Status);

	return XST_SUCCESS;
}

int I2C_SetupInterruptSystem(XIntc *InterruptController,XIic *InstancePtr)
{
	int Status;

	/*
	 * Initialize the interrupt controller driver so that it is ready to
	 * use.
	 */
	Status = XIntc_Initialize(InterruptController, INTC_DEV_ID);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	/*
	 * Connect the device driver handler that will be called when an
	 * interrupt for the device occurs, the handler defined above performs
	 * the specific interrupt processing for the device.
	 */
	Status = XIntc_Connect(InterruptController, IIC_INTR_ID,
				   (XInterruptHandler) XIic_InterruptHandler,
				   InstancePtr);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	Status = XIntc_Start(InterruptController, XIN_REAL_MODE);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Enable the interrupts for the IIC device.
	 */
	XIntc_Enable(InterruptController, IIC_INTR_ID);

	/*
	 * Initialize the exception table.
	 */
	Xil_ExceptionInit();

	/*
	 * Register the interrupt controller handler with the exception table.
	 */
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
				(Xil_ExceptionHandler)XIntc_InterruptHandler,
				InterruptController);

	/*
	 * Enable exceptions.
	 */
	Xil_ExceptionEnable();

	return XST_SUCCESS;

}

/*****************************************************************************/
/**
* The Send handler is called asynchronously from an interrupt context and
* indicates that data in the specified buffer has been sent.
*
* @param	InstancePtr is a pointer to the IIC driver instance for which
*		the handler is being called for.
*
* @return	None.
*
* @note		None.
*
******************************************************************************/
static void SendHandler(XIic *InstancePtr)
{

	TransmitComplete = 0;
	tx_success ++;
}

/*****************************************************************************/
/**
* The Status handler is called asynchronously from an interrupt context and
* indicates the events that have occured.
*
* @param	InstancePtr is a pointer to the IIC driver instance for which
* 		the handler is being called for.
* @param	Event indicates the condition that has occurred.
*
* @return	None.
*
* @note		None.
*
******************************************************************************/
static void StatusHandler(XIic *InstancePtr, int Event)
{
	if (Event == XII_ARB_LOST_EVENT) {
		XIic_WriteReg(InstancePtr->BaseAddress, XIIC_CR_REG_OFFSET,
				   XIIC_CR_ENABLE_DEVICE_MASK);
		XIic_WriteIisr(InstancePtr->BaseAddress, XIIC_INTR_BNB_MASK);
		XIic_WriteIier(InstancePtr->BaseAddress, XIIC_INTR_BNB_MASK);
		InstancePtr->BNBOnly = TRUE;
	}
	else if (Event == XII_BUS_NOT_BUSY_EVENT) {
		XIic_WriteReg(InstancePtr->BaseAddress, XIIC_CR_REG_OFFSET,
				   0x0);
		BusNotBusy = 1;
	}
}

int I2C_config_init(void)
{
	int Status;
	int i=0;

	TransmitComplete = 1;

	Status	= iic_init();
	if(Status != XST_SUCCESS)
	{
		xil_printf("I2C init Failed!");
	}

	Status = I2C_SetupInterruptSystem(&Intc,&Iic);
	if(Status != XST_SUCCESS){
		xil_printf("Setup Interrupt Failure!");
		return XST_FAILURE;
	}

	//if(BusNotBusy){
		/*
		 * Start the IIC device.
		 */
		Status = XIic_Start(&Iic);
		if (Status != XST_SUCCESS) {
			return XST_FAILURE;
		}

		while(ov5640_config_table[i].addr != Config_done)
		{
			I2C_write(&Iic,ov5640_config_table[i].addr,ov5640_config_table[i].data);
			if(!XIic_IsIicBusy(&Iic)){
				i++;
			}
		}
		xil_printf("IIC have been configed %d regesiter!",tx_success);
//	}


	return XST_SUCCESS;
}


