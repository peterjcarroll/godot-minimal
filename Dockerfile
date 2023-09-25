FROM ubuntu:22.04
RUN apt update && apt upgrade -y
RUN apt install -y emscripten python3 python3-pip scons git
RUN git clone https://github.com/godotengine/godot.git -b 3.5.3-stable
WORKDIR /godot
RUN scons platform=javascript --config=force target=release optimize=size tools=no use_lto=yes disable_advanced_gui=yes deprecated=no xml=no disable_3d=yes builtin_openssl=no module_bmp_enabled=no module_csg_enabled=no module_cvtt_enabled=no module_dds_enabled=no module_enet_enabled=no module_etc_enabled=no module_gridmap_enabled=no module_hdr_enabled=no module_jpg_enabled=no module_mbedtls_enabled=no module_mobile_vr_enabled=no module_mono_enabled=no module_ogg_enabled=no module_opus_enabled=no module_pvr_enabled=no module_recast_enabled=no module_regex_enabled=no module_squish_enabled=no module_stb_vorbis_enabled=no module_tga_enabled=no module_thekla_unwrap_enabled=no module_theora_enabled=no module_tinyexr_enabled=no module_upnp_enabled=no module_visual_script_enabled=no module_vorbis_enabled=no module_webm_enabled=no module_webp_enabled=no module_websocket_enabled=no module_bullet_enabled=no module_gdnative_enabled=no
RUN mv bin/godot.javascript.opt.zip bin/webassembly_release.zip
