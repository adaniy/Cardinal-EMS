//////////////////////////////////////////////////////////////////////////
//                                                                      //
// EngineMonitor, a graphical gauge to monitor an aircraft's engine     //
// Copyright (C) 2012 Tobias Rad                                        //
//                                                                      //
// This program is free software: you can redistribute it and/or modify //
// it under the terms of the GNU General Public License as published by //
// the Free Software Foundation, either version 3 of the License, or    //
// (at your option) any later version.                                  //
//                                                                      //
// This program is distributed in the hope that it will be useful,      //
// but WITHOUT ANY WARRANTY; without even the implied warranty of       //
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the        //
// GNU General Public License for more details.                         //
//                                                                      //
// You should have received a copy of the GNU General Public License    //
// along with this program. If not, see <http://www.gnu.org/licenses/>. //
//                                                                      //
//////////////////////////////////////////////////////////////////////////

#ifndef NMEACONNECT_H
#define NMEACONNECT_H

#include <QtCore>
#include <QtGui/QColor>

//! NmeaConnect Class
/*!
 * This class interprets data from an NMEA source
*/

class NMEAconnect : public QThread
{
	Q_OBJECT
public:
	NMEAconnect(QObject *parent = 0);
	void run();
private:
	QSettings settings;
	void searchMessage(QString *data);
	static char calculateChecksum(QString data);
	void handleMessageRMB(QString data);
signals:
	void newTimeToDestination(double time);
	void userMessage(QString title, QString content, bool endApplication);
};

#endif // NMEACONNECT_H
