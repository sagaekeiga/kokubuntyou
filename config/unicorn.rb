worker_processes 2
working_directory "/home/anime/kokubuntyou/current" #appと同じ階層を指定

timeout 3600


listen "/var/run/unicorn/kokubuntyou.sock"
pid "/var/run/unicorn/kokubuntyou.pid"


stderr_path "/home/anime/kokubuntyou/current/log/unicorn.log"
stdout_path "/home/anime/kokubuntyou/current/log/unicorn.log"


preload_app true