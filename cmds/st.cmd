# This should be a test or example startup script

require siargo

epicsEnvSet ("IOCNAME", "ioc22-siargo")

# For flow meters connected via RS485
#iocshLoad ("$(siargo_DIR)siargo-ctrl.iocsh", "ASYN_PORT_NAME=PORT1,SERIAL_PORT=/dev/ttyUSB0")
# For flowmeters connected via Ethernet (Modbus TCP)
iocshLoad ("$(siargo_DIR)siargo-eth-ctrl.iocsh", "ASYN_PORT_NAME=PORT1,IP_ADDR=192.168.10.38")

iocshLoad ("$(siargo_DIR)siargo-meter.iocsh", "ASYN_PORT_NAME=PORT1,MODBUS_ADR=1,PREFIX=Env-Gas:,DEV_NAME=MFM-FREIA")
