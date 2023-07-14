# MINI RUNNER

```bash
mini_runner python main.py
```

```vim
:nnoremap <space><space> :w<cr>:silent! !touch /tmp/mini_runner<cr>
```

### TODO:
This PR is needed.
- [ ] add a root directory to run the code from it. [PR CONTRUBUROR NAME](https://github.com/)
- [ ] kill runner if it should reload. [PR CONTRUBUROR NAME](https://github.com/)
- [ ] improve this README.md [PR CONTRUBUROR NAME](https://github.com/)
- [ ]

### PRINCIPE
```bash

job(){
  eval "$COMMAND"
}

main(){
  while true;do
    sleep 1
    echo
    while [ ! -f "$tmpFILE" ];do
      sleep 1
    done
    job
    rm -f "$tmpFILE"
  done
}
```
