#!/bin/bash

#interface = enp1s0

#if [ "$interface" -eq enp1s0 ]; then
#  echo "%{F#2495e7} %{F#ffffff}$(/usr/sbin/ifconfig enp1s0 | grep "inet " | awk '{print $2}')%{u-}"
#else
  #echo "%{F#2495e7} %{F#ffffff}$(/usr/sbin/ifconfig wlx00e02d0bb678 | grep "inet " | awk '{print $2}')%{u-}"
#fi

# Obtener la interfaz de red activa
interfaz_activa=$(ip route | grep default | awk '{print $5}')

# Mostrar la interfaz activa en pantalla
if [[ $interfaz_activa == "wlx00e02d0bb678" ]]; then
    echo "%{F#2495e7} %{F#ffffff}$(/usr/sbin/ifconfig wlx00e02d0bb678 | grep "inet " | awk '{print $2}')%{u-}"
else
    echo "%{F#2495e7} %{F#ffffff}$(/usr/sbin/ifconfig enp1s0 | grep "inet " | awk '{print $2}')%{u-}"
fi
