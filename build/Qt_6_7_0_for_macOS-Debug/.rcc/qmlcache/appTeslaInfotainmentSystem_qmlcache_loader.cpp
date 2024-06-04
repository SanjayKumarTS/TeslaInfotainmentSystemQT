#include <QtQml/qqmlprivate.h>
#include <QtCore/qdir.h>
#include <QtCore/qurl.h>
#include <QtCore/qhash.h>
#include <QtCore/qstring.h>

namespace QmlCacheGeneratedCode {
namespace _0x5f_TeslaInfotainmentSystem_Main_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::AOTCompiledFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}
namespace _0x5f_TeslaInfotainmentSystem_ui_MainControlBar_MainControlBar_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::AOTCompiledFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}
namespace _0x5f_TeslaInfotainmentSystem_ui_Sidebar_Sidebar_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::AOTCompiledFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}
namespace _0x5f_TeslaInfotainmentSystem_ui_Rightbar_Rightbar_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::AOTCompiledFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}
namespace _0x5f_TeslaInfotainmentSystem_ui_Musicbar_Musicbar_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::AOTCompiledFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}

}
namespace {
struct Registry {
    Registry();
    ~Registry();
    QHash<QString, const QQmlPrivate::CachedQmlUnit*> resourcePathToCachedUnit;
    static const QQmlPrivate::CachedQmlUnit *lookupCachedUnit(const QUrl &url);
};

Q_GLOBAL_STATIC(Registry, unitRegistry)


Registry::Registry() {
    resourcePathToCachedUnit.insert(QStringLiteral("/TeslaInfotainmentSystem/Main.qml"), &QmlCacheGeneratedCode::_0x5f_TeslaInfotainmentSystem_Main_qml::unit);
    resourcePathToCachedUnit.insert(QStringLiteral("/TeslaInfotainmentSystem/ui/MainControlBar/MainControlBar.qml"), &QmlCacheGeneratedCode::_0x5f_TeslaInfotainmentSystem_ui_MainControlBar_MainControlBar_qml::unit);
    resourcePathToCachedUnit.insert(QStringLiteral("/TeslaInfotainmentSystem/ui/Sidebar/Sidebar.qml"), &QmlCacheGeneratedCode::_0x5f_TeslaInfotainmentSystem_ui_Sidebar_Sidebar_qml::unit);
    resourcePathToCachedUnit.insert(QStringLiteral("/TeslaInfotainmentSystem/ui/Rightbar/Rightbar.qml"), &QmlCacheGeneratedCode::_0x5f_TeslaInfotainmentSystem_ui_Rightbar_Rightbar_qml::unit);
    resourcePathToCachedUnit.insert(QStringLiteral("/TeslaInfotainmentSystem/ui/Musicbar/Musicbar.qml"), &QmlCacheGeneratedCode::_0x5f_TeslaInfotainmentSystem_ui_Musicbar_Musicbar_qml::unit);
    QQmlPrivate::RegisterQmlUnitCacheHook registration;
    registration.structVersion = 0;
    registration.lookupCachedQmlUnit = &lookupCachedUnit;
    QQmlPrivate::qmlregister(QQmlPrivate::QmlUnitCacheHookRegistration, &registration);
}

Registry::~Registry() {
    QQmlPrivate::qmlunregister(QQmlPrivate::QmlUnitCacheHookRegistration, quintptr(&lookupCachedUnit));
}

const QQmlPrivate::CachedQmlUnit *Registry::lookupCachedUnit(const QUrl &url) {
    if (url.scheme() != QLatin1String("qrc"))
        return nullptr;
    QString resourcePath = QDir::cleanPath(url.path());
    if (resourcePath.isEmpty())
        return nullptr;
    if (!resourcePath.startsWith(QLatin1Char('/')))
        resourcePath.prepend(QLatin1Char('/'));
    return unitRegistry()->resourcePathToCachedUnit.value(resourcePath, nullptr);
}
}
int QT_MANGLE_NAMESPACE(qInitResources_qmlcache_appTeslaInfotainmentSystem)() {
    ::unitRegistry();
    return 1;
}
Q_CONSTRUCTOR_FUNCTION(QT_MANGLE_NAMESPACE(qInitResources_qmlcache_appTeslaInfotainmentSystem))
int QT_MANGLE_NAMESPACE(qCleanupResources_qmlcache_appTeslaInfotainmentSystem)() {
    return 1;
}
