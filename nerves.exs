use Mix.Config

version =
  Path.join(__DIR__, "VERSION")
  |> File.read!
  |> String.strip

app = :nerves_toolchain_arm_unknown_linux_gnueabihf

config app, :nerves_env,
  type: :toolchain,
  version: version,
  compiler: :nerves_package,
  platform: Nerves.Toolchain.CTNG,
  target_tuple: :arm_unknown_linux_gnueabihf,
  artifact_url: [
    "https://github.com/strobe-audio/nerves_toolchain_arm_unknown_linux_gnueabihf/releases/download/v#{version}/#{app}-#{version}.#{Nerves.Env.host_platform}-#{Nerves.Env.host_arch}.tar.xz"
  ],
  checksum: [
    "defconfig",
    "VERSION"
  ]
