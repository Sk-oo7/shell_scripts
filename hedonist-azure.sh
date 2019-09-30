LSB_RELEASE_D="$(lsb_release -d | cut -d ':' -f 2 | sed -e 's/^[[:space:]]*//')"
LSB_RELEASE_R="$(lsb_release -r | cut -d ':' -f 2 | sed -e 's/^[[:space:]]*//')"
LSB_RELEASE_C="$(lsb_release -c | cut -d ':' -f 2 | sed -e 's/^[[:space:]]*//')"

echo $whoami "Welcome to HEDONIST, running on ""${LSB_RELEASE_D}" "${LSB_RELEASE_R}", "${LSB_RELEASE_C}".

echo -e ""

echo "OK Microsoft, I will always prefer a clean and up-to-date system"

# cleans apt cache and removes useless packages
sudo apt clean && sudo apt autoremove --purge -y

# update apt repos and do a system update
sudo apt update && sudo apt upgrade -y

# Let us add some basic packages from apt

sudo apt install build-essential bc -y

sudo apt get install chrome