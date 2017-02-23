use Mix.Config

version =
  Path.join(__DIR__, "VERSION")
  |> File.read!
  |> String.strip

config :nerves_system_nanopi_neo, :nerves_env,
  type: :system,
  version: version,
  # mirrors: ["http://www.nine70labs.com/nerves/nerves_system_nanopi_neo_0_0_11.tar.gz"],
  compiler: :nerves_package,
  artifact_url: ["http://www.nine70labs.com/nerves/nerves_system_nanopi_neo_0_0_11.tar.gz"],
  platform: Nerves.System.BR,
  platform_config: [
    defconfig: "nerves_defconfig"
  ],
  checksum: [
    "busybox_defconfig",
    "rootfs-additions",
    "fwup.conf",
    "post-createfs.sh",
    "uboot",
    "uboot-script.cmd",
    "linux"
  ]
  # build_platform: Nerves.System.Platforms.BR,
  # build_config: [
  #   defconfig: "nerves_defconfig",
  #   package_files: [
  #     "busybox_defconfig",
  #     "rootfs-additions",
  #     "fwup.conf",
  #     "post-createfs.sh",
  #     "uboot",
  #     "uboot-script.cmd",
  #     "linux"
  #   ]
  # ]
