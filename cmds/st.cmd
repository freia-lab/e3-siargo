# This should be a test or example startup script

require siargo

epicsEnvSet ("IOCNAME", "ioc22-siargo")

# For flow meters connected via RS485
#iocshLoad ("$(siargo_DIR)siargo-ctrl.iocsh", "ASYN_PORT_NAME=PORT1,SERIAL_PORT=/dev/ttyUSB0,TOP=/opt/epics/autosave")
# For flowmeters connected via Ethernet (Modbus TCP)
iocshLoad ("$(siargo_DIR)siargo-eth-ctrl.iocsh", "ASYN_PORT_NAME=PORT1,IP_ADDR=192.168.10.38,TOP=/opt/epics/autosave")
iocshLoad ("$(siargo_DIR)siargo-eth-ctrl.iocsh", "ASYN_PORT_NAME=PORT2,IP_ADDR=130.238.22.3,TOP=/opt/epics/autosave")

iocshLoad ("$(siargo_DIR)siargo-meter.iocsh", "ASYN_PORT_NAME=PORT1,MODBUS_ADR=1,PREFIX=Env-Gas:,DEV_NAME=MFM-FREIA,ASLO=0.001,SCALE=1")
iocshLoad ("$(siargo_DIR)siargo-meter.iocsh", "ASYN_PORT_NAME=PORT2,MODBUS_ADR=1,PREFIX=Env-Gas:,DEV_NAME=MFM-Hus3,ASLO=0.00006,SCALE=0.001")
