TEMPLATE = lib
TARGET = Adaptive
QT += qml quick
CONFIG += qt plugin

TARGET = $$qtLibraryTarget($$TARGET)
uri = Qtino.Adaptive

RESOURCES += \
    Adaptive.qrc

OTHER_FILES += \
    1.0/*.qml \
    qmldir

installPath = $$[QT_INSTALL_QML]/$$replace(uri, \\., /)

installTarget.target = $$installPath/.build
contains(QMAKE_HOST.os, "Darwin") {
    installTarget.commands += rm -rf $$installPath;
    installTarget.commands += mkdir $$installPath;
    installTarget.commands += cp $$PWD/Adaptive.qrc $$installPath;
    installTarget.commands += cp $$PWD/qmldir $$installPath;
    installTarget.commands += cp -r $$PWD/1.0 $$installPath
}
PRE_TARGETDEPS += $$installTarget.target
QMAKE_EXTRA_TARGETS += installTarget
