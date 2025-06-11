project "sys_info"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "Off"

    files
    {
        "./**.h",
        "./**.cpp",
        "./**.h",
        "./**.cpp",
        "./**.md"
    }
    includedirs
    {
        "./core/include",
    }