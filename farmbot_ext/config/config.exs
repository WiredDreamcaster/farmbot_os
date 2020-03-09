use Mix.Config

config :logger, handle_otp_reports: true, handle_sasl_reports: true

config :farmbot_firmware, FarmbotFirmware, reset: FarmbotFirmware.NullReset

# TODO(Rick) We probably don't need to use this anymore now that Mox is a thing.
config :farmbot_celery_script, FarmbotCeleryScript.SysCalls,
  sys_calls: FarmbotCeleryScript.SysCalls.Stubs

if Mix.env() == :test do
  import_config "test.exs"
end

import_config "ecto.exs"
import_config "farmbot_core.exs"
import_config "lagger.exs"
