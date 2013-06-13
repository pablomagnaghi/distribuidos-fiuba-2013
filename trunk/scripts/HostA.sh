#!/bin/bash

chmod 777 *

# Borro rutas e interfaces previas
./limpiarInterfaces.sh

# Levanto variables (direcciones de las redes, de broadcast, de los routers, máscaras, etc)
. ./ips.sh

# Configuro interfaces
interfaz=$(ifconfig | sed -n "s/^\(eth[0-9]*\).*/\1/p")

ifconfig $interfaz $IP_HOSTA netmask $MASC_J broadcast $BROAD_J

# Configuro tabla de ruteo
route add -net $IP_A netmask $MASC_A gw $IP_RVIRT_J dev $interfaz
route add -net $IP_B netmask $MASC_B gw $IP_RVIRT_J dev $interfaz
route add -net $IP_C netmask $MASC_C gw $IP_RVIRT_J dev $interfaz
route add -net $IP_D netmask $MASC_D gw $IP_RVIRT_J dev $interfaz
route add -net $IP_E netmask $MASC_E gw $IP_RVIRT_J dev $interfaz
route add -net $IP_F netmask $MASC_F gw $IP_RVIRT_J dev $interfaz
route add -net $IP_G netmask $MASC_G gw $IP_R12_J dev $interfaz
route add -net $IP_H netmask $MASC_H gw $IP_RVIRT_J dev $interfaz
route add -net $IP_I netmask $MASC_I gw $IP_R13_J dev $interfaz
route add -net $IP_K netmask $MASC_K gw $IP_R11_J dev $interfaz
route add -net $IP_L netmask $MASC_L gw $IP_R11_J dev $interfaz
route add -net $IP_M netmask $MASC_M gw $IP_R11_J dev $interfaz
route add -net $IP_N netmask $MASC_N gw $IP_R11_J dev $interfaz
route add -net $IP_O netmask $MASC_O gw $IP_R11_J dev $interfaz
route add -net $IP_P netmask $MASC_P gw $IP_RVIRT_J dev $interfaz
route add -net $IP_Q netmask $MASC_Q gw $IP_RVIRT_J dev $interfaz
route add -net $IP_R netmask $MASC_R gw $IP_R11_J dev $interfaz
route add -net $IP_S netmask $MASC_S gw $IP_RVIRT_J dev $interfaz
route add -net $IP_T netmask $MASC_T gw $IP_RVIRT_J dev $interfaz
route add -net $IP_U netmask $MASC_U gw $IP_RVIRT_J dev $interfaz

#Seteo DNS server

./setearDNSOtros.sh



