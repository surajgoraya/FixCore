# -------------------------
# FixCore (2024-09-18)
# @surajgoraya
# 
# Kills the CoreAudio & bluetoothd service on macOS to get it try
# and reboot itself. It usually fixes issues I have
# with macOS seemingly forever *trying* to connect
# to my AirPods. 
#
# Use at your own risk.
# -------------------------

echo "FixCore"
echo "-------"
echo "Step One: Attempting to kill CoreAudio..."

sudo launchctl kickstart -kp system/com.apple.audio.coreaudiod
echo "\n✅ Killed CoreAudio, it should reboot automatically."

echo "\nStep Two: Kill Bluetooth Service (⛔️ WARNING: THIS WILL DISCONNECT ALL BLUETOOTH DEVICES)"

sudo launchctl kickstart -kp system/com.apple.bluetoothd 
echo "\n✅ Killed bluetoothd, it should reboot automatically."
echo "-------"