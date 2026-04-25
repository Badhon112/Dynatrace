## Dynatrace Account

- Email : kexivop548@ryzid.com

- Now in the server we need to install one agent

## One Agent 3 mode

- **Full Stack Mode:**
  - _Infra_: CPU, Memory, Disk, Network, IC Card and along with the Process .
  - _APM (Application Performance Management)_ : APM Service , log.
- **Infrastructure Mode**:
  - It will just install Infra and the log.
  - You can just health Check
- **Discovery mode**:

- One Agent CTL
  - cd /var/lib/dynatrace/oneagent/
  - ./oneagentctl --set-host-group=springpetclinic
  - To stop the oneagent service we need

```bash
    $ systemctl stop oneagent.serviceF
```

```

After install the dynatrace i need to go hosts classic
services

```

## Agent Installation Explained

First We need to login to the https://env.apps.dynatrace.com/
then we go to app and create access token

```

```

No go to hub then oneagnet then flow the process.
