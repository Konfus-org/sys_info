project "sys_info"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "Off"

    if OutputIntermediateDir == nil or OutputTargetDir == nil then
        targetdir ("Build/bin/%{prj.name}/")
        objdir    ("Build/obj/%{prj.name}/")

    else
        targetdir ("../../../" .. OutputTargetDir .. "")
        objdir    ("../../../" .. OutputIntermediateDir .. "")
    end

    files
    {
        "./**.h",
        "./**.cpp",
        "./**.h",
        "./**.cpp"
    }

    includedirs
    {
        "./core/include",
    }

    filter "configurations:Debug"
        runtime "Debug"
        linkoptions { "/LTCG:incremental" }  -- Enable Link Time Code Generation and Incremental linking
        symbols "on"

    filter "configurations:Optimized"
        runtime "Release"
        linkoptions { "/LTCG:incremental" }  -- Enable Link Time Code Generation and Incremental linking
        optimize "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"
        linkoptions { "/LTCG:incremental" }  -- Enable Link Time Code Generation and Incremental linking
        symbols "off"