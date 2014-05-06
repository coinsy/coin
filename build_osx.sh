#!/bin/bash

cd build/Debug

chmod -R +w Coinsy-Qt.app/Contents/Frameworks
install_name_tool -id @executable_path/../Frameworks/libminiupnpc.10.dylib Coinsy-Qt.app/Contents/Frameworks/libminiupnpc.10.dylib
install_name_tool -id @executable_path/../Frameworks/libssl.1.0.0.dylib Coinsy-Qt.app/Contents/Frameworks/libssl.1.0.0.dylib
install_name_tool -id @executable_path/../Frameworks/libcrypto.1.0.0.dylib Coinsy-Qt.app/Contents/Frameworks/libcrypto.1.0.0.dylib
install_name_tool -id @executable_path/../Frameworks/libdb_cxx-4.8.dylib Coinsy-Qt.app/Contents/Frameworks/libdb_cxx-4.8.dylib
install_name_tool -id @executable_path/../Frameworks/libboost_system-mt.dylib Coinsy-Qt.app/Contents/Frameworks/libboost_system-mt.dylib
install_name_tool -id @executable_path/../Frameworks/libboost_filesystem-mt.dylib Coinsy-Qt.app/Contents/Frameworks/libboost_filesystem-mt.dylib
install_name_tool -id @executable_path/../Frameworks/libboost_program_options-mt.dylib Coinsy-Qt.app/Contents/Frameworks/libboost_program_options-mt.dylib
install_name_tool -id @executable_path/../Frameworks/libboost_thread-mt.dylib Coinsy-Qt.app/Contents/Frameworks/libboost_thread-mt.dylib
install_name_tool -id @executable_path/../Frameworks/libboost_chrono-mt.dylib Coinsy-Qt.app/Contents/Frameworks/libboost_thread-mt.dylib

install_name_tool -change /opt/local/lib/libminiupnpc.10.dylib @executable_path/../Frameworks/libminiupnpc.10.dylib Coinsy-Qt.app/Contents/MacOs/Coinsy-Qt
install_name_tool -change /opt/local/lib/libssl.1.0.0.dylib @executable_path/../Frameworks/libssl.1.0.0.dylib Coinsy-Qt.app/Contents/MacOs/Coinsy-Qt
install_name_tool -change /opt/local/lib/libcrypto.1.0.0.dylib @executable_path/../Frameworks/libcrypto.1.0.0.dylib Coinsy-Qt.app/Contents/MacOs/Coinsy-Qt
install_name_tool -change /opt/local/lib/libcrypto.1.0.0.dylib @executable_path/../Frameworks/libcrypto.1.0.0.dylib Coinsy-Qt.app/Contents/Frameworks/libssl.1.0.0.dylib

install_name_tool -change /opt/local/lib/db48/libdb_cxx-4.8.dylib @executable_path/../Frameworks/libdb_cxx-4.8.dylib Coinsy-Qt.app/Contents/MacOs/Coinsy-Qt
install_name_tool -change /opt/local/lib/libboost_system-mt.dylib @executable_path/../Frameworks/libboost_system-mt.dylib Coinsy-Qt.app/Contents/MacOs/Coinsy-Qt
install_name_tool -change /opt/local/lib/libboost_system-mt.dylib @executable_path/../Frameworks/libboost_system-mt.dylib Coinsy-Qt.app/Contents/Frameworks/libboost_filesystem-mt.dylib
install_name_tool -change /opt/local/lib/libboost_system-mt.dylib @executable_path/../Frameworks/libboost_system-mt.dylib Coinsy-Qt.app/Contents/Frameworks/libboost_thread-mt.dylib
install_name_tool -change /opt/local/lib/libboost_filesystem-mt.dylib @executable_path/../Frameworks/libboost_filesystem-mt.dylib Coinsy-Qt.app/Contents/MacOs/Coinsy-Qt
install_name_tool -change /opt/local/lib/libboost_program_options-mt.dylib @executable_path/../Frameworks/libboost_program_options-mt.dylib Coinsy-Qt.app/Contents/MacOs/Coinsy-Qt
install_name_tool -change /opt/local/lib/libboost_thread-mt.dylib @executable_path/../Frameworks/libboost_thread-mt.dylib Coinsy-Qt.app/Contents/MacOs/Coinsy-Qt
install_name_tool -change /opt/local/lib/libboost_chrono-mt.dylib @executable_path/../Frameworks/libboost_thread-mt.dylib Coinsy-Qt.app/Contents/MacOs/Coinsy-Qt

install_name_tool -change /usr/local/Trolltech/Qt-4.8.6/lib/QtCore.framework/Versions/4/QtCore @executable_path/../Frameworks/QtCore.framework/Versions/4/QtCore Coinsy-Qt.app/Contents/MacOs/Coinsy-Qt
install_name_tool -change /usr/local/Trolltech/Qt-4.8.6/lib/QtGui.framework/Versions/4/QtGui @executable_path/../Frameworks/QtGui.framework/Versions/4/QtGui Coinsy-Qt.app/Contents/MacOs/Coinsy-Qt
install_name_tool -change /usr/local/Trolltech/Qt-4.8.6/lib/QtCore.framework/Versions/4/QtCore @executable_path/../Frameworks/QtCore.framework/Versions/4/QtCore Coinsy-Qt.app/Contents/Frameworks/QtGui.framework/Versions/4/QtGui

cd ../..