# Всё сделано на Germany1
curl -L https://foundry.paradigm.xyz | bash
source /root/.bashrc
foundryup
# следующая команда для бэкапа старых деплоев (видимо делали кто-то до этого), если не отрабатывает, не страшно, значит нет этой папки на сервере
mv hello_foundry/ hello_foundry_backup
# без этого не копируется директория, типа надо инициализирировать git с каким-то мэйлом, думаю можно указать мэйлы из вкладки mult в таблице loading
git config --global user.email thepoks03@gmail.com
