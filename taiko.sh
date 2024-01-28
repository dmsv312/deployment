# Всё сделано на Germany1
curl -L https://foundry.paradigm.xyz | bash
source /root/.bashrc
foundryup
# следующая команда для бэкапа старых деплоев (видимо делали кто-то до этого), если не отрабатывает, не страшно, значит нет этой папки на сервере
mv hello_foundry/ hello_foundry_backup
# без этого не копируется директория, типа надо инициализирировать git с каким-то мэйлом, думаю можно указать мэйлы из вкладки mult в таблице loading
git config --global user.email thepoks03@gmail.com
# вместо YOUR_PRIVATE_KEY подставляем приватный ключ
forge create src/Counter.sol:Counter --rpc-url https://rpc.katla.taiko.xyz --private-key YOUR_PRIVATE_KEY
# сохраняем куда-нибудь то что выдаёт после выполнения команды (3 строчки)
# Deployer: 0xFec9Fd273f74FD32BBb99b37b362781D32a17B49
# Deployed to: 0x6bE9DA104D674DBA457e55ce2b54C4c663042c9F
# Transaction hash: 0x37a29d94423a2bc78895c3bdcce099027b0bb467eec89d23336903aae8664178
# Хэши не показываются в текущем эксплолере - https://explorer.jolnir.taiko.xyz/address/0x6bE9DA104D674DBA457e55ce2b54C4c663042c9F
# Верифицируем контракт, сюда подставляем адрес - из предыдущего вывода Deployed to
forge verify-contract 0x6bE9DA104D674DBA457e55ce2b54C4c663042c9F src/Counter.sol:Counter --verifier-url https://blockscoutapi.katla.taiko.xyz/api\? --verifier blockscout
