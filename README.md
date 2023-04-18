## pass-choose

This repo contains a simple script `choose.sh` for using [Password Store](https://www.passwordstore.org/)'s `pass` CLI with [choose](https://github.com/chipsenkbeil/choose). Basically, a MacOS alternative to [rofi-pass](https://github.com/carnager/rofi-pass).

## Usage:

Assuming your `$PASSWORD_STORE_DIR` is already initialized and configured, you can invoke the script like so to copy passwords:

```
./choose.sh
```

The script assumes that the first line in all of your entries is the password and will copy your selected entry to the clipboard with `pbcopy`.

### TOTP:

If you have the [pass-otp](https://github.com/tadfisher/pass-otp) plugin installed, you can use the `totp` argument to copy the OTP of your selected entry to your clipboard:

```
./choose.sh totp
``` 
