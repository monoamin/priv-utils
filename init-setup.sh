#!/bin/bash
wget https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh
echo "exit" >> install.sh
bash install.sh
curl -fsSL "https://raw.githubusercontent.com/monoamin/priv-utils/main/tweaks.aliases.sh" > "~/.oh-my-bash/custom/aliases/tweaks.aliases.sh"
sed -i 's/OSH_THEME="font"/OSH_THEME="demula"/g' ~/.bashrc
sed -i '/aliases=(/!b;n;s/general/general\n  tweaks/' ~/.bashrc
