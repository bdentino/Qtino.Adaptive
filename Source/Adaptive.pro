TEMPLATE = lib
TARGET = Adaptive
QT += qml quick
CONFIG += qt plugin

TARGET = $$qtLibraryTarget($$TARGET)
uri = Qtino.Adaptive

RESOURCES += \
    TinoUI.qrc

OTHER_FILES += \
    1.0/*.qml \
    qmldir

installPath = $$[QT_INSTALL_QML]/$$replace(uri, \\., /)

cleanTarget.files +=
cleanTarget.path += $$installPath
macx: cleanTarget.extra = rm -rf $$installPath
ios: cleanTarget.extra = rm -rf $$installPath

resources.files += \
    TinoUI.qrc \
    qmldir
resources.path = $$installPath

qml_1_0.files += \
    1.0/*.qml
qml_1_0.path = $$installPath/1.0

INSTALLS += cleanTarget resources qml_1_0
