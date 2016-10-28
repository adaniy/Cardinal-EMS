########################################################################
#                                                                      #
# EngineMonitor, a graphical gauge to monitor an aircraft's engine     #
# Copyright (C) 2012 Tobias Rad                                        #
#                                                                      #
# This program is free software: you can redistribute it and/or modify #
# it under the terms of the GNU General Public License as published by #
# the Free Software Foundation, either version 3 of the License, or    #
# (at your option) any later version.                                  #
#                                                                      #
# This program is distributed in the hope that it will be useful,      #
# but WITHOUT ANY WARRANTY; without even the implied warranty of       #
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the        #
# GNU General Public License for more details.                         #
#                                                                      #
# You should have received a copy of the GNU General Public License    #
# along with this program. If not, see <http://www.gnu.org/licenses/>. #
#                                                                      #
########################################################################

QT       += core gui widgets svg

TARGET = EngineMonitor
TEMPLATE = app

DESTDIR = ../bin

RC_FILE = ./res/icon.rc

SOURCES += main.cpp\
        enginemonitor.cpp \
    bargraph.cpp \
    rpmindicator.cpp \
    cylinderheadtemperature.cpp \
    exhaustgastemperature.cpp \
    fuelmanagement.cpp \
    rdacconnect.cpp \
    nmeaconnect.cpp \
    manifoldpressure.cpp \
    PortListener.cpp

HEADERS  += enginemonitor.h \
    bargraph.h \
    rpmindicator.h \
    cylinderheadtemperature.h \
    exhaustgastemperature.h \
    fuelmanagement.h \
    rdacconnect.h \
    nmeaconnect.h \
    manifoldpressure.h \
    PortListener.h

RESOURCES += \
    res/res.qrc

include(../enginemon/qextserialport/qextserialport.pri)
