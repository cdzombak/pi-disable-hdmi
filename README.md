# pi-disable-hdmi

This is a simple Debian package which, installed on a Raspberry Pi, disables its HDMI output. The change will persist after a reboot.

## Note

Installation will switch your Pi to the "Original non-DL desktop driver." This is required to use the underlying `/opt/vc/bin/tvservice` tool to disable HDMI.

After uninstallation, the driver is not switched back automatically; to switch to it, run `raspi-config` and navigate to "Advanced Options > GL Driver."

## Installation

### Debian via Apt repository

Install my Debian repository if you haven't already:

```shell
sudo apt-get install ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://dist.cdzombak.net/deb.key | sudo gpg --dearmor -o /etc/apt/keyrings/dist-cdzombak-net.gpg
sudo chmod 0644 /etc/apt/keyrings/dist-cdzombak-net.gpg
echo -e "deb [signed-by=/etc/apt/keyrings/dist-cdzombak-net.gpg] https://dist.cdzombak.net/deb/oss any oss\n" | sudo tee -a /etc/apt/sources.list.d/dist-cdzombak-net.list > /dev/null
sudo apt update
```

Then install `pi-disable-hdmi`:

```shell
sudo apt install pi-disable-hdmi
```

### Manual installation from build artifacts

Pre-built `.deb` packages are downloadable from each [GitHub Release](https://github.com/cdzombak/pi-disable-hdmi/releases).

## License

Unlicense; see [LICENSE](https://github.com/cdzombak/pi-disable-hdmi/blob/main/UNLICENSE) in this repo.

## Author

[Chris Dzombak](https://www.dzombak.com) (GitHub [@cdzombak](https://github.com/cdzombak))
